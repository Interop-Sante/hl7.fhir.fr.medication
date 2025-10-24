Instance: Presc-MATRIFEN-patch-TL72h
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "MATRIFEN® 75 µg/h, patch, 1 à 7h, toutes les 72h, pendant 8j"
* type = #searchset
* entry[0].resource = medication-Presc-MATRIFEN-patch-TL72h
* entry[+].resource = medicationrequest-Presc-MATRIFEN-patch-TL72h

Instance: medication-Presc-MATRIFEN-patch-TL72h
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-MATRIFEN-patch-TL72h"
* meta.profile = Canonical(fr-medication-noncompound)
* code = $UCD#3400893183014 "MATRIFEN 75µG/H DISP TRANS"
* code.text = "MATRIFEN® 75 ug/h, dispositif transdermique"
* form = $EDQM#10517500 "patch cutané"
* form.text = "dispositif cutané"
* ingredient.itemCodeableConcept = $SMS#100000090377 "fentanyl"
* ingredient.itemCodeableConcept.text = "FENTANYL"
* ingredient.isActive = true
* ingredient.strength.numerator = 75 $unitsofmeasure#ug "µg"
* ingredient.strength.denominator = $unitsofmeasure#h "h"

Instance: medicationrequest-Presc-MATRIFEN-patch-TL72h
InstanceOf: fr-inpatient-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-MATRIFEN-patch-TL72h"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-29T16:14:13.817Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14629"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-29T16:14:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-06T16:13:59Z"
* dosageInstruction.timing.repeat.duration = 72
* dosageInstruction.timing.repeat.durationUnit = #h
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 72
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction.route = $EDQM#20070000 "Voie transdermique"
* dosageInstruction.route.text = "Voie transdermique"
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15036000 "patch"
