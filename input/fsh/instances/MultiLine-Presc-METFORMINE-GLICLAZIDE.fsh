Instance: MultiLine-Presc-METFORMINE-GLICLAZIDE
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-Presc-METFORMINE
* entry[+].resource = medicationrequest-Presc-GLICLAZIDE
* entry[+].resource = requestgroup-Presc-METFORMINE-GLICLAZIDE

Instance: medicationrequest-Presc-METFORMINE
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* id = "medicationrequest-Presc-METFORMINE"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $UCD#3400890020275 "METFORMINE ACC 1000MG CPR"
* subject.reference = "Patient/30002"
* authoredOn = "2025-05-02T14:48:44.461Z"
* requester.reference = "Practitioner/smart-Practitioner-3002"
* groupIdentifier.value = "Presc-30002"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-05-02T14:49:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-05-31T14:48:59Z"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.when = #C
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 0.5
* dosageInstruction.doseAndRate.doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000

Instance: medicationrequest-Presc-GLICLAZIDE
InstanceOf: FrInpatientMedicationRequestExclusion
Usage: #inline
* id = "medicationrequest-Presc-GLICLAZIDE"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest-exclusion"
* status = #active
* intent = #option
* priority = #routine
* medicationCodeableConcept = $UCD#3400893541364 "GLICLAZIDE ARW 30MG CPR LM"
* subject.reference = "Patient/30002"
* authoredOn = "2025-05-02T14:48:44.461Z"
* requester.reference = "Practitioner/smart-Practitioner-3002"
* groupIdentifier.value = "Presc-30002"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-05-02T14:49:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-05-31T14:48:59Z"
* dosageInstruction.timing.repeat.when = #CM
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 3
* dosageInstruction.doseAndRate.doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000

Instance: requestgroup-Presc-METFORMINE-GLICLAZIDE
InstanceOf: FrRequestGroupForPrescription
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-requestgroup-for-prescription"
* groupIdentifier.value = "Presc-30002"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* status = #active
* intent = #order
* priority = #routine
* subject.reference = "Patient/30002"
* action[0].id = "Action1"
* action[=].description = "En cas d'intolérance digestive"
* action[=].relatedAction.extension[additionalRelationship].valueCode = #ALT
* action[=].relatedAction.actionId = "Action2"
* action[=].relatedAction.relationship = #concurrent
* action[=].resource.reference = "#medicationrequest-Presc-GLICLAZIDE"
* action[+].id = "Action2"
* action[=].resource.reference = "#medicationrequest-Presc-METFORMINE"
