Instance: 14643
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-14643
* entry[+].resource = medicationrequest-14643

Instance: medication-14643
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-14643"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $UCD#3400891705256 "CLARADOL 500MG CPR"
* code.text = "CLARADOL 500 mg, cpr séc"
* form = $EDQM#10219000 "Comprimé"

Instance: medicationrequest-14643
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medicationrequest-14643"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-12T14:48:44.461Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14643"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-08-12T14:48:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-17T14:47:59Z"
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #10219000