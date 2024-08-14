# Transformation PN13 en FHIR

La transformation de fichier PN13 en ressource FHIR se fait à partir de ConceptMap indiquant la correspondance entre les éléments XML de PN13 et les attributs des ressources FHIR. Elle dépend de certains éléments de la présecription (ex. prescription en spécialité ou prescription en DC) et dans le cas du sens PN13 vers FHIR de la préexistance des instances de ressources pour les ressources référencées (ex. patient, practitioner, encounter).

## La conciliation

Prévu pour une version ultérieure de ce guide

## La prescritpion

La traduction d'une prescription PN13 en FHIR résulte en plusieurs ressources FHIR qui peuvent être constituées à l'aide des ressources ConceptMapt fournies dans ce guide  ***A mettre à jour une fois les ConceptMap correspondantes réalisées***:

- 1 resourcce XXX ***A préciser après décision de comment on représente la prescription, soit ce sont des ressources contained soit ce sont des ressources dans un Bundle***
- 1 à n ressource(s) MedicationRequest suivant le profil [FrInpatientMedicationRequest](StructureDefinition-FrInpatientMedicationRequest.html). Leur alimentation à partir des données PN13 est documenté dans FR-PN13-FHIR-prescription-medicament-medicationrequest-conceptmap. Chaque ressource MedicationRequest référence:
-- 1 ressource Patient cf. section **Existence préalable des ressources référecées** pour la ressource ConceptMap à éventuellement utiliser (si la ressource Patient référencée n'existe pas déjà)
-- 1 ressource Encounter cf. section **Existence préalable des ressources référecées** pour la ressource ConceptMap à utiliser (si la ressource Encounter référencée n'existe pas déjà)
-- 1 ressource Practitioner cf. section **Existence préalable des ressources référecées** pour la ressource ConceptMap à utiliser (si la ressource Practitioner référencée n'existe pas déjà)
-- 1 à n ressource(s) Medication cf. section **Type de prescription**

### Existence préalable des ressources référencées

Les "ressources de contexte" qui sont à référencer par la prescription FHIR (i.e. Patient, Practitioner et Encounter) peuvent déjà exister dans le serveur FHIR:

- Si une "ressource de contexte", il convient d'éviter de créer des doublons et récupérer les id FHIR de ces ressources pour créer les références. A cette occasion, un point de vigilance particulier est bien sûr à apporter à l'identification de la ressource Patient.
- Si une "ressource de contexte" n'existe pas, il convient soit de la créer sur le serveur, soit de la créer pour l'intégrer à la préscription ***A préciser après décision de comment on représente la prescription, soit ce sont des ressources contained soit ce sont des ressources dans un Bundle***. Les ConceptMap à utiliser pour cette création sont:
-- Pour les ressources Patient: cf. section *cas particulier du niveau de qualitication des identités patients*
-- Pour les ressources Practitioner: FR-PN13-FHIR-prescription-medicament-practitioner-conceptmap ***Mettre le lien vers la ConceptMap***
-- Pour les ressources Encounter: FR-PN13-FHIR-prescription-medicament-encounter-conceptmap ***Mettre le lien vers la ConceptMap***

#### Cas particulier du niveau de qualification des identités patients

La ConceptMap à utiliser dépend de la qualification de l'Identité Nationale de Santé du patient:

- Si l'INS est qualifiée (i.e. présence du matricule INS et 'Statut_idpat' à 'VALI' dans le fichier PN13): [FR-PN13-FHIR-prescription-medicament-patient-avec-INS-conceptmap](StructureDefinition-Fr-PN13-FHIR-prescription-medicament-patient-avec-INS-conceptmap.html)

- Dans le cas contraire: [FR-PN13-FHIR-prescription-medicament-patient-sans-INS-conceptmap](StructureDefinition-Fr-PN13-FHIR-prescription-medicament-patient-sans-INS-conceptmap.html)

### Type de prescription

Le profil de la ressource Medication dans la prescription dépend du type de prescritpion (ex. prescription en spécialité, prescription en DC...) ***A mettre à jour une fois les ConceptMap correspondantes réalisées***

## La dispensation

Prévu pour une version ultérieure de ce guide
