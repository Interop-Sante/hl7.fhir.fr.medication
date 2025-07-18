Instance: Presc-CLARADOL-DoseDiffParHoraire
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry.resource = medicationrequest-Presc-CLARADOL-DoseDiffPraHoraire

Instance: medicationrequest-Presc-CLARADOL-DoseDiffPraHoraire
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $UCD#3400891705256 "CLARADOL 500MG CPR"
* medicationCodeableConcept.text = "CLARADOL 500 mg, cpr séc"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-12T14:08:35.552Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14641"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2021-08-12T14:08:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-08-17T14:07:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 2
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "Comprimé"
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = $EDQM
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #15054000
* dosageInstruction[+].sequence = 1
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2021-08-12T14:08:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-08-17T14:07:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "18:00:00"
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "Comprimé"
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = $EDQM
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #15054000
