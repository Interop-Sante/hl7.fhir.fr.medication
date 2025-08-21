Instance: Presc-PerfDobutamine-Qsp40mL
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "dobutamine 200 mg dans soluté=G5 qsp 40 mL, 400 µg/min pendant 1j"
* type = #searchset
* entry[0].resource = medication-1-Presc-PerfDobutamine-Qsp40mL
* entry[+].resource = medication-2-Presc-PerfDobutamine-Qsp40mL
* entry[+].resource = medication-C-Presc-PerfDobutamine-Qsp40mL
* entry[+].resource = medicationrequest-Presc-PerfDobutamine-Qsp40mL

Instance: medication-1-Presc-PerfDobutamine-Qsp40mL
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-1-Presc-PerfDobutamine-Qsp40mL"
* meta.profile = Canonical(fr-medication-noncompound)
* code = $SMS#100000081844 "dobutamine"
* code.text = "DOBUTAMINE"
* amount.numerator = 200 $unitsofmeasure#mg "mg"
* amount.denominator.value = 1

Instance: medication-2-Presc-PerfDobutamine-Qsp40mL
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-2-Presc-PerfDobutamine-Qsp40mL"
* meta.profile = Canonical(fr-medication-noncompound)
* code = $SMS#100000078171 "glucose"
* code.text = "GLUCOSE"
* form = $EDQM#11210000 "solution pour perfusion"
* form.text = "solution pour perfusion"
* ingredient.itemCodeableConcept = $SMS#100000078171 "glucose"
* ingredient.itemCodeableConcept.text = "GLUCOSE"
* ingredient.strength.numerator = 50 $unitsofmeasure#mg "mg"
* ingredient.strength.denominator = 1 $unitsofmeasure#mL "mL"

Instance: medication-C-Presc-PerfDobutamine-Qsp40mL
InstanceOf: fr-medication-compound
Usage: #inline
* id = "medication-C-Presc-PerfDobutamine-Qsp40mL"
* meta.profile = Canonical(fr-medication-compound)
* code.text = "Dobutamine 200 mg dans G5 qsp 40 mL"
* amount.numerator = 40 $unitsofmeasure#ml "ml"
* amount.denominator.value = 1
* ingredient[0].itemReference.reference = "#medication-1-Presc-PerfDobutamine-Qsp40mL"
* ingredient[=].itemReference.reference = "#medication-2-Presc-PerfDobutamine-Qsp40mL"
* ingredient[=].extension[IsVehicle].valueBoolean = true

Instance: medicationrequest-Presc-PerfDobutamine-Qsp40mL
InstanceOf: fr-inpatient-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* status = #active
* intent = #order
* priority = #routine
* medicationReference.reference = "#medication-C-Presc-PerfDobutamine-Qsp40mL"
* subject.reference = "Patient/14602"
* authoredOn = "2021-10-15T10:25:27.401Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14651"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.sequence = 1
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-10-15T10:25:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-10-16T10:24:59Z"
* dosageInstruction.route = $EDQM#20045000 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate.extension[fr-basis-of-dose-component].valueReference.reference = "#medication-1-Presc-PerfDobutamine-Qsp40mL"
* dosageInstruction.doseAndRate.rateRatio.numerator = 400 $unitsofmeasure#ug "µg"
* dosageInstruction.doseAndRate.rateRatio.denominator = 1 $unitsofmeasure#min "min"