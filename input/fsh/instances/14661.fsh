Instance: 14661
InstanceOf: FrInpatientMedicationDispense
Usage: #example
* contained = med-381
* status = #completed
* medicationReference.reference = "#med-381"
* subject.reference = "Patient/phast-14602"
* performer.actor.reference = "Practitioner/smart-Practitioner-7148xxxx"
* authorizingPrescription.reference = "MedicationRequest/14654"
* type = $v3-ActCode#RFP "Refill - Part"
* quantity = 6 '1'
* daysSupply = 2 'd' "jours"
* whenPrepared = "2021-07-16T10:10:00Z"
* whenHandedOver = "2021-07-16T10:24:00Z"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-16T10:10:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-18T10:09:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "12:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $sct#26643006 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 2 '1'