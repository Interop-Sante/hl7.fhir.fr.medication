Instance: Presc-NICORETTESKIN-patch
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "NICORETTESKIN® 15 mg/16h, patch, 1 à 7h, pendant 2 semaines"
* type = #searchset
* entry[0].resource = medication-Presc-NICORETTESKIN-patch
* entry[+].resource = medicationrequest-Presc-NICORETTESKIN-patch

Instance: medication-Presc-NICORETTESKIN-patch
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-Presc-NICORETTESKIN-patch"
* meta.profile = Canonical(fr-medication-noncompound)
* code = $UCD#3400893539354 "NICORETTESKIN 15MG/16H DISP"
* code.text = "NICORETTESKIN® 15MG/16H DISP"
* form = $EDQM#10519000 "Patch transdermique"
* form.text = "dispositif transdermique"
* ingredient.itemCodeableConcept = $SMS#100000079991 "nicotine"
* ingredient.itemCodeableConcept.text = "NICOTINE"
* ingredient.isActive = true
* ingredient.strength.numerator = 15 $unitsofmeasure#mg "mg"
* ingredient.strength.denominator.value = 1

Instance: medicationrequest-Presc-NICORETTESKIN-patch
InstanceOf: fr-inpatient-medicationrequest
Usage: #inline
* meta.profile[0] = Canonical(fr-inpatient-medicationrequest)
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-Presc-NICORETTESKIN-patch"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-29T13:27:21.531Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14628"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-29T13:27:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-12T13:26:59Z"
* dosageInstruction.timing.repeat.duration = 16
* dosageInstruction.timing.repeat.durationUnit = #h
* dosageInstruction.timing.repeat.timeOfDay = "07:00:00"
* dosageInstruction.route = $EDQM#20070000 "Voie transdermique"
* dosageInstruction.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "patch"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15036000
