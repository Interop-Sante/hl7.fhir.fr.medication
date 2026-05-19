Instance: Analyse-Intervention-Type6-CALCIDOSE
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique Type: 6 Optimisation modalités d'administration - Problème: 6.2 Interaction - Précaution d'emploi"
* groupIdentifier.value = "Presc-20260320161000"
* status = #completed
* intent = #proposal
* authoredOn = "2026-03-20T17:24:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input[0].type.text = "ligne de prescription analysée"
* input[=].valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-LEVOTHYROX"
* input[+].type.text = "ligne de prescription analysée"
* input[=].valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-CALCIDOSE"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "Interaction avec le Lévothyrox. Pouvez-vous prescrire le Calcidose vit D3 à distance de la prise de Lévothyrox, soit le midi ou le soir?"
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #6 "Optimisation modalités d'administration"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #6.2 "Interaction - Précaution d'emploi"
