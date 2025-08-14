Instance: Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "CLARADOL 500 mg, 1 cpr si douleur, 2 cpr max par prise, 6 cpr max par 24h, 4h délais min entre deux prises, pendant 5j"
* type = #searchset
* entry.resource = medicationrequest-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin

Instance: medicationrequest-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $UCD#3400891705256 "CLARADOL 500MG CPR"
* medicationCodeableConcept.text = "CLARADOL 500 mg, cpr séc"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-11T18:21:20.641Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14639"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.additionalInstruction.text = "Délais minimum entre 2 prises : 4h"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-08-11T18:21:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-17T18:20:59Z"
* dosageInstruction.timing.repeat.frequencyMax = 1
* dosageInstruction.timing.repeat.period = 4
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.asNeededCodeableConcept = $sct#22253000 "douleur"
* dosageInstruction.asNeededCodeableConcept.text = "Si douleurs"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000
* dosageInstruction.maxDosePerPeriod.numerator.value = 6
* dosageInstruction.maxDosePerPeriod.numerator.unit = "Comprimé"
* dosageInstruction.maxDosePerPeriod.numerator.system = $EDQM
* dosageInstruction.maxDosePerPeriod.numerator.code = #15054000
* dosageInstruction.maxDosePerPeriod.denominator = 24 'h' "h"
* dosageInstruction.maxDosePerAdministration.value = 2
* dosageInstruction.maxDosePerAdministration.unit = "Comprimé"
* dosageInstruction.maxDosePerAdministration.system = $EDQM
* dosageInstruction.maxDosePerAdministration.code = #15054000