Instance: 14624
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = Inline-Instance-for-14624-1
* status = #active
* intent = #order
* medicationReference.reference = "#med-21"
* subject.reference = "Patient/phast-14602"
* authoredOn = "2021-07-28T14:52:40.936Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-28T14:52:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-02T14:51:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "12:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $sct#26643006 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 1 '1'