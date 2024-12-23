Instance: 14658
InstanceOf: FrInpatientMedicationDispense
Usage: #example
* contained = med-31
* status = #completed
* medicationReference.reference = "#med-31"
* subject.reference = "Patient/14602"
* performer.actor.reference = "Practitioner/smart-Practitioner-7148xxxx"
* authorizingPrescription.reference = "MedicationRequest/14654"
* type = $v3-ActCode#FFC "First Fill - Complete"
* quantity = 15 '1'
* daysSupply = 5 'd' "jours"
* whenPrepared = "2021-07-13T10:37:00Z"
* whenHandedOver = "2021-07-13T11:16:00Z"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-13T10:37:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-18T10:36:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "12:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $sct#26643006 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 1 '1'