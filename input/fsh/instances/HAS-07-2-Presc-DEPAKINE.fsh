Instance: HAS-7-2-Presc-DEPAKINE
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-5-2-Presc-DEPAKINE

Instance: medicationrequest-HAS-5-2-Presc-DEPAKINE
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: DEPAKINE®200mg/ml solution buvable : 200 mg 3 fois par jour (soit 1 mL  3 fois par jour)"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $UCD#3400890250078 "DEPAKINE BUV SOL FL40ML"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dodageInstruction.text = "200 mg 3 fois par jour (soit 1 mL  3 fois par jour)"
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 200 $unitsofmeasure#mg "mg"