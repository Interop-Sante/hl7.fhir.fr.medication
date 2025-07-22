Instance: HAS-12-1-Presc-BEPANTHEN
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-12-1-Presc-BEPANTHEN

Instance: medicationrequest-HAS-12-1-Presc-BEPANTHEN
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: BEPANTHEN®5% crème : 1 application, 2 fois par jour, en couche mince"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $UCD#3400892402086 "BEPANTHEN 5% CR TB100G"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.patientInstruction = "en couche mince"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Application"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #{Appln}