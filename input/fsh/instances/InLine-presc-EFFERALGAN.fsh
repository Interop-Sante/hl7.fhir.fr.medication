Instance: InLine-Presc-EFFERALGAN
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "Medication/InLine-med-EFFERALGAN"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-28T14:52:40.936Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-24624"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-28T14:52:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-02T14:51:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "12:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate[0].type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate[=].type.text = "Ordered"
* dosageInstruction.doseAndRate[=].doseQuantity.value = 1
* dosageInstruction.doseAndRate[=].doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate[=].doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate[=].doseQuantity.code = #15054000