Instance: 14651
InstanceOf: FrInpatientMedicationRequest
Usage: #example
* contained = med-311
* extension.url = "http://interopsante.org/fhir/StructureDefinition/FrTreatmentIntent"
* extension.valueCodeableConcept = $sct#129428001 "procédure préventive"
* extension.valueCodeableConcept.text = "traitement préventif"
* status = #active
* intent = #order
* medicationReference.reference = "#med-311"
* subject.reference = "Patient/phast-14602"
* authoredOn = "2021-10-14T15:38:27.726Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-10-14T15:38:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-10-24T15:37:59Z"
* dosageInstruction.timing.repeat.timeOfDay = "08:00:00"
* dosageInstruction.route = $sct#34206005 "Voie sous-cutanée"
* dosageInstruction.route.text = "Voie sous-cutanée"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 2000 '[anti(Xa)U]'