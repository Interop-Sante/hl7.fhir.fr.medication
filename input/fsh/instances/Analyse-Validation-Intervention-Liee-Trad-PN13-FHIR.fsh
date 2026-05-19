Instance: Analyse-Validation-Intervention-Liee-Trad-PN13-FHIR
InstanceOf: FRInpatientPharmaceuticalAnalysisResultProfile
Usage: #example
Description: "Validation pharmaceutique associée à une intervention pharmaceutique pour exemple traduction PN13-FHIR de resultats d'analyse pharmaceutique"
* groupIdentifier.value = "10723"
* status = #completed
* intent = #proposal
* authoredOn = "2022-04-11T17:30:53+02:00"
* owner.identifier.value = "811102058236"
* owner.identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* input.type.text = "ligne de prescription analysée"
* input.valueReference.reference = "MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol"
* output[0].type.text = "résultat de l'analyse"
* output[=].valueCode = #VALIDATION
* output[+].type.text = "intervention pharmaceutique liée"
* output[=].valueReference.reference = "Task/Analyse-Intervention-Liee-Validation-Trad-PN13-FHIR"