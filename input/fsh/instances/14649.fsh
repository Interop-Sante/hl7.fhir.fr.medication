Instance: 14649
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained[0] = med-292
* contained[+] = med-293
* contained[+] = med-291
* status = #active
* intent = #order
* medicationReference.reference = "#med-291"
* subject.reference = "Patient/phast-14602"
* authoredOn = "2021-10-02T17:10:36.512Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-10-02T17:10:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-10-05T17:09:59Z"
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $sct#47625008 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate.extension[fr-basis-of-dose-component].valueReference.reference = "#med-292"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.rateRatio.numerator = 4 'g' "g"
* dosageInstruction.doseAndRate.rateRatio.denominator = 20 'min' "min"