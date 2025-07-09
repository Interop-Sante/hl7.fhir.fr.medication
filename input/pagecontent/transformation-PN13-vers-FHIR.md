# Transformation PN13 vers FHIR

La transformation de messages PN13 en ressources FHIR se fait à partir de *ConceptMap* indiquant la correspondance entre les éléments XML des messages PN13 et les attributs des ressources FHIR. Elle dépend de certains éléments du message PN13 (ex. nombre d'élément `Composant_prescrit`, présence d'élément `Elément_lié` pour la prescription) et dans le cas du sens PN13 vers FHIR de la préexistance des instances de ressources pour les ressources référencées (ex. *Patient*, *Practitioner*, *Encounter*).

## La conciliation

Prévu pour une version ultérieure de ce guide.

## La prescription

La traduction d'un message de prescription PN13 en ressources FHIR résulte en plusieurs ressources FHIR qui peuvent être constituées à l'aide des ressources *ConceptMap* fournies dans ce guide.
La manière dont les ressources FHIR résultantes sont mises à disposition dépends du serveur FHIR (ex. operation spécifique pour la recherche de prescription par identifiant, mise en oeuvre de `_include` et de `_revInclude`). Pour des raisons de lisibilité, les exemples présentés en FHIR sont considérés comme le résultat d'une recherche de prescription par identifiant (i.e. élément `groupIndentifier` cf. section suivante sur la notion de prescription multiligne) sous forme de *Bundle* de type `searchset`.

### La notion de prescription multiligne

Il n'existe pas de ressource FHIR pour représenter l'objet prescription. Beaucoup d'implémentations internationales ne traitent que de prescriptions monolignes pour lesquelles la notion de prescription et la notion de ligne de prescription sont confondues dans la ressource FHIR *MedicationRequest*. Les groupes de travail FHIR au niveau international, interrogés sur la question des prescriptions multilignes, ont fournis des recommandations d'utiliser l'élément `groupIdentifier` comme lien entre les différentes lignes de prescritpion d'une prescription multiligne. Une évolution est en cours pour permettre l'interrogation d'un serveur FHIR de manière indiscriminée sur les éléments `identifier` et `groupIdentifier` afin d'obtenir tous les composants d'une prescription que celle-ci soit monoligne ou multiligne.
Dans le cas de prescription comportant des liens entre les lignes (ex. exclusivité entre une ligne de prescription et une autre) une ressource *RequestGroup* en FHIR R4 ou *RequestOrchestration* en FHIR R5 peut être utilisée pour représenter ces liens. Elle porte également le même 'groupIdentifier' que les ressources *MedicationRequest* qui représentent les lignes de prescription.

### Ressources FHIR créées par la transformation d'un flux PN13 de prescription en FHIR

