Instance: HAS-23-1-Presc-Fluindione
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "FLUINDIONE 20 mg comprimé quadrisécable: 0,5 comprimé au jour 1, et puis 0,75 comprimé au jour 2. Recommencer le cycle de 2 jours, à répéter sur le mois"
* type = #searchset
* entry.resource = medicationrequest-HAS-23-1-Presc-Fluindione

Instance: medicationrequest-HAS-23-1-Presc-Fluindione
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "0,5 comprimé au jour 1, et puis 0,75 comprimé au jour 2. Recommencer le cycle de 2 jours, à répéter sur le mois"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: FLUINDIONE 20 mg comprimé quadrisécable: 0,5 comprimé au jour 1, et puis 0,75 comprimé au jour 2. Recommencer le cycle de 2 jours, à répéter sur le mois."
* medicationCodeableConcept = $Medicabase#MV00001070 "FLUINDIONE 20 mg comprimé quadrisécable"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction[0].additionalInstruction.text = "le premier jour du cycle de 2 jours"
* dosageInstruction[=].timing.repeat.boundsDuration = 1 $unitsofmeasure#mo "mois"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 2
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].doseAndRate.doseQuantity = 0.5 $EDQM#15054000 "Comprimé"
* dosageInstruction[+].additionalInstruction.text = "le second jour du cycle de 2 jours"
* dosageInstruction[=].timing.repeat.boundsDuration = 1 $unitsofmeasure#mo "mois"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 2
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].doseAndRate.doseQuantity = 0.75 $EDQM#15054000 "Comprimé"
