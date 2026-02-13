Instance: Analyse-Validation-Simple
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Validation simple d'une prescription de paracétamol"
* groupIdentifier.value = "Presc-3567"
* status = #completed
* intent = #proposal
* authoredOn = "2021-07-13T10:35:56.963Z"
* performerType = $TRE-G15-ProfessionSante#21 "Pharmacien"
* owner.reference = "Practitioner/smart-Practitioner-27865023"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Analyse-Presc-Paracetamol"
* output.type.text = "résultat de l'analyse"
* output.valueCode = #VALIDATION
