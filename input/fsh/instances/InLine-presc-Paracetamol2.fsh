Instance: InLine-presc-Paracetamol2
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de Paracétamol pour exemple de dispensation"
* status = #active
* intent = #order
* medicationReference.reference = "Medication/InLine-med-Paracetamol"
* subject.reference = "Patient/14603"
* authoredOn = "2021-07-14T09:07:28.914Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-14T09:07:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-17T09:06:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.type.text = "Ordered"
* dosageInstruction.doseAndRate.doseQuantity = 500 $unitsofmeasure#mg "mg"