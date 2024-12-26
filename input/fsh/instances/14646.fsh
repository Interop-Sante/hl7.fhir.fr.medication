Instance: 14646
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-261
* status = #active
* intent = #order
* medicationReference.reference = "#med-261"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-13T13:40:33.162Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2021-08-13T13:40:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-11-20T13:39:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction[=].route = $sct#26643006 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.type.text = "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 0.3333333 '1'
* dosageInstruction[+].sequence = 1
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2021-08-13T13:40:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-11-20T13:39:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "18:00:00"
* dosageInstruction[=].route = $sct#26643006 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.type.text = "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 0.666667 '1'