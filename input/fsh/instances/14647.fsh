Instance: 14647
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-271
* status = #active
* intent = #order
* medicationReference.reference = "#med-271"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-14T18:17:26.372Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2021-08-14T18:17:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-08-16T18:16:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction[=].route = $sct#26643006 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.type.text = "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 6 'mg' "mg"
* dosageInstruction[+].sequence = 2
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2021-08-16T18:17:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-08-18T18:16:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction[=].route = $sct#26643006 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.type.text = "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 4 'mg' "mg"
* dosageInstruction[+].sequence = 3
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2021-08-18T18:17:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-08-20T18:16:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction[=].route = $sct#26643006 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.type.text = "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 'mg' "mg"