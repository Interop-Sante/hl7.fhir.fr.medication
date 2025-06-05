Instance: HAS-L5-2-Presc-Methotrexate-MV
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-L5-2-Presc-Methotrexate-MV

Instance: medicationrequest-HAS-L5-2-Presc-Methotrexate-MV
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: METHOTREXATE  10 mg comprimé : 15 mg  1 fois par semaine"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00003397 "METHOTREXATE 10 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-04T14:47:12Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-HAS-L5-2-MV"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-06-04T15:00:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-06-04T14:59:59Z"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.doseAndRate.doseQuantity.value = 15
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #mg