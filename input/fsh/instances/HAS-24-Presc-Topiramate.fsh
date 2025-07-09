Instance: HAS-24-Topiramate
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-24-Topiramate

Instance: medicationrequest-HAS-24-Topiramate
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: TOPIRAMATE 15 mg gélule: 1 gélule par jour. Si difficulté à prendre la gélule, l'ouvrir et en administrer le contenu avec un peu de compote."
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00002365 "TOPIRAMATE 15 mg gélule"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.patientInstruction = "Si difficulté à prendre la gélule, l'ouvrir et en administrer le contenu avec un peu de compote."
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15012000 "Gélule ou capsule molle"
