Instance: 14625
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-51
* status = #active
* intent = #order
* medicationReference.reference = "#med-51"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-28T15:12:37.603Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-28T15:12:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-02T15:11:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $sct#26643006 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 1 '1'