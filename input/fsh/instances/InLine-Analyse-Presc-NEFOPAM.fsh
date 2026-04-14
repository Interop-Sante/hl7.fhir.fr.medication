Instance: InLine-Analyse-Presc-NEFOPAM
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de NEFOPMA pour exemple d'intervention pharmaceutique"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $UCD#3400893485552 "NEFOPAM VIA 20MG/2ML INJ AMP"
* subject.reference = "Patient/25678"
* authoredOn = "2026-02-12T17:30:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-4254"
* dosageInstruction.timing.repeat.boundsDuration.value = 2
* dosageInstruction.timing.repeat.boundsDuration.unit = "semaines"
* dosageInstruction.timing.repeat.boundsDuration.system = $unitsofmeasure
* dosageInstruction.timing.repeat.boundsDuration.code = #wk
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $EDQM#20035000 "Voie intramusculaire"
* dosageInstruction.route.text = "Voie intramusculaire"
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15002000 "Ampoule"
* dosageInstruction.maxDosePerPeriod.numerator = 120 $unitsofmeasure#mg "mg"
* dosageInstruction.maxDosePerPeriod.denominator = 24 $unitsofmeasure#h "h"
