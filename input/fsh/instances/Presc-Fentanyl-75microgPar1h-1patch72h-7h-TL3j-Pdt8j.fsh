Instance: 14622
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-14622
* entry[+].resource = medicationrequest-14622

Instance: medication-14622
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-14622"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000090377 "fentanyl"
* code.text = "FENTANYL"

Instance: medicationrequest-14622
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-14622"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-20T19:05:30.603Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14622"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].timing.event = "2021-07-21T07:00:00Z"
* dosageInstruction[=].route = $EDQM#20070000 "Voie transdermique"
* dosageInstruction[=].route.text = "Voie transdermique"
* dosageInstruction[=].doseAndRate.rateRatio.numerator = 75 'ug' "µg"
* dosageInstruction[=].doseAndRate.rateRatio.denominator = 1 'h' "h"
* dosageInstruction[+].sequence = 2
* dosageInstruction[=].timing.event = "2021-07-24T07:00:00Z"
* dosageInstruction[=].route = $EDQM#20070000 "Voie transdermique"
* dosageInstruction[=].route.text = "Voie transdermique"
* dosageInstruction[=].doseAndRate.rateRatio.numerator = 75 'ug' "µg"
* dosageInstruction[=].doseAndRate.rateRatio.denominator = 1 'h' "h"
* dosageInstruction[+].sequence = 3
* dosageInstruction[=].timing.event = "2021-07-27T07:00:00Z"
* dosageInstruction[=].route = $EDQM#20070000 "Voie transdermique"
* dosageInstruction[=].route.text = "Voie transdermique"
* dosageInstruction[=].doseAndRate.rateRatio.numerator = 75 'ug' "µg"
* dosageInstruction[=].doseAndRate.rateRatio.denominator = 1 'h' "h"