Instance: Presc-Methylpredinosolone-DosesEvolutives
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-Presc-Methylpredinosolone-DosesEvolutives
* entry[+].resource = medicationrequest-Presc-Methylpredinosolone-DosesEvolutives

Instance: medication-Presc-Methylpredinosolone-DosesEvolutives
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-Methylpredinosolone-DosesEvolutives"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000091803 "méthylprednisolone"
* code.text = "METHYLPREDNISOLONE"

Instance: medicationrequest-Presc-Methylpredinosolone-DosesEvolutives
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-Methylpredinosolone-DosesEvolutives"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-14T18:17:26.372Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14647"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2021-08-14T18:17:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-08-16T18:16:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate.doseQuantity = 6 'mg' "mg"
* dosageInstruction[+].timing.repeat.boundsPeriod.start = "2021-08-16T18:17:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-08-18T18:16:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate.doseQuantity = 4 'mg' "mg"
* dosageInstruction[+].timing.repeat.boundsPeriod.start = "2021-08-18T18:17:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-08-20T18:16:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate.doseQuantity = 2 'mg' "mg"