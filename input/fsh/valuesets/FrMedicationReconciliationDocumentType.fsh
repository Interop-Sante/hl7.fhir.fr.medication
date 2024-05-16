ValueSet: FrMedicationReconciliationDocumentType
Id: FrMedicationReconciliationDocumentType
Title: "value set InterOp'Santé - type de document de la ressource Composition d'une FCT"
Description: "Le jeu de valeurs à utiliser pour coder le type de document de la ressource *Composition* d'une FCT (Fiche de Conciliation des Traitements médicamenteux)."
* ^meta.lastUpdated = "2021-06-23T09:15:00Z"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "http://interopsante.org/fhir/ValueSet/fr-medication-reconciliation-document-type"
* ^version = "0.2.0"
* ^status = #draft
* ^experimental = false
* ^date = "2021-06-23T09:15:00Z"
* ^publisher = "InterOp'Santé - FRANCE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "fhir@interopsante.org"
* ^immutable = false
* include codes from system http://interopsante.org/fhir/CodeSystem/fr-document-type|0.2.0
    where isMedicationReconciliation = "true"