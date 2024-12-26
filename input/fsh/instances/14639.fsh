Instance: 14639
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-191
* status = #active
* intent = #order
* medicationReference.reference = "#med-191"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-11T18:21:20.641Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.additionalInstruction.text = "Délais minimum entre 2 prises : 4h"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-08-11T18:21:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-17T18:20:59Z"
* dosageInstruction.asNeededCodeableConcept = $sct#22253000 "douleur"
* dosageInstruction.asNeededCodeableConcept.text = "Si douleurs"
* dosageInstruction.route = $sct#26643006 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 1 '1'
* dosageInstruction.maxDosePerPeriod.numerator = 6 '1'
* dosageInstruction.maxDosePerPeriod.denominator = 24 'h' "h"
* dosageInstruction.maxDosePerAdministration = 2 '1'