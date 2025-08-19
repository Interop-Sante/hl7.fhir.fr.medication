Instance: HAS-28-Presc-Enoxaparine
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "ENOXAPARINE sodique 4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention."
* type = #searchset
* entry[0].resource = medication-HAS-28-Presc-Enoxaparine
* entry[+].resource = medicationrequest-HAS-28-Presc-Enoxaparine

Instance: medication-HAS-28-Presc-Enoxaparine
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-HAS-28-Presc-Enoxaparine"
* meta.profile = Canonical(fr-medication-noncompound)
* code = $SMS#100000090152 "énoxaparine sodique"
* form = $EDQM#11201000 "Solution injectable"
* ingredient.itemCodeableConcept = $SMS#100000090152 "énoxaparine sodique"
* ingredient.strength.numerator.value = 4000
* ingredient.strength.numerator.unit = "UI"
* ingredient.strength.denominator.value = 0.4
* ingredient.strength.denominator.unit = "ml"
* ingredient.strength.denominator.system = $unitsofmeasure
* ingredient.strength.denominator.code = #mL

Instance: medicationrequest-HAS-28-Presc-Enoxaparine
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: ENOXAPARINE sodique 4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention."
* medicationReference.reference = "#medication-HAS-28-Presc-Enoxaparine"
* subject.reference = "Patient/14602"
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