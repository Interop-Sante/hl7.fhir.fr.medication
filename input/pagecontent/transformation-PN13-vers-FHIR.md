# Transformation PN13 vers FHIR

La transformation de flux PN13 en ressource FHIR se fait à partir de ConceptMap indiquant la correspondance entre les éléments XML de PN13 et les attributs des ressources FHIR. Elle dépend de certains éléments du flux PN13 (ex. nombre d'élément Composant_prescrit, présence d'élément Elément_lié pour la prescription) et dans le cas du sens PN13 vers FHIR de la préexistance des instances de ressources pour les ressources référencées (ex. patient, practitioner, encounter).

## La conciliation

Prévu pour une version ultérieure de ce guide

## La prescritpion

La traduction d'un flux de prescription PN13 en ressource FHIR résulte en plusieurs ressources FHIR qui peuvent être constituées à l'aide des ressources ConceptMapt fournies dans ce guide.
La manière dont les ressources FHIR résultantes sont mises à disposition dépends du serveur FHIR (ex. operation spécifique pour la recherche de prescription par identifiant, mise en oeuvre de '_include' et de '_revInclude'). Pour des raisons de lisibilité, les exemples présentés en FHIR sont considérés comme le résultat d'une recherche de prescription par identifiant (i.e. élément groupIndentifier cf. section suivante) sous forme de Bundle de type searchset

### La notion de prescription multiligne

Il n'existe pas de ressource FHIR pour représenter l'objet prescription. Beaucoup d'implémentations internationales ne traitent que de prescriptions monolignes pour lesquelles la notion de prescription et la notion de ligne de prescription sont confondues dans la ressource FHIR *MedicationRequest*. Les groupes de travail FHIR au niveau international, interrogés sur la question des prescriptions multilignes, ont fournis des recommandations d'utiliser l'élément 'groupIdentifier' comme lien entre les différentes lignes de prescritpion d'une prescription multiligne. Une évolution est en cours pour permettre l'interrogation d'un serveur FHIR de manière indiscriminée sur les éléments 'identifier' et 'groupIdentifier' afin d'obtenir tous les composants d'une prescription que celle-ci soit monoligne ou multiligne.
Dans le cas de prescription comportant des liens entre les lignes (ex. exclusivité entre une ligne de prescription et une autre) une ressource *RequestGroup* en FHIR R4 ou *RequestOrchestration* en FHIR R5 peut être utilisée pour représenter ces liens. Elle porte également le même 'groupIdentifier' que les ressources *MedicationRequest* qui représentent les lignes de prescription.

### Ressources FHIR créées par la transformation d'un flux PN13 de prescription en FHIR

