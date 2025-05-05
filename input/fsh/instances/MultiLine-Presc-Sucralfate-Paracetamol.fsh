Instance: MultiLine-Presc-Sucralfate-Paracetamol
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-Presc-Sucralfate
* entry[+].resource = medicationrequest-Presc-Paracetamol
* entry[+].resource = requestgroup-Presc-Sucralfate-Paracetamol

Instance: medicationrequest-Presc-Sucralfate
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
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

Instance: medicationrequest-Presc-Paracetamol
InstanceOf: FrInpatientMedicationRequestExclusion
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest-exclusion"
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
* dosageIstrncution.doseAndRate.maxDosePerPeriod.numerator.value = 3
* dosageIstrncution.doseAndRate.maxDosePerPeriod.numerator.unit = "g"
* dosageIstrncution.doseAndRate.maxDosePerPeriod.numerator.system = $unitsofmeasure
* dosageIstrncution.doseAndRate.maxDosePerPeriod.numerator.code = #g
* dosageIstrncution.doseAndRate.maxDosePerPeriod.denominator.value = 1
* dosageIstrncution.doseAndRate.maxDosePerPeriod.denominator.unit = "d"
* dosageIstrncution.doseAndRate.maxDosePerPeriod.denominator.system = $unitsofmeasure
* dosageIstrncution.doseAndRate.maxDosePerPeriod.denominator.code = #d

Instance: requestgroup-Presc-Sucralfate-paracetamol
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
* action[=].relatedAction.offsetDuration.value = #h
* action[=].resource = "#medicationrequest-Presc-Paracetamol"
* action[+].id = "Action2"
* action[=].resource = "#medicationrequest-Presc-Sucralfate"
