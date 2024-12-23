Instance: 14648
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained[0] = med-282
* contained[+] = med-283
* contained[+] = med-281
* status = #active
* intent = #order
* medicationReference.reference = "#med-281"
* subject.reference = "Patient/phast-14602"
* authoredOn = "2021-09-29T10:32:47.623Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-09-29T10:32:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-10-02T10:31:59Z"
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $sct#47625008 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate.extension[fr-basis-of-dose-component].valueReference.reference = "#med-282"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.rateRatio.numerator = 4 'g' "g"
* dosageInstruction.doseAndRate.rateRatio.denominator = 20 'min' "min"