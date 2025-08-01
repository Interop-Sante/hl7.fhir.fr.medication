Instance: Disp-EFFERALGAN-presc-DC
InstanceOf: FRInpatientMedicationDispense
Usage: #example
* status = #completed
* medicationReference.reference = "Medication/InLine-med-EFFERALGAN"
* subject.reference = "Patient/14602"
* performer.actor.reference = "Practitioner/smart-Practitioner-7148xxxx"
* authorizingPrescription.reference = "MedicationRequest/InLine-presc-Paracetamol1"
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
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000