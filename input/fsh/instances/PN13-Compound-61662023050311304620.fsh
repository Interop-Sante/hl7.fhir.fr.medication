Instance: bundle-Compound-61662023050311304620
InstanceOf: fr-prescription-bundle-for-example
// exemple de traduction de Compound-61662023050311304620 
Usage: #example
* type = #searchset
* entry[0].resource.resourceType = "Patient"
* entry[=].resource.id = "Patient-Compound-61662023050311304620"
* entry[=].resource.meta.profile[0] = $FrCorePatient
* entry[=].resource.identifier[0].use = #usual
* entry[=].resource.identifier[=].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* entry[=].resource.identifier[=].type.coding[=].code = #PI
* entry[=].resource.identifier[=].type.coding[=].display = "Patient internal identifier"
* entry[=].resource.identifier[=].system = "https://somehospital.fr/IPP"
* entry[=].resource.identifier[=].value = "1234567891235000001820"
* entry[=].resource.name[0].use = #usual
* entry[=].resource.name[=].family = "HENRY"
* entry[=].resource.name[+].use = #official
* entry[=].resource.name[=].given = "Jean"
* entry[=].resource.gender = #male
* entry[=].resource.birthDate = "2000-01-01"
* entry[+].resource.resourceType = "Practitioner"
* entry[=].resource.id = "Practitioner-Compound-61662023050311304620"
* entry[=].resource.meta.profile[0] = $FrCorePractitioner
* entry[=].resource.identifier[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* entry[=].resource.identifier[=].type.coding[=].code = #EI
* entry[=].resource.identifier[=].system = "https://somehospital.fr/EI"
* entry[=].resource.identifier[=].value = "12345678910"
* entry[=].resource.name[0].use = #usual
* entry[=].resource.name[=].family = "DUPONT"
* entry[=].resource.name[=].given = "Charles"
* entry[=].resource.name[+].use = #official
* entry[=].resource.name[=].given = "Charles"
* entry[+].resource.resourceType = "Medication"
* entry[=].resource.id = "med-Compound-61662023050311304620-C"
// Pas sûr de comment on référence un profil qui est créé dans le cadre de l'IG
* entry[=].resource.meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-compound2"
// l'élément text est obligatoire selon le profil, mais la traduction automatique est compliquée
* entry[=].resource.code.text = "NUTRYELT, sol à diluer pr perf, amp 10 mL + POTASSIUM CHLORURE 1 g (10% Labo COOPER), sol à diluer pr perf, amp 10 mL + MAGNESIUM CHLORURE 1 g (Labo LAVOISIER), sol inj, IV, amp 10 mL + LEVOFOLINATE DE CALCIUM 25 mg (Labo ZENTIVA), sol inj, IM IV, flac 2.5 mL + CERNEVIT, pdr pr sol inj ou pr perf + SODIUM CHLORURE 0.9% (Labo B BRAUN), sol pr perf, poche 500 mL (ECOFLAC)"
* entry[=].resource.ingredient[0].itemReference = "#med-Compound-61662023050311304620-1"
* entry[=].resource.ingredient[+].itemReference = "#med-Compound-61662023050311304620-2"
* entry[=].resource.ingredient[+].itemReference = "#med-Compound-61662023050311304620-3"
* entry[=].resource.ingredient[+].itemReference = "#med-Compound-61662023050311304620-4"
* entry[=].resource.ingredient[+].itemReference = "#med-Compound-61662023050311304620-5"
* entry[=].resource.ingredient[+].itemReference = "#med-Compound-61662023050311304620-6"
* entry[+].resource.resourceType = "Medication"
* entry[=].resource.id = "med-Compound-61662023050311304620-1"
* entry[=].resource.meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* entry[=].resource.code = $UCD#3400894061175 "NUTRYELT PERF AMP10ML"
* entry[=].resource.code.text = "NUTRYELT, sol à diluer pr perf, amp 10 mL"
* entry[=].resource.amount.numerator.value = 10
* entry[=].resource.amount.numerator.system = $EDQM
* entry[=].resource.amount.numerator.code = #15002000
* entry[+].resource.resourceType = "Medication"
* entry[=].resource.id = "med-Compound-61662023050311304620-2"
* entry[=].resource.meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* entry[=].resource.code = $UCD#3400892834719 "POTASSIUM 10% CPF AB10ML"
* entry[=].resource.code.text = "POTASSIUM CHLORURE 1 g (10% Labo COOPER), sol à diluer pr perf, amp 10 mL"
* entry[=].resource.amount.numerator.value = 2
* entry[=].resource.amount.numerator.system = $EDQM
* entry[=].resource.amount.numerator.code = #15002000
* entry[+].resource.resourceType = "Medication"
* entry[=].resource.id = "med-Compound-61662023050311304620-3"
* entry[=].resource.meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* entry[=].resource.code = $UCD#3400892614236 "MAGNESIUM C.10% LAV AB10ML"
* entry[=].resource.code.text = "MAGNESIUM CHLORURE 1 g (Labo LAVOISIER), sol inj, IV, amp 10 mL"
* entry[=].resource.amount.numerator.value = 1
* entry[=].resource.amount.numerator.system = $EDQM
* entry[=].resource.amount.numerator.code = #15002000
* entry[+].resource.resourceType = "Medication"
* entry[=].resource.id = "med-Compound-61662023050311304620-4"
* entry[=].resource.meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* entry[=].resource.code = $UCD#3400893149416 "CALCIUM LEV.ZEN 25MG/2,5ML FL"
* entry[=].resource.code.text = "LEVOFOLINATE DE CALCIUM 25 mg (Labo ZENTIVA), sol inj, IM IV, flac 2.5 mL"
* entry[=].resource.amount.numerator.value = 25
* entry[=].resource.amount.numerator.system = $EDQM
* entry[=].resource.amount.numerator.code = #15060000
* entry[+].resource.resourceType = "Medication"
* entry[=].resource.id = "med-Compound-61662023050311304620-5"
* entry[=].resource.meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* entry[=].resource.code = $UCD#3400891343281 "CERNEVIT INJ FL"
* entry[=].resource.code.text = "CERNEVIT, pdr pr sol inj ou pr perf"
* entry[=].resource.amount.numerator.value = 1
* entry[=].resource.amount.numerator.system = $EDQM
* entry[=].resource.amount.numerator.code = #15060000
* entry[+].resource.resourceType = "Medication"
* entry[=].resource.id = "med-Compound-61662023050311304620-6"
* entry[=].resource.meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* entry[=].resource.code = $UCD#3400891780475 "SODIUM 0,9% BBM INJ P.E500ML"
* entry[=].resource.code.text = "SODIUM CHLORURE 0.9% (Labo B BRAUN), sol pr perf, poche 500 mL (ECOFLAC)"
* entry[=].resource.amount.numerator.value = 1
* entry[=].resource.amount.numerator.system = $EDQM
* entry[=].resource.amount.numerator.code = #15005000
* entry[+].resource.resourceType = "Observation"
* entry[=].resource.id = "Obs-Compound-61662023050311304620-1"
* entry[=].resource.meta.profile[0] = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-height"
* entry[=].resource.status = #final
* entry[=].resource.category.coding.code = #vital-signs
* entry[=].resource.category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* entry[=].resource.code.coding.code = #8302-2
* entry[=].resource.code.coding.system = "http://loinc.org"
* entry[=].resource.subject.reference = "#Patient-Compound-61662023050311304620"
* entry[=].resource.effectiveDateTime = "2023-05-03T11:30:00+02:00"
* entry[=].resource.valueQuantity.value = 181.0
* entry[=].resource.valueQuantity.unit = "cm"
* entry[=].resource.valueQuantity.system = $unitsofmeasure
* entry[=].resource.valueQuantity.code = #cm
* entry[+].resource.resourceType = "Observation"
* entry[=].resource.id = "Obs-Compound-61662023050311304620-2"
* entry[=].resource.meta.profile[0] = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-weight"
* entry[=].resource.status = #final
* entry[=].resource.category.coding.code = #vital-signs
* entry[=].resource.category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* entry[=].resource.code.coding.code = #29463-7
* entry[=].resource.code.coding.system = "http://loinc.org"
* entry[=].resource.subject.reference = "#Patient-Compound-61662023050311304620"
* entry[=].resource.effectiveDateTime = "2023-05-03T11:30:00+02:00"
* entry[=].resource.valueQuantity.value = 79
* entry[=].resource.valueQuantity.unit = "kg"
* entry[=].resource.valueQuantity.system = $unitsofmeasure
* entry[=].resource.valueQuantity.code = #kg
* entry[+].resource.resourceType = "Observation"
* entry[=].resource.id = "Obs-Compound-61662023050311304620-3"
* entry[=].resource.status = #final
* entry[=].resource.category.coding.code = #vital-signs
* entry[=].resource.category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* entry[=].resource.code.coding.code = #33558-8
* entry[=].resource.code.coding.system = "http://loinc.org"
* entry[=].resource.subject.reference = "#Patient-Compound-61662023050311304620"
* entry[=].resource.effectiveDateTime = "2023-05-03T11:30:00+02:00"
* entry[=].resource.valueQuantity.value = 0
* entry[=].resource.valueQuantity.unit = "µmol/l"
* entry[=].resource.valueQuantity.system = $unitsofmeasure
* entry[=].resource.valueQuantity.code = #umol/L
* entry[+].resource.resourceType = "MedicationRequest"
* entry[=].resource.text.status = #additional
// Pas sûr de comment on fait du XHTML
// * entry[=].resource.text.div = "<div> 1 préparation en continu sur 12h00 par jour </div>"
* entry[=].resource.meta.profile[0] =  "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest3"
* entry[=].resource.identifier[0].value = "6166"
* entry[=].resource.identifier[=].system = "https://somehospital.fr/PrescrptionLine-ID"
* entry[=].resource.status = #active
* entry[=].resource.intent = #order
* entry[=].resource.priority = #routine
* entry[=].resource.medicationReference.reference = "#med-med-Compound-61662023050311304620-C"
* entry[=].resource.subject.reference = "#Patient-Compound-61662023050311304620"
* entry[=].resource.encounter.identifier.value = "3"
* entry[=].resource.encounter.identifier.system = "https://somehospital.fr/Sejour"
* entry[=].resource.supportingInformation[0].reference = "#Obs-Compound-61662023050311304620-1"
* entry[=].resource.supportingInformation[+].reference = "#Obs-Compound-61662023050311304620-2"
* entry[=].resource.supportingInformation[+].reference = "#Obs-Compound-61662023050311304620-3"
* entry[=].resource.authoredOn = "2023-05-03T11:30:00+02:00"
* entry[=].resource.requester.reference = "#Practitioner-Compound-61662023050311304620"
* entry[=].resource.groupIdentifier.value = "IdentifiantAttribuéPourLaTraductionEnFHIR"
* entry[=].resource.groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* entry[=].resource.dosageInstruction[0].timing.repeat.boundsPeriod.start = "2023-05-03T10:00:00+02:00"
* entry[=].resource.dosageInstruction[=].timing.repeat.duration = 720
* entry[=].resource.dosageInstruction[=].timing.repeat.durationUnit = #min
* entry[=].resource.dosageInstruction[=].timing.repeat.frequency = 1
* entry[=].resource.dosageInstruction[=].timing.repeat.period = 12
* entry[=].resource.dosageInstruction[=].timing.repeat.periodUnit = #h
* entry[=].resource.dosageInstruction[=].timing.repeat.timeOfDay = "10:00"
* entry[=].resource.dosageInstruction[=].route = $EDQM#20045000 "Voie intraveineuse"
* entry[=].resource.dosageInstruction[=].doseAndRate[0].doseQuantity.value = 1
* entry[=].resource.dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "dose"
