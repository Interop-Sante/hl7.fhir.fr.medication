Instance: Disp-DOLIPRANE-Refill-Compl-presc-DC
InstanceOf: FRInpatientMedicationDispense
Usage: #example
Description: "Prescription complémentaire et finale de DOLIPRANE sur une prescription de Paracétamol"
* status = #completed
* medicationReference.reference = "Medication/InLine-med-DOLIPRANE"
* subject.reference = "Patient/14603"
* performer.actor.reference = "Practitioner/smart-Practitioner-7148xxxx"
* authorizingPrescription.reference = "MedicationRequest/InLine-presc-Paracetamol2"
* type = $v3-ActCode#RFC "Refill - Complete"
* quantity = 2 '1'
* daysSupply = 2 $unitsofmeasure#d "jours"
* whenPrepared = "2021-07-16T10:10:00Z"
* whenHandedOver = "2021-07-16T10:24:00Z"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-16T10:10:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-17T10:09:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000