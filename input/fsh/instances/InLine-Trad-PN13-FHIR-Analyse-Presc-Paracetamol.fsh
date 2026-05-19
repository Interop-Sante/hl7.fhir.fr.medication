Instance: InLine-Trad-PN13-FHIR-Analyse-Presc-Paracetamol
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription initale pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1000 mg /prise,  4000 mg max/j,  respecter 6h entre 2 prises pendant 2 jours"
* identifier[0].value = "31626"
* identifier[=].system = "https://somehospital.fr/PrescrptionLine-ID"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: PARACETAMOL (Voie orale) A la demande :  1000 mg /prise,  4000 mg max/j,  respecter 6h entre 2 prises pendant 2 jours"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* note[+].text = "Indication: En cas de douleur"
* note[=].extension[noteScope].valueCode = #LIPRESCIND
* medicationCodeableConcept = $SMS#100000090270 "paracétamol"
* subject.reference = "Patient/InLine-patient-Avion"
* encounter.identifier.value = "70101274"
* encounter.identifier.system = "https://somehospital.fr/Sejour"
* supportingInformation[0].identifier.value = "2571"
* supportingInformation[=].identifier.system = "https://somehospital.fr/UF"
* supportingInformation[=].extension[UFRole].valueCode = #UFMED
* supportingInformation[+].reference = "Observation/InLine-Observation-poids-Avion"
* supportingInformation[+].reference = "Observation/InLine-observation-taille-Avion"
* authoredOn = "2022-04-11T16:42:53+02:00"
* requester.reference = "Practitioner/InLine-practitioner-Luiggi"
* groupIdentifier.value = "10723"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2022-04-12T06:00:00+02:00"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2022-04-15T00:00:00+02:00"
* dosageInstruction[=].timing.repeat.frequencyMax = 1
* dosageInstruction[=].timing.repeat.period = 6
* dosageInstruction[=].timing.repeat.periodUnit = #h
* dosageInstruction[=].asNeededCodeableConcept[0] = $sct#22253000 "douleur"
* dosageInstruction[=].asNeededCodeableConcept[0].text = "Si douleurs"
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 1000.0
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = $unitsofmeasure
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #mg
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "mg"
* dosageInstruction[=].maxDosePerPeriod.numerator.value = 4000.0
* dosageInstruction[=].maxDosePerPeriod.numerator.system = $unitsofmeasure
* dosageInstruction[=].maxDosePerPeriod.numerator.code = #mg
* dosageInstruction[=].maxDosePerPeriod.numerator.unit = "mg"
* dosageInstruction[=].maxDosePerPeriod.denominator.value = 1
* dosageInstruction[=].maxDosePerPeriod.denominator.system = $unitsofmeasure
* dosageInstruction[=].maxDosePerPeriod.denominator.code = #d
