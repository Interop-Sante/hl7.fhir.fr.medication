Instance: Disp-DOLIPRANE-Refill-presc-DC
InstanceOf: FRInpatientMedicationDispense
Usage: #example
Description: "Dispensation complémentaire et partielle de DOLIPRANE sur une prescription de Paracétamol"
* status = #completed
* medicationReference.reference = "Medication/InLine-med-DOLIPRANE"
* subject.reference = "Patient/14602"
* performer.actor.reference = "Practitioner/smart-Practitioner-7148xxxx"
* authorizingPrescription.reference = "MedicationRequest/InLine-presc-Paracetamol1"
* type = $v3-ActCode#RFP "Refill - Part"
* quantity = 6 '1'
* daysSupply = 2 $unitsofmeasure#d "jour"
* whenPrepared = "2021-07-16T10:10:00Z"
* whenHandedOver = "2021-07-16T10:24:00Z"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-16T10:10:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-18T10:09:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "12:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity.value = 2
* dosageInstruction.doseAndRate.doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000