Instance: HAS-1-Presc-Pantoprazole-MV
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-1-Presc-Pantoprazole-MV

Instance: medicationrequest-HAS-1-Presc-Pantoprazole-MV
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: PANTOPRAZOLE 40 mg comprimé: 40 mg le matin"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00000792 "PANTOPRAZOLE 40 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-04T14:48:44.461Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-HAS-1-MV"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-06-04T15:00:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-06-14T14:49:59Z"
* dosageInstruction.timing.repeat.when = #MORN
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 40
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #mg