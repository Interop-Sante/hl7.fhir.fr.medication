Instance: Analyse-Intervention-Type4-CETAFEN-INJ
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique Type: 4 Choix de la voie d'administration - Problème: 8 Voie/administration inappropriée"
* groupIdentifier.value = "Presc-20260320174600"
* status = #completed
* intent = #proposal
* authoredOn = "2026-03-20T18:53:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-CETAFEN-INJ"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #INTERVENTION
* output[+].type.text = "commentaire"
* output[=].valueString = "La patiente est en capacité de déglutir, voie orale à privilégier"
* output[+].type.text = "type d'intervention"
* output[=].valueCodeableConcept = #4 "Choix de la voie d'administration"
* output[+].type.text = "type de problème"
* output[=].valueCodeableConcept = #8 "Voie/administration inappropriée"
* output[+].type.text = "proposition"
* output[=].valueReference = "MedicationRequest/InLine-Analyse-Presc-CETAFEN-CPR"
