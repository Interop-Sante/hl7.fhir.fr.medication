Instance: Presc-Fentanyl-patch72h-TL3j
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "fentanyl 75 µg/h, patch 72h, 1 à 7h, tous les 3j, pendant 8j"
* type = #searchset
* entry[0].resource = medication-Presc-Fentanyl-patch72h-TL3j
* entry[+].resource = medicationrequest-Presc-Fentanyl-patch72h-TL3j

Instance: medication-Presc-Fentanyl-patch72h-TL3j
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-Fentanyl-patch72h-TL3j"
* meta.profile = Canonical(fr-medication-noncompound)
* code = $SMS#100000090377 "fentanyl"
* code.text = "FENTANYL"
* form = $EDQM#0061 "Patch"
* ingredient[0].itemCodeableConcept = $SMS#100000090377 "fentanyl"
* ingredient[=].itemCodeableConcept.text = "FENTANYL"
* ingredient[=].strength.numerator = 75 'ug' "µg"
* ingredient[=].strength.denominator = 1 'h' "h"

Instance: medicationrequest-Presc-Fentanyl-patch72h-TL3j
InstanceOf: fr-inpatient-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-Fentanyl-patch72h-TL3j"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-20T19:05:30.603Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14622"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-20T19:05:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-07-28T19:04:59Z"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 3
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction.route = $EDQM#20070000 "Voie transdermique"
* dosageInstruction.route.text = "Voie transdermique"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Patch"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15036000
