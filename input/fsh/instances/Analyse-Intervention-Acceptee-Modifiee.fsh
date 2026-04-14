Instance: Analyse-Intervention-Acceptee-Modifiee
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Intervention pharmaceutique acceptée mais proposition modifiée pour cause de sous dosage"
* meta.versionId = "2"
* meta.lastUpdated = "2026-03-20T18:37:00+01:00"
* groupIdentifier.value = "Presc-20260320174600"
* status = #completed
* businessStatus = #4 "Acceptée avec modification de proposition(s)"
* intent = #proposal
* authoredOn = "2026-03-20T18:23:00+01:00"
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
* output[=].valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-CETAFEN-CPR-SousDose"
* output[+].type.text = "proposition modifiée"
* output[=].valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-CETAFEN-CPR-Modifiee"
