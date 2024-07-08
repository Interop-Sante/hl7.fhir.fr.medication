CodeSystem: FrMedicationReconciliationOutcome
Id: FrMedicationReconciliationOutcome
Title: "code system InterOp'Santé - Gravité de l'erreur sur une ligne de traitement d'une FCT"
Description: "Le système de codage de la gravité de l'erreur sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux)."
* ^meta.lastUpdated = "2021-06-23T08:40:00Z"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "http://interopsante.org/fhir/CodeSystem/fr_medication-reconciliation-outcome"
* ^version = "0.2.0"
* ^status = #draft
* ^experimental = false
* ^date = "2021-06-23T08:40:00Z"
* ^publisher = "InterOp'Santé - FRANCE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "fhir@interopsante.org"
* ^content = #complete
* ^count = 5
* #10000001 "Mineure" "Erreur médicamenteuse sans conséquence pour le patient."
* #10000002 "Significative" "Erreur médicamenteuse avec surveillance indispensable pour le patient mais sans conséquence clinique pour lui."
* #10000003 "Majeure" "Erreur médicamenteuse avec conséquences cliniques temporaires pour le patient : à l’origine d’une atteinte physique ou psychologique réversible qui nécessite un traitement ou une intervention ou un transfert vers un (autre) établissement, induction ou allongement du séjour hospitalier."
* #10000004 "Critique" "Erreur médicamenteuse avec conséquences cliniques permanentes pour le patient : à l’origine d’une atteinte physique ou psychologique permanente irréversible."
* #10000005 "Catastrophique" "Erreur médicamenteuse avec mise en jeu du pronostic vital ou décès du patient."