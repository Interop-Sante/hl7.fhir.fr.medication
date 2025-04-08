Instance: 14646
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-14646
* entry[+].resource = medicationrequest-14646

Instance: medication-14646
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-14646"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $UCD#3400893320921 "BISOPROLOL SDZ 7,5MG CPR"
* code.text = "BISOPROLOL 7.5 mg SANDOZ, cpr séc"
* form = $EDQM#10219000 "comprimé"
* form.text = "comprimé"

Instance: medicationrequest-14646
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-14646"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-13T13:40:33.162Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14646"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2021-08-13T13:40:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-11-20T13:39:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 0.3333333
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "Comprimé"
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = $EDQM
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #10219000
* dosageInstruction[+].sequence = 1
* dosageInstruction[=].timing.repeat.boundsPeriod.start = "2021-08-13T13:40:00Z"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2021-11-20T13:39:59Z"
* dosageInstruction[=].timing.repeat.timeOfDay = "18:00:00"
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].route.text = "Voie orale"
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 0.666667
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "Comprimé"
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = $EDQM
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #10219000