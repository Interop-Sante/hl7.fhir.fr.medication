Instance: Analyse-Validation-Commentaire-Diazepam
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Validation d'une prescription de diazépam avec commentaire"
* groupIdentifier.value = "Presc-20260317103300"
* status = #completed
* intent = #proposal
* authoredOn = "2026-03-17T14:33:00+01:00"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-Diazepam"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #VALIDATION
* output[+].type.text = "commentaire"
* output[=].valueString = "Le diazepam est prescrit depuis plus de 6 mois, il serait judicieux de commencer à proposer une diminution des doses"