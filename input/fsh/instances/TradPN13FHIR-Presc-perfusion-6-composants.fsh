Instance: TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: fr-prescription-bundle-for-example
// exemple de traduction de Compound-6166 
Usage: #example
Description: "Perf  6composants en UCD en continu sur 12h00 par jour - Traduction de PN13"
* type = #searchset
* entry[0].resource = patient-TradPN13FHIR-Presc-perfusion-6-composants
* entry[+].resource = practitioner-TradPN13FHIR-Presc-perfusion-6-composants
* entry[+].resource = medication-1-TradPN13FHIR-Presc-perfusion-6-composants
* entry[+].resource = medication-2-TradPN13FHIR-Presc-perfusion-6-composants
* entry[+].resource = medication-3-TradPN13FHIR-Presc-perfusion-6-composants
* entry[+].resource = medication-4-TradPN13FHIR-Presc-perfusion-6-composants
* entry[+].resource = medication-5-TradPN13FHIR-Presc-perfusion-6-composants
* entry[+].resource = medication-6-TradPN13FHIR-Presc-perfusion-6-composants
* entry[+].resource = medication-C-TradPN13FHIR-Presc-perfusion-6-composants
* entry[+].resource = observation-1-TradPN13FHIR-Presc-perfusion-6-composants
* entry[+].resource = observation-2-TradPN13FHIR-Presc-perfusion-6-composants
* entry[+].resource = observation-3-TradPN13FHIR-Presc-perfusion-6-composants
* entry[+].resource = medicationrequest-TradPN13FHIR-Presc-perfusion-6-composants

Instance: patient-TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: Patient
Usage: #inline
* id = "patient-TradPN13FHIR-Presc-perfusion-6-composants"
* meta.profile = $FrCorePatient
* identifier[0].use = #usual
* identifier[=].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[=].type.coding[=].code = #INTRN
* identifier[=].type.coding[=].display = "Identifiant interne"
* identifier[=].system = "https://somehospital.fr/IPP"
* identifier[=].value = "1234567891235000001820"
* name[0].use = #usual
* name[=].family = "HENRY"
* name[+].use = #official
* name[=].given = "Jean"
* gender = #male
* birthDate = "2000-01-01"

