Instance: Presc-Paracetamol
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-Presc-Paracetamol
* entry[+].resource = medicationrequest-Presc-Paracetamol

Instance: medication-Presc-Paracetamol
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-Paracetamol"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000090270 "paracétamol"
* code.text = "PARACETAMOL"

Instance: medicationrequest-Presc-Paracetamol
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] =  "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-Paracetamol"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-13T08:48:39.825Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14618"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-13T08:48:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-18T08:47:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "12:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "g"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #g