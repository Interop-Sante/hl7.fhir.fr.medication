Instance: HAS-7-1-Presc-Paracetamol
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-7-1-Presc-Paracetamol

Instance: medicationrequest-HAS-7-1-Presc-Paracetamol
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: PARACETAMOL 500 mg gélule - Si douleur - dose max/prise de 1000 milligramme - 4000 milligramme maximum par jour"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00000557 "PARACETAMOL 500 mg gélule"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-05T15:00:00Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-HAS-7-1"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-06-05T15:00:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-06-15T15:00:00Z"
* dosageInstruction.asNeededCodeableConcept = $sct#22253000 "douleur"
* dosageInstruction.asNeededCodeableConcept.text = "Si douleurs"
* dosageInstruction.maxDosePerPeriod.numerator = 4000 'mg' "mg"
* dosageInstruction.maxDosePerPeriod.denominator = 24 'h' "h"
* dosageInstruction.maxDosePerAdministration = 1000 'mg' "mg"