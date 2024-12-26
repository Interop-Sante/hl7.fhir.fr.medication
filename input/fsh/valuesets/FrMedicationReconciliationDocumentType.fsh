ValueSet: FrMedicationReconciliationDocumentType
Id: fr-medication-reconciliation-document-type
Title: "value set InterOp'Santé - type de document de la ressource Composition d'une FCT"
Description: "Le jeu de valeurs à utiliser pour coder le type de document de la ressource *Composition* d'une FCT (Fiche de Conciliation des Traitements médicamenteux)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #draft
* ^experimental = false
* ^immutable = false
* include codes from system fr-document-type
    where isMedicationReconciliation = "true"