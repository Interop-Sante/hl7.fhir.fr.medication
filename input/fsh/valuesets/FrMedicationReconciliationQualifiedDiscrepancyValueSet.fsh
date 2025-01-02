ValueSet: FrMedicationReconciliationQualifiedDiscrepancy
Id: fr-medication-reconciliation-qualified-discrepancy
Title: "value set Interop'Santé - qualification de la divergence identifiée sur une ligne de traitement d'une FCT"
Description: "Le jeu de valeurs à utiliser pour coder la qualification de la divergence identifiée sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #draft
* ^experimental = false
* ^immutable = false
* include codes from system fr-medication-reconciliation-discrepancy
    where isQualified = "true"