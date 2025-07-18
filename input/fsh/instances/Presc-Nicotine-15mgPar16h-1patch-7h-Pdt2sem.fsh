Instance: Presc-Nicotine-15mgPar16h
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-Presc-Nicotine-15mgPar16h
* entry[+].resource = medicationrequest-Presc-Nicotine-15mgPar16h

Instance: medication-Presc-Nicotine-15mgPar16h
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-Nicotine-15mgPar16h"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000079991 "nicotine"
* code.text = "NICOTINE"

Instance: medicationrequest-Presc-Nicotine-15mgPar16h
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-Nicotine-15mgPar16h"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-19T18:33:41.714Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14621"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-19T18:33:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-02T18:32:59Z"
* dosageInstruction.timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction.route = $EDQM#20070000 "Voie transdermique"
* dosageInstruction.route.text = "Voie transdermique"
* dosageInstruction.doseAndRate.rateRatio.numerator = 15 'mg' "mg"
* dosageInstruction.doseAndRate.rateRatio.denominator = 16 'h' "h"