Instance: practitioner-TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: Practitioner
Usage: #inline
* id = "practitioner-TradPN13FHIR-Presc-perfusion-6-composants"
* meta.profile = $FrCorePractitioner
* identifier[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[=].type.coding[=].code = #EI
* identifier[=].system = "https://somehospital.fr/EI"
* identifier[=].value = "12345678910"
* name[0].use = #usual
* name[=].family = "DUPONT"
* name[=].given = "Charles"
* name[+].use = #official
* name[=].given = "Charles"

Instance: medication-1-TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-1-TradPN13FHIR-Presc-perfusion-6-composants"
* meta.profile = Canonical(fr-medication-noncompound)
* code = $UCD#3400894061175 "NUTRYELT PERF AMP10ML"
* code.text = "NUTRYELT, sol à diluer pr perf, amp 10 mL"
* amount.numerator.value = 1
* amount.numerator.system = $EDQM
* amount.numerator.code = #15002000
* amount.numerator.unit = "Ampoule"
* amount.denominator.value = 1

Instance: medication-2-TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-2-TradPN13FHIR-Presc-perfusion-6-composants"
* meta.profile = Canonical(fr-medication-noncompound)
* code = $UCD#3400892834719 "POTASSIUM 10% CPF AB10ML"
* code.text = "POTASSIUM CHLORURE 1 g (10% Labo COOPER), sol à diluer pr perf, amp 10 mL"
* amount.numerator.value = 1
* amount.numerator.system = $EDQM
* amount.numerator.code = #15002000
* amount.numerator.unit = "Ampoule"
* amount.denominator.value = 1

Instance: medication-3-TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-3-TradPN13FHIR-Presc-perfusion-6-composants"
* meta.profile = Canonical(fr-medication-noncompound)
* code = $UCD#3400892614236 "MAGNESIUM C.10% LAV AB10ML"
* code.text = "MAGNESIUM CHLORURE 1 g (Labo LAVOISIER), sol inj, IV, amp 10 mL"
* amount.numerator.value = 1
* amount.numerator.system = $EDQM
* amount.numerator.code = #15002000
* amount.numerator.unit = "Ampoule"
* amount.denominator.value = 1

Instance: medication-4-TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-4-TradPN13FHIR-Presc-perfusion-6-composants"
* meta.profile = Canonical(fr-medication-noncompound)
* code = $UCD#3400893149416 "CALCIUM LEV.ZEN 25MG/2,5ML FL"
* code.text = "LEVOFOLINATE DE CALCIUM 25 mg (Labo ZENTIVA), sol inj, IM IV, flac 2.5 mL"
* amount.numerator.value = 1
* amount.numerator.system = $EDQM
* amount.numerator.code = #15060000
* amount.numerator.unit = "Flacon"
* amount.denominator.value = 1

Instance: medication-5-TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-5-TradPN13FHIR-Presc-perfusion-6-composants"
* meta.profile = Canonical(fr-medication-noncompound)
* code = $UCD#3400891343281 "CERNEVIT INJ FL"
* code.text = "CERNEVIT, pdr pr sol inj ou pr perf"
* amount.numerator.value = 1
* amount.numerator.system = $EDQM
* amount.numerator.code = #15060000
* amount.numerator.unit = "Flacon"
* amount.denominator.value = 1

Instance: medication-6-TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-6-TradPN13FHIR-Presc-perfusion-6-composants"
* meta.profile = Canonical(fr-medication-noncompound)
* code = $UCD#3400891780475 "SODIUM 0,9% BBM INJ P.E500ML"
* code.text = "SODIUM CHLORURE 0.9% (Labo B BRAUN), sol pr perf, poche 500 mL (ECOFLAC)"
* amount.numerator.value = 1
* amount.numerator.system = $EDQM
* amount.numerator.code = #15005000
* amount.numerator.unit = "Poche"
* amount.denominator.value = 1

Instance: medication-C-TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: fr-medication-compound
Usage: #inline
* id = "medication-C-prescr-perf-6-exemple"
* meta.profile = Canonical(fr-medication-compound)
* code.text = "NUTRYELT, sol à diluer pr perf, amp 10 mL + POTASSIUM CHLORURE 1 g (10% Labo COOPER), sol à diluer pr perf, amp 10 mL + MAGNESIUM CHLORURE 1 g (Labo LAVOISIER), sol inj, IV, amp 10 mL + LEVOFOLINATE DE CALCIUM 25 mg (Labo ZENTIVA), sol inj, IM IV, flac 2.5 mL + CERNEVIT, pdr pr sol inj ou pr perf + SODIUM CHLORURE 0.9% (Labo B BRAUN), sol pr perf, poche 500 mL (ECOFLAC)"
* ingredient[0].itemReference.reference = "#medication-1-TradPN13FHIR-Presc-perfusion-6-composants"
* ingredient[+].itemReference.reference = "#medication-2-TradPN13FHIR-Presc-perfusion-6-composants"
* ingredient[+].itemReference.reference = "#medication-3-TradPN13FHIR-Presc-perfusion-6-composants"
* ingredient[+].itemReference.reference = "#medication-4-TradPN13FHIR-Presc-perfusion-6-composants"
* ingredient[+].itemReference.reference = "#medication-5-TradPN13FHIR-Presc-perfusion-6-composants"
* ingredient[+].extension[IsVehicle].valueBoolean = true
* ingredient[=].itemReference.reference = "#medication-6-TradPN13FHIR-Presc-perfusion-6-composants"


Instance:  observation-1-TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: Observation
Usage: #inline
* id = "observation-1-TradPN13FHIR-Presc-perfusion-6-composants"
* meta.profile = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-height"
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code.coding.code = #8302-2
* code.coding.system = "http://loinc.org"
* subject.reference = "#patient-TradPN13FHIR-Presc-perfusion-6-composants"
* effectiveDateTime = "2023-05-03T11:30:00+02:00"
* valueQuantity.value = 181.0
* valueQuantity.unit = "cm"
* valueQuantity.system = $unitsofmeasure
* valueQuantity.code = #cm

Instance: observation-2-TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: Observation
Usage: #inline
* id = "observation-2-TradPN13FHIR-Presc-perfusion-6-composants"
* meta.profile = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-observation-body-weight"
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code.coding.code = #29463-7
* code.coding.system = "http://loinc.org"
* subject.reference = "#patient-TradPN13FHIR-Presc-perfusion-6-composants"
* effectiveDateTime = "2023-05-03T11:30:00+02:00"
* valueQuantity.value = 79
* valueQuantity.unit = "kg"
* valueQuantity.system = $unitsofmeasure
* valueQuantity.code = #kg

Instance: observation-3-TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: Observation
Usage: #inline
* id = "observation-3-TradPN13FHIR-Presc-perfusion-6-composants"
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code.coding.code = #33558-8
* code.coding.system = "http://loinc.org"
* subject.reference = "#patient-TradPN13FHIR-Presc-perfusion-6-composants"
* effectiveDateTime = "2023-05-03T11:30:00+02:00"
* valueQuantity.value = 0
* valueQuantity.unit = "µmol/l"
* valueQuantity.system = $unitsofmeasure
* valueQuantity.code = #umol/L

Instance: medicationrequest-TradPN13FHIR-Presc-perfusion-6-composants
InstanceOf: fr-inpatient-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* identifier[0].value = "6166"
* identifier[=].system = "https://somehospital.fr/PrescrptionLine-ID"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "**Prescription textuelle:** 1 préparation en continu sur 12h00 par jour"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationReference.reference = "#medication-C-TradPN13FHIR-Presc-perfusion-6-composants"
* subject.reference = "#patient-TradPN13FHIR-Presc-perfusion-6-composants"
* encounter.identifier.value = "3"
* encounter.identifier.system = "https://somehospital.fr/Sejour"
* supportingInformation[0].reference = "#observation-1-TradPN13FHIR-Presc-perfusion-6-composants"
* supportingInformation[+].reference = "#observation-2-TradPN13FHIR-Presc-perfusion-6-composants"
* supportingInformation[+].reference = "#observation-3-TradPN13FHIR-Presc-perfusion-6-composants"
* authoredOn = "2023-05-03T11:30:00+02:00"
* requester.reference = "#practitioner-TradPN13FHIR-Presc-perfusion-6-composants"
* groupIdentifier.value = "IdentifiantAttribuéPourLaTraductionEnFHIR"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2023-05-03T10:00:00+02:00"
* dosageInstruction[=].timing.repeat.duration = 720
* dosageInstruction[=].timing.repeat.durationUnit = #min
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 12
* dosageInstruction[=].timing.repeat.periodUnit = #h
* dosageInstruction[=].timing.repeat.timeOfDay = "10:00:00"
* dosageInstruction[=].route = $EDQM#20045000 "Voie intraveineuse"
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "Poche"
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = $EDQM
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #15005000
