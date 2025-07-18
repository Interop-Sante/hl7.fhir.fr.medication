CodeSystem: FRMedicationReconciliationType
Id: fr-medication-reconciliation-type
Title: "code system Interop'Santé - Type d'écart/erreur sur une ligne de traitement d'une FCT"
Description: "Le système de codage du type d'écart/erreur sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^status = #draft
* ^experimental = false
* ^content = #complete
* ^count = 7
* #10000001 "Erreur posologie"
* #10000002 "Oubli médicament prescrit"
* #10000003 "Oubli automédication"
* #10000004 "Erreur substitution"
* #10000005 "Erreur forme galénique"
* #10000006 "Ajout"
* #10000007 "Autre"