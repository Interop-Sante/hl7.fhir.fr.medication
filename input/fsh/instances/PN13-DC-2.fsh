Instance: bundle-DC-2
InstanceOf: fr-prescription-bundle-for-example
// exemple de traduction de DC-2 
Usage: #example
* type = #searchset
* entry[0].resource.resourceType = "Patient"
* entry[=].resource.id = "Patient-DC-2"
* entry[=].resource.meta.profile[0] = $FrCorePatient
* entry[=].resource.identifier[0].use = #usual
* entry[=].resource.identifier[=].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* entry[=].resource.identifier[=].type.coding[=].code = #PI
* entry[=].resource.identifier[=].type.coding[=].display = "Patient internal identifier"
* entry[=].resource.identifier[=].system = "https://somehospital.fr/IPP"
* entry[=].resource.identifier[=].value = "5000001820"
* entry[=].resource.name[0].use = #usual
* entry[=].resource.name[=].family = "AVION"
* entry[=].resource.name[+].use = #official
* entry[=].resource.name[=].family = "AVION"
* entry[=].resource.name[=].given = "JAUNE"
* entry[=].resource.birthDate = "1961-11-25"
* entry[+].resource.resourceType = "Practitioner"
* entry[=].resource.id = "Practitioner-DC-2"
* entry[=].resource.meta.profile[0] = $FrCorePractitioner
* entry[=].resource.identifier[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* entry[=].resource.identifier[=].type.coding[=].code = #EI
* entry[=].resource.identifier[=].system = "https://somehospital.fr/EI"
* entry[=].resource.identifier[=].value = "P082443"
* entry[=].resource.name[0].use = #usual
* entry[=].resource.name[=].family = "LUIGGI"
* entry[=].resource.name[=].given = "DENIS"
* entry[=].resource.name[+].use = #official
* entry[=].resource.name[=].family = "LUIGGI"
* entry[=].resource.name[=].given = "DENIS"
* entry[+].resource.resourceType = "Medication"
* entry[=].resource.id = "med-DC-2"
// Pas sûr de comment on référence un profil qui est créé dans le cadre de l'IG
* entry[=].resource.meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* entry[=].resource.code = $SDS#100000090270 "paracétamol"
* entry[=].resource.code.text = "PARACETAMOL"
* entry[+].resource.resourceType = "Observation"
* entry[=].resource.id = "Obs-DC-2-1"
* entry[=].resource.meta.profile[0] = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-height"
* entry[=].resource.status = #final
* entry[=].resource.category.coding.code = #vital-signs
* entry[=].resource.category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* entry[=].resource.code.coding.code = #8302-2
* entry[=].resource.code.coding.system = "http://loinc.org"
* entry[=].resource.subject.reference = "#Patient-DC-2"
* entry[=].resource.effectiveDateTime = "2018-10-25T11:06:06+02:00"
* entry[=].resource.valueQuantity.value = 189.0
* entry[=].resource.valueQuantity.unit = "cm"
* entry[=].resource.valueQuantity.system = $unitsofmeasure
* entry[=].resource.valueQuantity.code = #cm
* entry[+].resource.resourceType = "Observation"
* entry[=].resource.id = "Obs-DC-2-2"
* entry[=].resource.meta.profile[0] = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-weight"
* entry[=].resource.status = #final
* entry[=].resource.category.coding.code = #vital-signs
* entry[=].resource.category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* entry[=].resource.code.coding.code = #29463-7
* entry[=].resource.code.coding.system = "http://loinc.org"
* entry[=].resource.subject.reference = "#Patient-DC-2"
* entry[=].resource.effectiveDateTime = "2018-06-21T16:05:10+02:00"
* entry[=].resource.valueQuantity.value = 120.0
* entry[=].resource.valueQuantity.unit = "kg"
* entry[=].resource.valueQuantity.system = $unitsofmeasure
* entry[=].resource.valueQuantity.code = #kg
* entry[+].resource.resourceType = "MedicationRequest"
* entry[=].resource.text.status = #additional
// Pas sûr de comment on fait du XHTML
// * entry[=].resource.text.div = "<div> PARACETAMOL (Voie orale) A la demande :  1000 mg /prise,  4000 mg max/j,  respecter 6h entre 2 prises pendant 2 jours </div>"
* entry[=].resource.meta.profile[0] =  "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest3"
* entry[=].resource.identifier[0].value = "31626"
* entry[=].resource.identifier[=].system = "https://somehospital.fr/PrescrptionLine-ID"
* entry[=].resource.status = #active
* entry[=].resource.intent = #order
* entry[=].resource.priority = #routine
* entry[=].resource.note[0].text = "Test paracetamol DC 2 (à la demande)"
* entry[=].resource.medicationReference.reference = "#med-DC-2"
* entry[=].resource.subject.reference = "#Patient-DC-2"
* entry[=].resource.encounter.identifier.value = "70101274"
* entry[=].resource.encounter.identifier.system = "https://somehospital.fr/Sejour"
* entry[=].resource.supportingInformation[0].identifier.value = "2571"
* entry[=].resource.supportingInformation[=].identifier.system = "https://somehospital.fr/UF"
// Je ne comprends pas comment on référence une extension, ça fait toujours une erreur à la compilation
//* entry[=].resource.supportingInformation[=].extension[UFRole].valueCode = #UFMED
* entry[=].resource.supportingInformation[+].reference = "#Obs-DC-2-1"
* entry[=].resource.supportingInformation[+].reference = "#Obs-DC-2-2"
* entry[=].resource.authoredOn = "2022-04-11T16:42:53+02:00"
* entry[=].resource.requester.reference = "#Practitioner-DC-2"
* entry[=].resource.groupIdentifier.value = "10723"
* entry[=].resource.groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* entry[=].resource.dosageInstruction[0].timing.repeat.boundsPeriod.start = "2022-04-12T06:00:00+02:00"
* entry[=].resource.dosageInstruction[=].timing.repeat.boundsPeriod.end = "2022-04-15T00:00:00+02:00"
* entry[=].resource.dosageInstruction[=].timing.repeat.frequencyMax = 1
* entry[=].resource.dosageInstruction[=].timing.repeat.period = 6
* entry[=].resource.dosageInstruction[=].timing.repeat.periodUnit = #h
* entry[=].resource.dosageInstruction[=].asNeededBoolean = true
* entry[=].resource.dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* entry[=].resource.dosageInstruction[=].doseAndRate[0].doseQuantity.value = 1000.0
* entry[=].resource.dosageInstruction[=].doseAndRate[=].doseQuantity.system = $unitsofmeasure
* entry[=].resource.dosageInstruction[=].doseAndRate[=].doseQuantity.code = #mg
* entry[=].resource.dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "mg"
* entry[=].resource.dosageInstruction[=].maxDosePerPeriod.numerator.value = 4
* entry[=].resource.dosageInstruction[=].maxDosePerPeriod.numerator.system = $$unitsofmeasure
* entry[=].resource.dosageInstruction[=].maxDosePerPeriod.numerator.code = #mg
* entry[=].resource.dosageInstruction[=].maxDosePerPeriod.numerator.unit = "mg"
* entry[=].resource.dosageInstruction[=].maxDosePerPeriod.denominator.value = 1
* entry[=].resource.dosageInstruction[=].maxDosePerPeriod.denominator.system = $unitsofmeasure
* entry[=].resource.dosageInstruction[=].maxDosePerPeriod.denominator.code = #d
