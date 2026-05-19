Instance: InLine-Trad-PN13-FHIR-Analyse-Intervention-Substitution
InstanceOf: fr-inpatient-pharmaceutical-intervention-suggestion
Usage: #example
Description: "Proposition de substitution associée à intervention pharmaceutique pour exemple traduction PN13-FHIR de resultats d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-pharmaceutical-intervention-suggestion)
* extension[renderedDosageInstruction].valueMarkdown = "800 mg toutes les 12 heures pendant 2 jours, 2400 mg max/j"
* identifier[0].value = "31639"
* identifier[=].system = "https://somehospital.fr/PrescrptionLine-ID"
* status = #active
* intent = #proposal
* priority = #routine
* note[0].text = "Prescription textuelle: Ibuprofène (Voie orale) : 800 mg toutes les 12 heures pendant 2 jours, 2400 mg max/j"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $SMS#100000090365 "ibuprofène"
* subject.reference = "Patient/InLine-patient-Avion"
* encounter.identifier.value = "70101274"
* encounter.identifier.system = "https://somehospital.fr/Sejour"
* supportingInformation[0].identifier.value = "2571"
* supportingInformation[=].identifier.system = "https://somehospital.fr/UF"
* supportingInformation[=].extension[UFRole].valueCode = #UFMED
* supportingInformation[+].reference = "Observation/InLine-Observation-poids-Avion"
* supportingInformation[+].reference = "Observation/InLine-observation-taille-Avion"
* supportingInformation[+].reference = "MedicationRequest/InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol"
* supportingInformation[+].reference = "Task/Analyse-Intervention-Substitution-Trad-PN13-FHIR"
* authoredOn = "2022-04-11T17:30:53+02:00"
* requester.identifier.value = "811102058236"
* requester.identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* groupIdentifier.value = "10723"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2022-04-12T06:00:00+02:00"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2022-04-15T00:00:00+02:00"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 12
* dosageInstruction[=].timing.repeat.periodUnit = #h
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 800.0
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = $unitsofmeasure
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #mg
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "mg"
* dosageInstruction[=].maxDosePerPeriod.numerator.value = 2400.0
* dosageInstruction[=].maxDosePerPeriod.numerator.system = $unitsofmeasure
* dosageInstruction[=].maxDosePerPeriod.numerator.code = #mg
* dosageInstruction[=].maxDosePerPeriod.numerator.unit = "mg"
* dosageInstruction[=].maxDosePerPeriod.denominator.value = 1
* dosageInstruction[=].maxDosePerPeriod.denominator.system = $unitsofmeasure
* dosageInstruction[=].maxDosePerPeriod.denominator.code = #d