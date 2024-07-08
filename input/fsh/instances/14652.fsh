Instance: 14652
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-331
* status = #active
* intent = #order
* medicationReference.reference = "#med-331"
* subject.reference = "Patient/phast-14602"
* authoredOn = "2021-10-15T20:06:12.345Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-10-15T20:06:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-10-29T20:05:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $sct#26643006 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate[0].type = $dose-rate-type#calculated "Calculated"
* dosageInstruction.doseAndRate[=].type.text = "Calculated"
* dosageInstruction.doseAndRate[=].doseQuantity = 1000 'mg/m2' "mg/m²"
* dosageInstruction.doseAndRate[+].type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate[=].type.text = "Ordered"
* dosageInstruction.doseAndRate[=].doseQuantity = 1800 'mg' "mg"