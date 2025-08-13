Instance: Presc-Paracetamol-DoseEvolutive
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "Paracétamol 1g à 7h et 500 mg à 18h pdt 5j"
* type = #searchset
* entry[0].resource = medication-Presc-Paracetamol-DoseEvolutive
* entry[+].resource = medicationrequest-Presc-Paracetamol-DoseEvolutive

Instance: medication-Presc-Paracetamol-DoseEvolutive
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-Paracetamol-DoseEvolutive"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000090270 "paracétamol"
* code.text = "PARACETAMOL"

Instance: medicationrequest-Presc-Paracetamol-DoseEvolutive
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#med-221medication-Presc-Paracetamol-DoseEvolutive"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-12T14:29:15.461Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14642"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2021-08-12T14:29:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-08-17T14:28:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate.doseQuantity = 1 'g' "g"
* dosageInstruction[+].sequence = 1
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2021-08-12T14:29:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-08-17T14:28:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "18:00:00"
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate.doseQuantity = 500 'mg' "mg"