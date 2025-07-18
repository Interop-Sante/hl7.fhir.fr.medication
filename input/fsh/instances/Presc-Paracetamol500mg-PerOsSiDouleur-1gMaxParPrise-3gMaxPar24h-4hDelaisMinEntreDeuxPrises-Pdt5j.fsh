Instance: Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin
* entry[+].resource = medicationrequest-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin

Instance: medication-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000090270 "paracétamol"
* code.text = "PARACETAMOL"

Instance: medicationrequest-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin
InstanceOf: FrPatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin"
* subject.reference = "Patient/14602"
* authoredOn = "2021-08-12T11:59:40.552Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14640"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.additionalInstruction.text = "Délais minimum entre 2 prises : 4h"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-08-12T11:59:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-17T11:58:59Z"
* dosageInstruction.timing.repeat.frequencyMax = 1
* dosageInstruction.timing.repeat.periodMax = 4
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.asNeededCodeableConcept = $sct#22253000 "douleur"
* dosageInstruction.asNeededCodeableConcept.text = "Si douleurs"
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity = 500 'mg' "mg"
* dosageInstruction.maxDosePerPeriod.numerator = 3 'g' "g"
* dosageInstruction.maxDosePerPeriod.denominator = 24 'h' "h"
* dosageInstruction.maxDosePerAdministration = 1 'g' "g"