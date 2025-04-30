CodeSystem: FrMedicationReconciliationResolution
Id: fr-medication-reconciliation-resolution
Title: "code system Interop'Santé - Résolution d'une divergence sur une ligne de traitement d'une FCT"
Description: "Le système de codage de la résolution d'une divergence sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^version = "0.2.0"
* ^status = #draft
* ^experimental = false
* ^content = #complete
* ^count = 5
* #10000001 "Dose corrigée" "La dose initialement prescrite a été corrigée."
* #10000002 "Repris" "La prescription interrompue a été reprise."
* #10000003 "Spécialité corrigée" "Le choix de la spécialité prescrite a été corrigé."
* #10000004 "Forme corrigée" "La forme galénique prescrite a été corrigée."
* #10000005 "Arrêt" "La prescription a été arrêtée."