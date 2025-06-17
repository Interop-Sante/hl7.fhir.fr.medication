Instance: HAS-21-Option2-Presc-Prednisolone
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-21-Option2-Presc-Prednisolone-1
* entry[=].resource = medicationrequest-HAS-21-Option2-Presc-Prednisolone-2
* entry[=].resource = medicationrequest-HAS-21-Option2-Presc-Prednisolone-3
* entry[=].resource = medicationrequest-HAS-21-Option2-Presc-Prednisolone-4
* entry[=].resource = medicationrequest-HAS-21-Option2-Presc-Prednisolone-5
* entry[=].resource = medicationrequest-HAS-21-Option2-Presc-Prednisolone-6
* entry[=].resource = requestgroup-HAS-21-Option2-Presc-Prednisolone

Instance: medicationrequest-HAS-21-Option2-Presc-Prednisolone-1
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: PREDNISOLONE 20 mg comprimé : 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00002248 "PREDNISOLONE 20 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-06T14:48:44+02:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-HAS-21-Option2"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.additionalInstruction.text = "Jusqu'à obtenir 3 bandelettes urinaires négatives"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-06-06T15:00:00+02:00"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.doseAndRate.doseQuantity = 60 $unitsofmeasure#mg "mg"

Instance: medicationrequest-HAS-21-Option2-Presc-Prednisolone-2
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: PREDNISOLONE 20 mg comprimé : 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00002248 "PREDNISOLONE 20 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-06T14:48:44+02:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-HAS-21-Option2"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.duration = 1
* dosageInstruction.timing.repeat.durationUnit = #wk
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.doseAndRate.doseQuantity = 50 $unitsofmeasure#mg "mg"


Instance: medicationrequest-HAS-21-Option2-Presc-Prednisolone-3
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: PREDNISOLONE 20 mg comprimé : 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00002248 "PREDNISOLONE 20 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-06T14:48:44+02:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-HAS-21-Option2"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.duration = 1
* dosageInstruction.timing.repeat.durationUnit = #wk
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.doseAndRate.doseQuantity = 40 $unitsofmeasure#mg "mg"

Instance: medicationrequest-HAS-21-Option2-Presc-Prednisolone-4
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: PREDNISOLONE 20 mg comprimé : 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00002248 "PREDNISOLONE 20 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-06T14:48:44+02:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-HAS-21-Option2"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.duration = 1
* dosageInstruction.timing.repeat.durationUnit = #wk
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.doseAndRate.doseQuantity = 30 $unitsofmeasure#mg "mg"

Instance: medicationrequest-HAS-21-Option2-Presc-Prednisolone-5
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: PREDNISOLONE 20 mg comprimé : 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00002248 "PREDNISOLONE 20 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-06T14:48:44+02:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-HAS-21-Option2"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.duration = 1
* dosageInstruction.timing.repeat.durationUnit = #wk
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.doseAndRate.doseQuantity = 20 $unitsofmeasure#mg "mg"

Instance: medicationrequest-HAS-21-Option2-Presc-Prednisolone-6
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: PREDNISOLONE 20 mg comprimé : 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00002248 "PREDNISOLONE 20 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-06T14:48:44+02:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-HAS-21-Option2"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.duration = 1
* dosageInstruction.timing.repeat.durationUnit = #wk
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.doseAndRate.doseQuantity = 10 $unitsofmeasure#mg "mg"

Instance: requestgroup-HAS-21-Option2-Presc-Prednisolone
InstanceOf: FrRequestGroupForPrescription
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-requestgroup-for-prescription"
* groupIdentifier.value = "Presc-HAS-21-Option2"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* status = #active
* intent = #order
* priority = #routine
* subject.reference = "Patient/14602"
* action[0].id = "A202506061"
* action[=].selectionBehavior = #exactly-one
* action[=].action[0].id = "HAS-21-Option2-1"
* action[=].action[=].description = "jusqu'à obtenir 3 bandelettes urinaires négatives"
* action[=].action[=].resource.reference = "#medicationrequest-HAS-21-Option2-Presc-Prednisolone-1"
* action[=].action[+].id = "HAS-21-Option2-2"
* action[=].action[=].relatedAction.actionId = "HAS-21-Option2-1"
* action[=].action[=].relatedAction.relationship = #after-end
* action[=].action[=].resource.reference = "#medicationrequest-HAS-21-Option2-Presc-Prednisolone-2"
* action[=].action[+].id = "HAS-21-Option2-3"
* action[=].action[=].relatedAction.actionId = "HAS-21-Option2-2"
* action[=].action[=].relatedAction.relationship = #after-end
* action[=].action[=].resource.reference = "#medicationrequest-HAS-21-Option2-Presc-Prednisolone-3"
* action[=].action[+].id = "HAS-21-Option2-4"
* action[=].action[=].relatedAction.actionId = "HAS-21-Option2-3"
* action[=].action[=].relatedAction.relationship = #after-end
* action[=].action[=].resource.reference = "#medicationrequest-HAS-21-Option2-Presc-Prednisolone-4"
* action[=].action[+].id = "HAS-21-Option2-5"
* action[=].action[=].relatedAction.actionId = "HAS-21-Option2-4"
* action[=].action[=].relatedAction.relationship = #after-end
* action[=].action[=].resource.reference = "#medicationrequest-HAS-21-Option2-Presc-Prednisolone-5"
* action[=].action[+].id = "HAS-21-Option2-6"
* action[=].action[=].relatedAction.actionId = "HAS-21-Option2-5"
* action[=].action[=].relatedAction.relationship = #after-end
* action[=].action[=].resource.reference = "#medicationrequest-HAS-21-Option2-Presc-Prednisolone-6"