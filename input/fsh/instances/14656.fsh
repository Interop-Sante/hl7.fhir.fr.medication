Instance: 14656
InstanceOf: FrInpatientMedicationRequest2
Usage: #example
* contained[0] = med-354
* contained[+] = med-353
* status = #active
* intent = #order
* medicationReference.reference = "#med-353"
* subject.reference = "Patient/phast-14602"
* authoredOn = "2021-07-13T08:48:39.825Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-13T08:48:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-18T08:47:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "12:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $sct#26643006 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 1 'g' "g"