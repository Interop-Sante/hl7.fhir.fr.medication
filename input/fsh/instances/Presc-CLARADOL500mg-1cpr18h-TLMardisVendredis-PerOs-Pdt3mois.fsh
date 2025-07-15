Instance: Presc-CLARADOL-TLMardisVendredis
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry.resource = medicationrequest-Presc-CLARADOL-TLMardisVendredis

Instance: medicationrequest-Presc-CLARADOL-TLMardisVendredis
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $UCD#3400891705256 "CLARADOL 500MG CPR"
* medicationCodeableConcept.text = "CLARADOL 500 mg, cpr séc"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-13T09:28:14.342Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14645"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-08-13T09:28:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-11-13T09:27:59Z"
* dosageInstruction.timing.repeat.dayOfWeek[0] = #tue
* dosageInstruction.timing.repeat.dayOfWeek[+] = #fri
* dosageInstruction.timing.repeat.timeOfDay = "18:00:00"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000