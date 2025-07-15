Instance: MultiLine-Presc-Sucralfate-Paracetamol
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-MultiLine-Presc-Sucralfate
* entry[+].resource = medicationrequest-MultiLine-Presc-Paracetamol
* entry[+].resource = requestgroup-Presc-Sucralfate-Paracetamol

Instance: medicationrequest-MultiLine-Presc-Sucralfate
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* id = "medicationrequest-MultiLine-Presc-Sucralfate"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $SMS#100000091545 "sucralfate"
* subject.reference = "Patient/30004"
* authoredOn = "2025-05-02T14:48:44.461Z"
* requester.reference = "Practitioner/smart-Practitioner-3004"
* groupIdentifier.value = "Presc-30004"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-05-02T14:49:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-05-31T14:48:59Z"
* dosageInstruction.timing.repeat.when[0] = #ACM
* dosageInstruction.timing.repeat.when[+] = #ACV
* dosageInstruction.timing.repeat.offset = 60
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "g"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #g

Instance: medicationrequest-MultiLine-Presc-Paracetamol
InstanceOf: FrInpatientMedicationRequestExclusion
Usage: #inline
* id = "medicationrequest-MultiLine-Presc-Paracetamol"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest-exclusion"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $SMS#100000090270 "paracétamol"
* subject.reference = "Patient/30004"
* authoredOn = "2025-05-02T14:48:44.461Z"
* requester.reference = "Practitioner/smart-Practitioner-3004"
* groupIdentifier.value = "Presc-30004"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-05-02T14:49:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-05-31T14:48:59Z"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 4
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 500
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #mg
* dosageInstruction.maxDosePerPeriod.numerator.value = 3
* dosageInstruction.maxDosePerPeriod.numerator.unit = "g"
* dosageInstruction.maxDosePerPeriod.numerator.system = $unitsofmeasure
* dosageInstruction.maxDosePerPeriod.numerator.code = #g
* dosageInstruction.maxDosePerPeriod.denominator.value = 1
* dosageInstruction.maxDosePerPeriod.denominator.unit = "d"
* dosageInstruction.maxDosePerPeriod.denominator.system = $unitsofmeasure
* dosageInstruction.maxDosePerPeriod.denominator.code = #d

Instance: requestgroup-Presc-Sucralfate-Paracetamol
InstanceOf: FrRequestGroupForPrescription
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-requestgroup-for-prescription"
* groupIdentifier.value = "Presc-30004"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* status = #active
* intent = #order
* priority = #routine
* subject.reference = "Patient/30004"
* action[0].id = "Action1"
* action[=].relatedAction.actionId = "Action2"
* action[=].relatedAction.relationship = #after
* action[=].relatedAction.offsetDuration.value = 2
* action[=].relatedAction.offsetDuration.unit = "h"
* action[=].relatedAction.offsetDuration.system = $unitsofmeasure
* action[=].relatedAction.offsetDuration.code = #h
* action[=].resource.reference = "#medicationrequest-MultiLine-Presc-Paracetamol"
* action[+].id = "Action2"
* action[=].resource.reference = "#medicationrequest-MultiLinePresc-Sucralfate"
