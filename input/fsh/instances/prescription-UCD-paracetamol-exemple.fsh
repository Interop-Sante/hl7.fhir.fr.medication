Instance: prescription-UCD-paracetamol-exemple
InstanceOf: fr-prescription-bundle-for-example
// exemple de traduction de UCD-2 
Usage: #example
* type = #searchset
* entry[0].resource = patient-prescr-UCD-paracetamol-exemple
* entry[+].resource = practitioner-prescr-UCD-paracetamol-exemple
* entry[+].resource = medication-prescr-UCD-paracetamol-exemple
* entry[+].resource = observation-1-prescr-UCD-paracetamol-exemple
* entry[+].resource = observation-2-prescr-UCD-paracetamol-exemple
* entry[+].resource = medicationrequest-prescr-UCD-paracetamol-exemple

Instance: patient-prescr-UCD-paracetamol-exemple
InstanceOf: Patient
Usage: #inline
* id = "patient-prescr-UCD-paracetamol-exemple"
* meta.profile[0] = $FrCorePatient
* identifier[0].use = #usual
* identifier[=].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[=].type.coding[=].code = #PI
* identifier[=].type.coding[=].display = "Patient internal identifier"
* identifier[=].system = "https://somehospital.fr/IPP"
* identifier[=].value = "5000001820"
* name[0].use = #usual
* name[=].family = "AVION"
* name[+].use = #official
* name[=].family = "AVION"
* name[=].given = "JAUNE"
* birthDate = "1961-11-25"

Instance: practitioner-prescr-UCD-paracetamol-exemple
InstanceOf: Practitioner
Usage: #inline
* id = "practitioner-prescr-UCD-paracetamol-exemple"
* meta.profile[0] = $FrCorePractitioner
* identifier[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[=].type.coding[=].code = #EI
* identifier[=].system = "https://somehospital.fr/EI"
* identifier[=].value = "P082443"
* name[0].use = #usual
* name[=].family = "LUIGGI"
* name[=].given = "DENIS"
* name[+].use = #official
* name[=].family = "LUIGGI"
* name[=].given = "DENIS"

Instance: medication-prescr-UCD-paracetamol-exemple
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-prescr-UCD-paracetamol-exemple"
* code.coding[0].code = #3400890006262
* code.coding[=].system = $UCD
* code.coding[=].display = "PARACETAMOL VIC 1000MG CPR"
* code.text = "PARACETAMOL MYLAN CONSEIL 1000 MG, COMPRIME"
* form = $EDQM#10219000 "Comprimé"

Instance: observation-1-prescr-UCD-paracetamol-exemple
InstanceOf: Observation
Usage: #inline
* id = "observation-1-prescr-UCD-paracetamol-exemple"
* meta.profile[0] = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-height"
* status = #final
* category.coding[0].code = #vital-signs
* category.coding[=].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code.coding[0].code = #8302-2
* code.coding[=].system = "http://loinc.org"
* subject.reference = "#patient-prescr-UCD-paracetamol-exemple"
* effectiveDateTime = "2018-10-25T11:06:06+02:00"
* valueQuantity.value = 189.0
* valueQuantity.unit = "cm"
* valueQuantity.system = $unitsofmeasure
* valueQuantity.code = #cm

Instance: observation-2-prescr-UCD-paracetamol-exemple
InstanceOf: Observation
Usage: #inline
* id = "observation-2-prescr-UCD-paracetamol-exemple"
* meta.profile[0] = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-weight"
* status = #final
* category.coding[0].code = #vital-signs
* category.coding[=].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code.coding[0].code = #29463-7
* code.coding[=].system = "http://loinc.org"
* subject.reference = "#patient-prescr-UCD-paracetamol-exemple"
* effectiveDateTime = "2018-06-21T16:05:10+02:00"
* valueQuantity.value = 120.0
* valueQuantity.unit = "kg"
* valueQuantity.system = $unitsofmeasure
* valueQuantity.code = #kg

Instance: medicationrequest-prescr-UCD-paracetamol-exemple
InstanceOf: fr-inpatient-medicationrequest3
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest3"
* identifier[0].value = "31626"
* identifier[=].system = "https://somehospital.fr/PrescrptionLine-ID"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "PARACETAMOL MYLAN CONSEIL 1000 MG, COMPRIME  (Voie orale) - A la demande :  1000 mg /prise,  4000 mg max/j,  respecter 6h entre 2 prises pendant 2 jours"
* note[=].extension[NoteScope].valueCode = #LIPRESCTXT
* note[+].text = "Si douleur"
* note[=].extension[NoteScope].valueCode = #LIPRESCIND
* note[+].text = "Test paracetamol 2 (à la demande)"
* note[=].extension[NoteScope].valueCode = #LIPRESCCOMM
* medicationReference.reference = "#medication-prescr-UCD-paracetamol-exemple"
* subject.reference = "#patient-prescr-UCD-paracetamol-exemple"
* encounter.identifier.value = "70101274"
* encounter.identifier.system = "https://somehospital.fr/Sejour"
* supportingInformation[0].identifier.value = "2571"
* supportingInformation[=].identifier.system = "https://somehospital.fr/UF"
* supportingInformation[=].extension[UFRole].valueCode = #UFMED
* supportingInformation[+].reference = "#observation-1-prescr-UCD-paracetamol-exemple"
* supportingInformation[+].reference = "#observation-2-prescr-UCD-paracetamol-exemple"
* authoredOn = "2022-04-11T16:42:53+02:00"
* requester.reference = "#practitioner-prescr-UCD-paracetamol-exemple"
* groupIdentifier.value = "10723"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2022-04-12T06:00:00+02:00"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2022-04-15T00:00:00+02:00"
* dosageInstruction[=].timing.repeat.frequencyMax = 1
* dosageInstruction[=].timing.repeat.period = 6
* dosageInstruction[=].timing.repeat.periodUnit = #h
* dosageInstruction[=].asNeededBoolean = true
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 1000.0
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "mg"
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = $unitsofmeasure
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #mg
* dosageInstruction[=].maxDosePerPeriod.numerator.value = 4000.0
* dosageInstruction[=].maxDosePerPeriod.numerator.unit = "mg"
* dosageInstruction[=].maxDosePerPeriod.numerator.system = $unitsofmeasure
* dosageInstruction[=].maxDosePerPeriod.numerator.code = #mg
* dosageInstruction[=].maxDosePerPeriod.denominator.value = 1
* dosageInstruction[=].maxDosePerPeriod.denominator.system = $unitsofmeasure
* dosageInstruction[=].maxDosePerPeriod.denominator.code = #d
