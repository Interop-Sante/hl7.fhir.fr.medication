Instance: Analyse-Validation-Commentaire-Morphine
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Validation d'une prescription de morphine avec commentaire"
* groupIdentifier.value = "Presc-3657"
* status = #completed
* intent = #proposal
* authoredOn = "2025-07-23T10:56:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-Morphine"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #VALIDATION
* output[+].type.text = "commentaire"
* output[=].valueString = "Dose totale de morphine pour ce patient proche de la limite haute recommandée"
