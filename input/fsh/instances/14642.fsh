Instance: 14642
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-221
* status = #active
* intent = #order
* medicationReference.reference = "#med-221"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-12T14:29:15.461Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2021-08-12T14:29:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-08-17T14:28:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction[=].route = $sct#26643006 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.type.text = "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 500 'mg' "mg"
* dosageInstruction[+].sequence = 1
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2021-08-12T14:29:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-08-17T14:28:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "18:00:00"
* dosageInstruction[=].route = $sct#26643006 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction[=].doseAndRate.type.text = "Ordered"
* dosageInstruction[=].doseAndRate.doseQuantity = 1 'g' "g"