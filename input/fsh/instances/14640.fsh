Instance: 14640
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-201
* status = #active
* intent = #order
* medicationReference.reference = "#med-201"
* subject.reference = "Patient/phast-14602"
* authoredOn = "2021-08-12T11:59:40.552Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.additionalInstruction.text = "Délais minimum entre 2 prises : 4h"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-08-12T11:59:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-17T11:58:59Z"
* dosageInstruction.asNeededCodeableConcept = $sct#22253000 "douleur"
* dosageInstruction.asNeededCodeableConcept.text = "Si douleurs"
* dosageInstruction.route = $sct#26643006 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 500 'mg' "mg"
* dosageInstruction.maxDosePerPeriod.numerator = 3 'g' "g"
* dosageInstruction.maxDosePerPeriod.denominator = 24 'h' "h"
* dosageInstruction.maxDosePerAdministration = 1 'g' "g"