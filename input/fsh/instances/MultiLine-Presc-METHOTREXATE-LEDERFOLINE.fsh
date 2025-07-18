Instance: MultiLine-Presc-METHOTREXATE-LEDERFOLINE
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-Presc-METHOTREXATE
* entry[+].resource = medicationrequest-Presc-LEDERFOLINE
* entry[+].resource = requestgroup-Presc-METHOTREXATE-LEDERFOLINE

Instance: medicationrequest-Presc-METHOTREXATE
InstanceOf: FrPatientMedicationRequest
Usage: #inline
* id = "medicationrequest-Presc-METHOTREXATE"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $UCD#3400894357391 "METHOTREX.ACC 25MG/ML FL2ML"
* subject.reference = "Patient/30003"
* authoredOn = "2025-05-02T14:48:44.461Z"
* requester.reference = "Practitioner/smart-Practitioner-3003"
* groupIdentifier.value = "Presc-30003"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-05-02T14:49:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-05-30T14:48:59Z"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.timing.repeat.dayOfWeek = #fri
* dosageInstruction.route = $EDQM#20035000 "Voie intramusculaire"
* dosageInstruction.route.text = "Voie intramusculaire"
* dosageInstruction.doseAndRate.doseQuantity.value = 2
* dosageInstruction.doseAndRate.doseQuantity.unit = "Flacon"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15009000

Instance: medicationrequest-Presc-LEDERFOLINE
InstanceOf: FrPatientMedicationRequestExclusion
Usage: #inline
* id = "medicationrequest-Presc-LEDERFOLINE"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest-exclusion"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $UCD#3400891463088 "LEDERFOLINE 25MG CPR"
* subject.reference = "Patient/30003"
* authoredOn = "2025-05-02T14:48:44.461Z"
* requester.reference = "Practitioner/smart-Practitioner-3003"
* groupIdentifier.value = "Presc-30003"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-05-02T14:49:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-05-30T14:48:59Z"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.timing.repeat.dayOfWeek = #fri
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 2
* dosageInstruction.doseAndRate.doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000

Instance: requestgroup-Presc-METHOTREXATE-LEDERFOLINE
InstanceOf: FrRequestGroupForPrescription
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-requestgroup-for-prescription"
* groupIdentifier.value = "Presc-30003"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* status = #active
* intent = #order
* priority = #routine
* subject.reference = "Patient/30003"
* action[0].id = "Action1"
* action[=].relatedAction.actionId = "Action2"
* action[=].relatedAction.relationship = #concurrent
* action[=].resource.reference = "#medicationrequest-Presc-LEDERFOLINE"
* action[+].id = "Action2"
* action[=].resource.reference = "#medicationrequest-Presc-METHOTREXATE"