- Optionnellement 1 ressource *Bundle* d'un type adapté à l'usage parmi message, document et searchset (pour les exemples, le type searchset est utilisé). Selon les implémentations, cette ressource n'est pas nécessaire. Elle est utilisée pour les exemples à des fins de simplification de mise à disposition de toutes les ressources concernées par une prescription dans le même fichier d'exemple.
- 1 à n ressource(s) *MedicationRequest* suivant le profil [FrInpatientMedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.html).  Chaque ressource *MedicationRequest* référence:
  - 1 ressource *Patient* cf. section **Existence préalable des ressources référencées** pour la ressource *ConceptMap* à utiliser (si la ressource *Patient* référencée n'existe pas déjà).
  - 1 ressource *Encounter* cf. section **Existence préalable des ressources référencées** pour la ressource *ConceptMap* à utiliser (si la ressource *Encounter* référencée n'existe pas déjà).
  - 0 à n ressource(s) *Observation* cf. section **Existence préalable des ressources référencées** pour la ressource *ConceptMap* à utiliser (si la ressource *Observation* référencée n'existe pas déjà).
  - 1 ressource *Practitioner* cf. section **Existence préalable des ressources référencées** pour la ressource *ConceptMap* à utiliser (si la ressource *Practitioner* référencée n'existe pas déjà).
  - 0 à n ressource(s) *Medication* cf. section **Medication**.
- 0 à 1 ressource *RequestGroup* (ou *RequestOrchestration* en FHIR R5). Son alimentation à partir des données PN13 sera documentée dans un mapping à venir dans une version ultérieure de cet IG.

### Existence préalable des ressources référencées

Les "ressources de contexte" qui sont à référencer par la prescription FHIR (i.e. *Patient*, *Practitioner*, *Encounter* et éventuellement *Observation*) peuvent déjà exister dans le serveur FHIR:

- Si des "ressources de contexte" existent déjà, il convient d'éviter de créer des doublons et d'utiliser les id FHIR de ces ressources existantes afin de créer les références. A cette occasion, un point de vigilance particulier est bien sûr à apporter à l'identification de la ressource Patient en particulier si l'INS n'est pas qualifiée.
- Si une "ressource de contexte" n'existe pas, il convient:
  - Si seul l'identifiant est fourni dans le flux PN13, d'utiliser une référence via `identifier`.
  - Si des éléments complémentaires sont fournis dans le flux PN13, de créer la ressource correspondante sur le serveur.

### Processus de traduction

#### Patient

Dans le message PN13, à partir des sous-éléments de `Message/M_Prescription_médicaments/Patient` identifier si une ressource *Patient* existe déjà:

- S'il existe une ressource *Patient* correspondante, récupérer `Patient.id` pour alimenter `MedicationRequest.subject.reference`
- S'il n'exite pas de ressource *Patient* correspondante:
  - Si seul l'élément `Message/M_Prescription_médicaments/Patient/Ipp` est fourni, l'utiliser pour alimenter `MedicationRequest.subject.identifier.value` cf. ressource *ConceptMap* [PN13-FHIR-prescmed-patient-id-seul-conceptmap].
  - Si le patient a une INS qualifiée (i.e. présence de l'élément `Message/M_Prescription_médicaments/Patient/INS` renseigné et élément `Message/M_Prescription_médicaments/Patient/Statut_idpat` valorisé à `VALI`), créer la ressource *Patient* suivant le profil [FRCorePatientINS]($FrCorePatientINS) (éventuellement directement sur le serveur ou dans la ressource *Bundle* représentant la prescription comme c'est le cas pour les exemples fournis) en utilisant la ressource *ConceptMap* [PN13-FHIR-prescmed-patient-avec-INS-conceptmap].
  - Si le patient n'a pas d'INS qualifiée, créer la ressource *Patient* suivant le profil [FRCorePatient]($FrCorePatient) (éventuellement directement sur le serveur ou dans la ressource *Bundle* représentant la prescription comme c'est le cas pour les exemples fournis) en utilisant la ressource *ConceptMap* [PN13-FHIR-prescmed-patient-sans-INS-conceptmap].

#### Encounter

Dans le message PN13, à partir des sous-éléments de `Message/M_Prescription_médicaments/Séjour` identifier si une ressource *Encounter* existe déjà:

- S'il existe une ressource *Encounter* correspondante, récupérer `Encounter.id` pour alimenter `MedicationRequest.encounter.reference`
- S'il n'exite pas de ressource *Encounter* correspondante, comme seul l'identifiant du séjour est fourni dans le message PN13, utiliser `Message/M_Prescription_médicaments/Séjour/Id_séjour` pour alimenter `MedicationRequest.encounter.identifier.value` et éventuellement `Message/M_Prescription_médicaments/Séjour/DI_séjour` s'il est fourni pour alimenter `MedicationRequest.encounter.identifier.system` cf. ressource *ConceptMap* [PN13-FHIR-prescmed-patient-id-seul-conceptmap].

#### Observation

Pour chaque élément `Message/M_Prescription_médicaments/Prescription/Rens_compl` avec un sous élément `Code_rens_compl_1`, `Code_rens_compl_2`, `Code_rens_compl_3` ou `Code_rens_compl_5` dans le message PN13 créer une ressource *Observation* correspondante en utilisant la ressource *ConceptMap* [PN13-FHIR-observation-conceptmap].

**Note 1**: Des ressources *Observation* correspondantes pourraient déjà exister, mais étant donné le peu d'éléments sur lesquels faire la comparaison, il semble plus simple de créer les ressources *Observation* à chaque fois quitte à avoir quelques doublons.

**Note 2**: Les ressources *Observation* créées pour des sous-éléments `Code_rens_compl_1` et `Code_rens_compl_2` suivent des profils français nationaux identifiés dans la ressource ConceptMap.

#### Practitioner

Dans le message PN13, à partir des sous-éléments de `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Id_prescripteur` ou `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur` identifier si une ressource *Practioner* existe déjà:

- S'il existe une ressource *Practictioner* correspondante, récupérer `Ppractitioner.id` pour alimenter `MedicationRequest.requester.reference`.
- S'il n'exite pas de ressource *Practitioner* correspondante:
  - Si l'élément `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Id_prescripteur` est fourni, l'utiliser pour alimenter `MedicationRequest.requester.identifier.value` cf. ressource *ConceptMap* [PN13-FHIR-prescmed-practitioner-id-seul-conceptmap].
  - Si l'élément `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Identifiant` est fourni seul ou avec uniquement `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Domaine_identification`, utiliser `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Identifiant` pour alimenter `MedicationRequest.requester.identifier.value`et éventuellement `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Domaine_identification` pour alimenter `MedicationRequest.requester.identifier.system` en le transformant si nécessaire pour être au format uri accepté par FHIR.
  - Si d'autres sous éléments de `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur`sont renseignés en plus de `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Identifiant`et éventuellement `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur/Domaine_identification`, créer la ressource *Practitioner* suivant le profil [FrCorePractitioner]($FrCorePractitioner) en utilisant la ressource *ConceptMap* [PN13-FHIR-prescmed-practitioner-identite-conceptmap].
  
#### Medication

- Pour chaque élément `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit` dans le message PN13:
  - si le composant prescrit (prescrit en spécialité ou en DC) ne porte pas d'information complémentaires aux informations présentes dans le Référentiel Unique d'Interopérabilité du Médicament, il est possible d'utiliser le code du médicament soit dans `MedicationRequest.medicationCodeableConcept`(dans le cas d'un médicament simple) soit dans `Medication.ingredient.itemCodeableConcept` (dans le cas d'un médicament composé cf. item 2) ou de créer une ressource *Medication* pour ce médicament (cf. item suivant sur la création de la ressource *Medication*);
  - si le composant prescrit porte des information complémentaires aux informations présentes dans le Référentiel Unique d'Interopérabilité du Médicament (ex. la forme pour un médicament prescrit en DC, l'information isVehicule...) une ressource *Medication* **DOIT** être créée en suivant le profil [fr-medication-noncompound] en utilisant la ressource *ConceptMap* [PN13-FHIR-prescmed-medicationnoncompound-conceptmap]. 
- Si le message PN13 comporte plusieurs éléments `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit` créer une ressource *Medication* suivant le profil [fr-medication-compound] en utilisant la ressource *ConceptMap* [PN13-FHIR-prescmed-medicationcomp-conceptmap] :
  - qui référence chaque ressource créée à partir des éléments `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit` via `Medication.ingredient.itemReference.reference`;
  - qui indique le code du médicament via `Medication.ingredient.itemCodeableConcept`. 

#### MedicationRequest

Créer une ressource *MedicationRequest* suivant le profil [FrInpatientMedicationRequest](StructureDefinition-fr-inpatient-medicationrequest) en utilisant la ressource *ConceptMap* [PN13-FHIR-prescmed-medicationrequest-conceptmap] et en référençant les ressources précédemment créées ou identifiées lors des étapes précédentes.

Pour chaque élément `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie` ne comportant pas d'élément `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Type_événement_début` valorisé à `4`, créer une instance de `MedicationRequest.dosageInstruction` en utilisant la ressource *ConceptMap* [PN13-FHIR-prescmed-dosageinstruction-conceptmap].

Pour chaque élément `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie` comportant un élément `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Type_événement_début` valorisé à `4` ET un autre élément (utilisation de `Type_événement_début` et de `Type_événement2_début`), créer une instance de `MedicationRequest.dosageInstruction` en utilisant la ressource *ConceptMap* [PN13-FHIR-prescmed-dosageinstruction-conceptmap].

Pour chaque élément `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie` comportant uniquement un (ou deux) élément(s) `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Type_événement_début` valorisé(s) à `4` utiliser la ressource *ConceptMap* [PN13-FHIR-prescmed-dosageinstruction-conceptmap] pour mettre à jour les instances de `MedicationRequest.dosageInstruction` précédemment créées auxquelles il s'applique.
*Point d'attention:* Les `Type_événement_début`valorisés à `4`avec `Evénement_début`de type `1`ne sont pas forcément applicable à tous les autres `Elément_posologie`. En particulier, dans le cadre de la PCA (Patient Controled Analgesiae), ils ne s'appliquent qu'au bolus. 

#### Unité dose en PN13
En PN13, il est possible d'exprimer le concept de dose au niveau de `Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite` et de faire référence à cette dose dans `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie`. Cette possibilité n'existe pas en FHIR.
Si l'unité référencée en PN13 dans `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Quantité/Unité` est `dose` le processus de transformation suivant est à appliquer par ordre de priorité:
1. Si le médicament est un médicament simple:
   1. `value` dans la quantité ou dans le numérateur de `MedicationRequest.dosageInstruction.doseAndRate` est à calculer en multipliant `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Quantité/Nombre` ou `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Débit/Nombre` par `Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite/Nombre` 
   1. `code`, `system` et/ou `unité` dans la quantité ou dans le numérateur de `MedicationRequest.dosageInstruction.doseAndRate` est à déterminer à partir de `Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite/Unité` selon la logique décrite pour `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Quantité/Unité` dans la ressource *ConceptMap* [PN13-FHIR-prescmed-dosageinstruction-conceptmap]
1. Si le médicament est un médicament composé:
   1. Si l'élément `Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Référent_poso` est présent et valorisé à `1` sur un des composants préscrits:
        - `value` dans la quantité ou dans le numérateur de `MedicationRequest.dosageInstruction.doseAndRate` est à calculer en multipliant `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Quantité/Nombre` ou `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Débit/Nombre` par `Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite/Nombre` du composant prescrit avec `1` dans `Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Référent_poso`
        - `code`, `system` et/ou `unité` dans la quantité ou dans le numérateur de `MedicationRequest.dosageInstruction.doseAndRate` est à déterminer à partir de `Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite/Unité` du composant prescrit avec `1` dans `Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Référent_poso` selon la logique décrite pour `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Quantité/Unité` dans la ressource *ConceptMap* [PN13-FHIR-prescmed-dosageinstruction-conceptmap]
   1. Si l'élément `Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Véhicule` est présent et valorisé à `1` sur un des composants préscrits:
        - `value` dans la quantité ou dans le numérateur de `MedicationRequest.dosageInstruction.doseAndRate` est à calculer en multipliant `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Quantité/Nombre` ou `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Débit/Nombre` par `Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite/Nombre` du composant prescrit avec `1` dans `Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Véhicule`
        - `code`, `system` et/ou `unité` dans la quantité ou dans le numérateur de `MedicationRequest.dosageInstruction.doseAndRate` est à déterminer à partir de `Messages/M_prescription_médicaments/Prescription/Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite/Unité` du composant prescrit avec `1` dans `Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Véhicule` selon la logique décrite pour `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Quantité/Unité` dans la ressource *ConceptMap* [PN13-FHIR-prescmed-dosageinstruction-conceptmap]
   1. Si ni l'élément `Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Référent_poso`, ni l'élément `Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Véhicule`n'est présent ou qu'aucun des deux n'est valorisé à `1` sur un des composants préscrits:
        - `value` dans la quantité ou dans le numérateur de `MedicationRequest.dosageInstruction.doseAndRate` est égal à `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Quantité/Nombre` ou `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie/Débit/Nombre`
        - `code`, `system` et/ou `unité` dans la quantité ou dans le numérateur de `MedicationRequest.dosageInstruction.doseAndRate` est à déterminer en fonction du médicament composé. Par exemple, pour les perfusions, le code EDQM `15005000`pour poche.

#### RequestGroup

Pour chaque élément `Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_lié` dans le message PN13 faire une instance de `RequestGroup.action` d'une ressource *RequestGroup* unique liant les deux ressources *MedicationRequest* liées

La définition de la ressource *ConceptMap* correspondante est prévue pour une version ultérieure du guide.

## La dispensation

Prévu pour une version ultérieure de ce guide.

{% include markdown-link-references.md %}
