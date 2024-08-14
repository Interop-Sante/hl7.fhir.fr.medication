# Transformation PN13 en FHIR

La transformation de fichier PN13 en ressource FHIR se fait à partir de ConceptMap indiquant la correspondance entre les éléments XML de PN13 et les attributs des ressources FHIR. Elle dépend de certains éléments de la présecription (ex. prescription en spécialité ou prescription en DC) et dans le cas du sens PN13 vers FHIR de la préexistance des instances de ressources pour les ressources référencées (ex. patient, practitioner, encounter).

## La conciliation

Prévu pour une version ultérieure de ce guide

## La prescritpion

La traduction d'une prescription PN13 en FHIR résulte en plusieurs ressources FHIR qui peuvent être constituées à l'aide des ressources ConceptMapt fournies dans ce guide:

- 1 ressource XXX ***A préciser après décision de comment on représente la prescription, soit ce sont des ressources contained soit ce sont des ressources dans un Bundle***
- 1 à n ressource(s) MedicationRequest suivant le profil [FrInpatientMedicationRequest](StructureDefinition-FrInpatientMedicationRequest.html). Leur alimentation à partir des données PN13 est documenté dans [PN13-FHIR-prescmed-medicationrequest-conceptmap](ConceptMap-PN13-FHIR-prescmed-medicationrequest-conceptmap.html). Chaque ressource MedicationRequest référence:
  - 1 ressource Patient cf. section **Existence préalable des ressources référencées** pour la ressource ConceptMap à éventuellement utiliser (si la ressource Patient référencée n'existe pas déjà)
  - 0 à 1 ressource Encounter cf. section **Existence préalable des ressources référencées** pour la ressource ConceptMap à utiliser (si la ressource Encounter référencée n'existe pas déjà)
  - 0 à 1 ressource Practitioner cf. section **Existence préalable des ressources référencées** pour la ressource ConceptMap à utiliser (si la ressource Practitioner référencée n'existe pas déjà)
  - 1 à n ressource(s) Medication cf. section **Type de prescription**

### Existence préalable des ressources référencées

Les "ressources de contexte" qui sont à référencer par la prescription FHIR (i.e. Patient, Practitioner et Encounter) peuvent déjà exister dans le serveur FHIR:

- Si des "ressources de contexte" existent déjà, il convient d'éviter de créer des doublons et d'utiliser les id FHIR de ces ressources existantes afin de créer les références. A cette occasion, un point de vigilance particulier est bien sûr à apporter à l'identification de la ressource Patient en particulier si l'INS n'est pas qualifiée.
- Si une "ressource de contexte" n'existe pas, il convient soit de la créer sur le serveur, soit de la créer pour l'intégrer à la préscription ***A préciser après décision de comment on représente la prescription, soit ce sont des ressources contained soit ce sont des ressources dans un Bundle***. Les ConceptMaps à utiliser pour ces créations sont:
  - Pour les ressources Patient: cf. section *cas particulier du niveau de qualitication des identités patients*
  - Pour les ressources Encounter: [PN13-FHIR-prescmed-encounter-conceptmap](ConceptMap-PN13-FHIR-prescmed-encounter-conceptmap.html)
  - Pour les ressources Practitioner:
    - Si le professionnel est identifié uniquemant par son identifiant: [PN13-FHIR-prescmed-practitioner-id-seule-conceptmap](ConceptMap-PN13-FHIR-prescmed-practitioner-id-seule-conceptmap.html)
    - Si le professionnel est identifié par des traits d'identité (avec ou sans identifiant): [PN13-FHIR-prescmed-practitioner-identite-conceptmap](ConceptMap-PN13-FHIR-prescmed-practitioner-id-seule-conceptmap.html)

#### Cas particulier du niveau de qualification des identités patients

La ConceptMap à utiliser dépend de la qualification de l'Identité Nationale de Santé du patient:

- Si l'INS est qualifiée (i.e. présence du matricule INS et 'Statut_idpat' à 'VALI' dans le fichier PN13): [PN13-FHIR-prescmed-patient-avec-INS-conceptmap](ConceptMap-PN13-FHIR-prescmed-patient-avec-INS-conceptmap.html)

- Dans le cas contraire: [PN13-FHIR-prescmed-patient-sans-INS-conceptmap](ConceptMap-PN13-FHIR-prescmed-patient-sans-INS-conceptmap.html)

### Type de prescription

Le profil de la ressource Medication dans la prescription dépend du type de prescritpion (ex. prescription en spécialité, prescription en DC...) ***A mettre à jour une fois les ConceptMap correspondantes réalisées***

## La dispensation

Prévu pour une version ultérieure de ce guide
