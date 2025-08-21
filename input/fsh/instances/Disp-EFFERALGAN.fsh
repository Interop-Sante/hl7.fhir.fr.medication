Instance: Disp-EFFERALGAN
InstanceOf: FRInpatientMedicationDispense
Usage: #example
Description: "Dispensation complète d'EFFERALGANT sur une prescription d'EFFERALGAN"
* status = #completed
* medicationReference.reference = "Medication/InLine-med-EFFERALGAN"
* subject.reference = "Patient/14602"
* performer.actor.reference = "Practitioner/smart-Practitioner-7148xxxx"
* authorizingPrescription.reference = "MedicationRequest/medicationrequest-Presc-EFFERALGAN"
* type = $v3-ActCode#FFC "First Fill - Complete"
* quantity = 15 '1'
* daysSupply = 5 $unitsofmeasure#d "jours"
* whenPrepared = "2021-07-28T15:25:00Z"
* whenHandedOver = "2021-07-28T16:41:00Z"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-28T16:41:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-02T16:40:59Z"
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