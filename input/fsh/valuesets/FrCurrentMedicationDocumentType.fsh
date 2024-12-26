ValueSet: FrCurrentMedicationDocumentType
Id: fr-current-medication-document-type
Title: "value set InterOp'Santé - type de document de la ressource Composition d'une FCT"
Description: "Le jeu de valeurs à utiliser pour coder le type de document de la ressource *Composition* d'une liste des Traitements Médicamenteux Courants."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^version = "0.2.0"
* ^status = #draft
* ^experimental = false
* ^immutable = false
* include codes from system fr-document-type
    where isCurrentMedication = "true"