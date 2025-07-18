Instance: MultiLine-Presc-MARSILID-ZOMIGORO
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-Presc-ZOMIGORO
* entry[+].resource = medicationrequest-Presc-MARSILID
* entry[+].resource = requestgroup-Presc-MARSILID-ZOMIGORO

Instance: medicationrequest-Presc-MARSILID
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* id = "medicationrequest-Presc-MARSILID"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $UCD#3400892782287 "MARSILID 50MG CPR"
* subject.reference = "Patient/30001"
* authoredOn = "2025-05-02T14:48:44.461Z"
* requester.reference = "Practitioner/smart-Practitioner-30001"
* groupIdentifier.value = "Presc-30001"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-05-02T14:49:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-05-31T14:48:59Z"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000

Instance: medicationrequest-Presc-ZOMIGORO
InstanceOf: FRInpatientMedicationRequestExclusion
Usage: #inline
* id = "medicationrequest-Presc-ZOMIGORO"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest-exclusion"
* status = #unknown
* intent = #option
* priority = #routine
* medicationCodeableConcept = $UCD#3400892210339 "ZOMIGORO 2,5MG CPR DISP"
* subject.reference = "Patient/30001"
* groupIdentifier.value = "Presc-30001"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"

Instance: requestgroup-Presc-MARSILID-ZOMIGORO
InstanceOf: FRRequestGroupForPrescription
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-requestgroup-for-prescription"
* groupIdentifier.value = "Presc-30001"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* status = #active
* intent = #order
* priority = #routine
* subject.reference = "Patient/30001"
* action[0].id = "Action1"
* action[=].condition.kind = #stop
* action[=].relatedAction.extension[additionalRelationship].valueCode = #EXCL
* action[=].relatedAction.actionId = "Action2"
* action[=].relatedAction.relationship = #concurrent
* action[=].resource.reference = "#medicationrequest-Presc-ZOMIGORO"
* action[+].id = "Action2"
* action[=].resource.reference = "#medicationrequest-Presc-MARSILID"
