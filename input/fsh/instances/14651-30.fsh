Instance: 14651-30
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained[0] = med-322
* contained[+] = med-323
* contained[+] = med-321
* status = #active
* intent = #order
* medicationReference.reference = "#med-321"
* subject.reference = "Patient/phast-14602"
* authoredOn = "2021-10-15T10:25:27.401Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-10-15T10:25:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-10-16T10:24:59Z"
* dosageInstruction.route = $sct#47625008 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate.extension.url = "http://interopsante.org/fhir/StructureDefinition/FrBasisOfDoseComponent"
* dosageInstruction.doseAndRate.extension.valueReference.reference = "#med-322"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.rateRatio.numerator = 400 'ug' "µg"
* dosageInstruction.doseAndRate.rateRatio.denominator = $unitsofmeasure#min "min"