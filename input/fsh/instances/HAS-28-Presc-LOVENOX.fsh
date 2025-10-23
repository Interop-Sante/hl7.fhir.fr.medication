Instance: HAS-28-Presc-LOVENOX
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "ENOXAPARINE sodique 4 000 UI (40 mg)/0,4 mL (LOVENOX®), solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention."
* type = #searchset
* entry.resource = medicationrequest-HAS-28-Presc-LOVENOX

Instance: medicationrequest-HAS-28-Presc-LOVENOX
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: ENOXAPARINE sodique 4 000 UI (40 mg)/0,4 mL (LOVENOX®), solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention."
* medicationCodeableConcept = $UCD#3400892669236 "LOVENOX 4000UI SRG0,4ML +ERIS"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].additionalInstruction.text = "à débuter 12 heures avant l'intervention chirurgicale"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].route = $EDQM#20066000 "Voie sous-cutanée"
* dosageInstruction[=].doseAndRate.doseQuantity.value = 1
* dosageInstruction[=].doseAndRate.doseQuantity.unit = "Seringue"
* dosageInstruction[=].doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction[=].doseAndRate.doseQuantity.code = #15052000
* dosageInstruction[+].sequence = 2
* dosageInstruction[=].additionalInstruction.text = "après l'intervention"
* dosageInstruction[=].timing.repeat.boundsDuration = 10 $unitsofmeasure#d "jour"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].route = $EDQM#20066000 "Voie sous-cutanée"
* dosageInstruction[=].doseAndRate.doseQuantity.value = 1
* dosageInstruction[=].doseAndRate.doseQuantity.unit = "Seringue"
* dosageInstruction[=].doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction[=].doseAndRate.doseQuantity.code = #15052000