- 1 ressource *Bundle* d'un type adapté à l'usage parmis message, document et searchset (pour les exemples, le type searchset est utilisé)
- 1 à n ressource(s) *MedicationRequest* suivant le profil [FrInpatientMedicationRequest](StructureDefinition-FrInpatientMedicationRequest.html). Leur alimentation à partir des données PN13 est documentée dans [PN13-FHIR-prescmed-medicationrequest-conceptmap](ConceptMap-PN13-FHIR-prescmed-medicationrequest-conceptmap.html) et dans [PN13-FHIR-prescmed-dosageinstruction.conceptmap](PN13-FHIR-prescmed-dosageinstruction.conceptmap.html). Chaque ressource *MedicationRequest* référence:
  - 1 ressource *Patient* cf. section **Existence préalable des ressources référencées** pour la ressource *ConceptMap* à utiliser (si la ressource *Patient* référencée n'existe pas déjà)
  - 0 à 1 ressource *Practitioner* cf. section **Existence préalable des ressources référencées** pour la ressource *ConceptMap* à utiliser (si la ressource *Practitioner* référencée n'existe pas déjà)
  - 0 ressource *Encounter* cf. section **Existence préalable des ressources référencées** pour la ressource *ConceptMap* à utiliser (si la ressource *Encounter* référencée n'existe pas déjà)
  - 1 à n ressource(s) *Medication* cf. section **Type de prescription**
- 0 à 1 ressource *RequestGroup* (ou *RequestOrchestration* en FHIR R5). Son alimentation à partir des données PN13 sera documenté dans un mapping à venir dans une version ultérieur de cet IG.

### Existence préalable des ressources référencées

Les "ressources de contexte" qui sont à référencer par la prescription FHIR (i.e. Patient, Practitioner et éventuellement Encounter) peuvent déjà exister dans le serveur FHIR:

- Si des "ressources de contexte" existent déjà, il convient d'éviter de créer des doublons et d'utiliser les id FHIR de ces ressources existantes afin de créer les références. A cette occasion, un point de vigilance particulier est bien sûr à apporter à l'identification de la ressource Patient en particulier si l'INS n'est pas qualifiée.
- Si une "ressource de contexte" n'existe pas, il convient:
  - si seul l'identifiant est fourni dans le flux PN13, d'utiliser une référence via 'identifier'
    - pour un patient, le mapping est documenté dans [PN13-FHIR-Prescmed-patient-id-seul-conceptmap](PN13-FHIR-Prescmed-patient-id-seul-conceptmap.html)
    - pour un professionnel, le mapping est documenté dans [PN13-FHIR-prescmed-practitioner-id-seul-conceptmap](PN13-FHIR-prescmed-practitioner-id-seul-conceptmap.html)
    - pour un séjour, le mapping est documenté dans [PN13-FHIR-prescmed-encounter-concepmap](PN13-FHIR-prescmed-encounter-concepmap.html). En PN13 les données fournies pour les séjours sont limitées à l'identifiant et éventuellement le system de cet identifiant, ils font donc toujours l'objet d'une référence.
  - si des éléments complémentaires sont fournis dans le flux PN13, de créer la ressource correspondante sur le serveur en utilisant les ressources *ConceptMap* suivantes:
    - Pour les ressources *Patient*: cf. section *cas particulier du niveau de qualitication des identités patients*
    - Pour les ressources *Practitioner*: [PN13-FHIR-prescmed-practitioner-identite-conceptmap](ConceptMap-PN13-FHIR-prescmed-practitioner-identite-conceptmap.html)
  
#### Cas particulier du niveau de qualification des identités patients

La ConceptMap à utiliser dépend de la qualification de l'Identité Nationale de Santé du patient:

- Si l'INS est qualifiée (i.e. présence du matricule INS et 'Statut_idpat' à 'VALI' dans le fichier PN13): [PN13-FHIR-prescmed-patient-avec-INS-conceptmap](ConceptMap-PN13-FHIR-prescmed-patient-avec-INS-conceptmap.html)

- Dans le cas contraire: [PN13-FHIR-prescmed-patient-sans-INS-conceptmap](ConceptMap-PN13-FHIR-prescmed-patient-sans-INS-conceptmap.html)

### Type de prescription

Le profil de la ressource Medication dans la prescription dépend du type de prescritpion (ex. prescription en spécialité, prescription en DC...) ***A mettre à jour une fois l'arbitrage sur les profils fait***

### Processus de traduction

Pour chaque élément 'Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic' créer une ressource *MedicationRequest* en utilisant le mapping [PN13-FHIR-prescmed-medicationrequest-conceptmap](PN13-FHIR-prescmed-medicationrequest-conceptmap.html) et en utilisant les références ou création de ressources pour les ressources de contexte (cf. sections précédentes).

Pour chaque élément 'Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie' faire une instance de 'MedicationRequest.dosageInstruction' en utilisant le mapping [PN13-FHIR-prescmed-dosageinstruction-conceptmap](PN13-FHIR-prescmed-dosageinstruction-conceptmap.html)

Pour les éléments 'Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit':

- s'il n'y a qu'un élément 'Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit' dans 'Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic' faire une instance de *Medication* suiant le profil ***A mettre à jour quand les profils seront finalisés***
- s'il y a plusieurs éléments 'Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit' dans 'Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic' faire une instance de *Medication* suiant le profil ***A mettre à jour quand les profils seront finalisés***

Pour chaque élément 'Message/M_Prescription_médicaments/Prescription/Elément_prescr_médic/Elément_lié' faire une instance de 'RequestGroup.action' d'une ressource *RequestGroup* unique liant les deux ressources *MedicationRequest* liées ***A mettre à jour pour les liens entre lignes de prescription et la création d'une ressource RequestGroup***

## La dispensation

Prévu pour une version ultérieure de ce guide.
