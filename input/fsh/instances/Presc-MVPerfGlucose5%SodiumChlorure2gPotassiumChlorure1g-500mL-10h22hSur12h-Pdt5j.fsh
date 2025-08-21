Instance: Presc-MV-PerfGl-NaCl-KCl
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "MV - glucose 5%+sodium chlorure 2g+potassium chlorure 1g x 500mL, 1 à 10h et 22h sur 12h, pendant 5j"
* type = #searchset
* entry.resource = medicationrequest-Presc-MV-PerfGl-NaCl-KCl

Instance: medicationrequest-Presc-MV-PerfGl-NaCl-KCl
InstanceOf: fr-inpatient-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $Medicabase#MV00004216 "GLUCOSE 5 % + POTASSIUM CHLORURE 0,2 % + SODIUM CHLORURE 0,4 % sol p perf"
* subject.reference = "Patient/14602"
* authoredOn = "2021-07-30T11:42:16.592Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-14631"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2021-07-30T11:42:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2021-08-04T11:41:59Z"
* dosageInstruction.timing.repeat.timeOfDay[0] = "10:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "22:00:00"
* dosageInstruction.route = $EDQM#20045000 "Voie intraveineuse"
* dosageInstruction.route.text = "Voie intraveineuse"
* dosageInstruction.doseAndRate.rateRatio.numerator.value = 500
* dosageInstruction.doseAndRate.rateRatio.numerator.unit = "ml"
* dosageInstruction.doseAndRate.rateRatio.numerator.system = $unitsofmeasure
* dosageInstruction.doseAndRate.rateRatio.numerator.code = #mL
* dosageInstruction.doseAndRate.rateRatio.denominator = 12 $unitsofmeasure#h "h"