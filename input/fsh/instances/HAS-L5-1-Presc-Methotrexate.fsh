Instance: HAS-L5-1-Presc-Methotrexate
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-HAS-L5-1-Presc-Methotrexate
* entry[+].resource = medicationrequest-HAS-L5-1-Presc-Methotrexate

Instance: medication-HAS-L5-1-Presc-Methotrexate
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-HAS-L5-1-Presc-Methotrexate"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000090250 "méthotrexate"
* form = $EDQM#10219000 "comprimé"
* ingredient.itemCodeableConcept = $SMS#100000090250 "méthotrexate"
* ingredient.strength.numerator = 10 'mg' "mg"

Instance: medicationrequest-HAS-L5-1-Presc-Methotrexate
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: METHOTREXATE  10 mg comprimé : 1,5 comprimé  1 fois par semaine"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationReference.reference = "#medication-HAS-L5-1-Presc-Methotrexate"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-04T14:47:12Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-HAS-L5-1"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-06-04T15:00:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-06-04T14:59:59Z"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.doseAndRate.doseQuantity.value = 1.5
* dosageInstruction.doseAndRate.doseQuantity.unit = "comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000