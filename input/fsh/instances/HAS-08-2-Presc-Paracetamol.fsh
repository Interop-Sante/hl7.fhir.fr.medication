Instance: HAS-8-2-Presc-Paracetamol
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-8-2-Presc-Paracetamol

Instance: medicationrequest-HAS-8-2-Presc-Paracetamol
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: PARACETAMOL 24 mg/mL (DOLIPRANE 2.4%), susp buv, flac 100 mL : 1 dose correspondant à la graduation de 7 kg, toutes les 6 heures - Si température supérieure ou égale à 38,5°C."
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00001921 "Paracétamol 24 mg/ml suspension buvable"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.patientInstruction = "Si température supérieure ou égale à 38,5°C"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "dose correspondant à la graduation de 7 kg"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #[dose_correspondant_graduation_7kg]
