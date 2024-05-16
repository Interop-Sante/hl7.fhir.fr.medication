Instance: 14626
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-71
* status = #active
* intent = #order
* medicationReference.reference = "#med-71"
* subject.reference = "Patient/phast-14602"
* authoredOn = "2021-07-28T15:20:31.592Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-28T15:20:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-02T15:19:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $sct#26643006 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 20 '1'