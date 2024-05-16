ValueSet: FrMedicationReconciliationQualifiedDiscrepancy
Id: FrMedicationReconciliationQualifiedDiscrepancy
Title: "value set InterOp'Santé - qualification de la divergence identifiée sur une ligne de traitement d'une FCT"
Description: "Le jeu de valeurs à utiliser pour coder la qualification de la divergence identifiée sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #draft
* ^experimental = false
* ^immutable = false
* include codes from system http://interopsante.org/fhir/CodeSystem/fr-medication-reconciliation-discrepancy|0.2.0
    where isQualified = "true"