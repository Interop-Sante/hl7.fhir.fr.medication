Instance: HAS-Cas1-Presc-Pantoprazole
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-HAS-Cas1-Presc-Pantoprazole
* entry[+].resource = medicationrequest-HAS-Cas1-Presc-Pantoprazole

Instance: medication-HAS-Cas1-Presc-Pantoprazole
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-HAS-Cas1-Presc-Pantoprazole"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000092491 "pantoprazole"
* form = $EDQM#10219000 "comprimé"
* ingredient.itemCodeableConcept = $SMS#100000092491 "pantoprazole"
* ingredient.strength.numerator = 40 'mg' "mg"

Instance: medicationrequest-HAS-Cas1-Presc-Pantoprazole
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: PANTOPRAZOLE 40 mg comprimé: 40 mg le matin"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = "#medication-HAS-Cas1-Presc-Pantoprazole"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-04T14:48:44.461Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-HAS-1"
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