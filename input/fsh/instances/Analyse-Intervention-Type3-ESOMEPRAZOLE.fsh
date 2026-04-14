Instance: Analyse-Intervention-Type3-ESOMEPRAZOLE
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique Type: 3 Substitution/Echange - Problème: 1 Non conformité aux référentiels"
* groupIdentifier.value = "Presc-20260322161900"
* status = #completed
* intent = #proposal
* authoredOn = "2026-03-22T17:57:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-ESOMEPRAZOLE"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "L'ESOMEPRAZOLE n'est pas référencé au livret thérapeutique. Proposition de substitution par LANSOPRAZOLE"
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #3 "Substitution/Echange"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #1 "Non conformité aux référentiels / Contre-indication"
* output[+].type.text = "proposition"
* output[=].valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-LANSOPRAZOLE"
