Instance: 14622Bis
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-14622Bis
* entry[+].resource = medicationrequest-14622Bis

Instance: medication-14622Bis
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-14622Bis"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000090377 "fentanyl"
* code.text = "FENTANYL"
* amount.numerator = 75 'ug' "µg"
* amount..denominator = 1 'h' "h"

Instance: medicationrequest-14622Bis
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-14622Bis"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-20T19:05:30.603Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14622Bis"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-20T19:05:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-28T19:04:59Z"
* dosageInstruction.timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction.route = $EDQM#20070000 "Voie transdermique"
* dosageInstruction.route.text = "Voie transdermique"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 '1'
* dosageInstruction.doseAndRate.rateRatio.denominator = 72 'h' "h"