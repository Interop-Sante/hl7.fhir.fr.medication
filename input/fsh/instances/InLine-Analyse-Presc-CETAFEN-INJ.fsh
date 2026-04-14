Instance: InLine-Analyse-Presc-CETAFEN-INJ
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de CETAFEN en perfusion pour exemple d'intervention pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 flacon en perfusion de 15 mn toutes les 12 heures"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: CETAFEN 10MG/3MG/ML FL100ML : 1 flacon en perfusion de 15 mn toutes les 12 heures"
* medicationCodeableConcept = $UCD#3400890026710 "CETAFEN 10MG/3MG/ML FL100ML"
* subject.reference = "Patient/25678"
* authoredOn = "2026-03-20T17:46:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-20260320174600"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 12
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $EDQM#20045000 "Voie intraveineuse"
* dosageInstruction.doseAndRate.rateRatio.numerator = 1 $EDQM#15009000 "Flacon"
* dosageInstruction.doseAndRate.rateRatio.denominator = 15 $unitsofmeasure#min "min"