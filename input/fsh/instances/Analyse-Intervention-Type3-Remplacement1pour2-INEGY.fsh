Instance: Analyse-Intervention-Type3-Remplacement1pour2-INEGY
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique Type: 3 Substitution/Echange - Problème: 1 Non conformité aux référentiels"
* groupIdentifier.value = "Presc-20260319151900"
* status = #completed
* intent = #proposal
* authoredOn = "2026-03-19T15:47:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input[0].type.text = "ligne de prescription analysée"
* input[=].valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-SIMVASTATINE"
* input[+].type.text = "ligne de prescription analysée"
* input[=].valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-EZETIMIBE"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "La SIMVASTATINE et l'EZEMITIBE ne sont pas référencées au livret thérapeutique. Proposition de substitution par INEGY"
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #3 "Substitution/Echange"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #1 "Non conformité aux référentiels / Contre-indication"
* output[+].type.text = "proposition"
* output[=].valueReference = "MedicationRequest/InLine-Analyse-Presc-INEGY"
