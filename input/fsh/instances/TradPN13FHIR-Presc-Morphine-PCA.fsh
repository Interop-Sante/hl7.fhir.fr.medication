Instance: TradPN13FHIR-Presc-Morphine-PCA
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "PCA Morphine 120 mg/24h Bolus 10 mg Période refractaire 2h -- À partir du 07/05/2025 à 17:30 jusqu'au 11/05/2025 à 17h30 - Traduction de PN13"
* type = #searchset
* entry[0].resource = patient-Trad-Presc-Morphine-PCA
* entry[+].resource = medicationrequest-Trad-Presc-Morphine-PCA

Instance: patient-Trad-Presc-Morphine-PCA
InstanceOf: Patient
Usage: #inline
* id = "patient-Trad-Presc-Morphine-PCA"
* meta.profile = $FrCorePatientINS
* extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
* extension[=].extension[0].url = "identityStatus"
* extension[=].extension[=].valueCoding.system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445"
* extension[=].extension[=].valueCoding.code = #VALI
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code"
* extension[=].valueAddress.extension[=].valueCoding.system = "https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune"
* extension[=].valueAddress.extension[=].valueCoding.code = #29134
* identifier[0].use = #official
* identifier[=].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[=].type.coding[=].code = #INS-NIR
* identifier[=].type.coding[=].display = "NIR définitif"
* identifier[=].system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier[=].value = "289062913400149"
* identifier[+].use = #usual
* identifier[=].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203"
* identifier[=].type.coding[=].code = #INTRN
* identifier[=].type.coding[=].display = "Identifiant interne"
* identifier[=].system = "urn:oid:1.2.250.1.507454354.43654.2346659"
* identifier[=].value = "6032486"
* name[0].use = #usual
* name[=].family = "ARASGAIN"
* name[+].use = #official
* name[=].extension[0].url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name"
* name[=].extension[=].valueString = "MARSALI MORAG MAIREAD"
* name[=].family = "CUIMEANACH"
* name[=].given = "MARSALI"
* gender = #female
* birthDate = "1989-01-02"

Instance: medicationrequest-Trad-Presc-Morphine-PCA
InstanceOf: fr-inpatient-medicationrequest
Usage: #inline
* id = "medicationrequest-Trad-Presc-Morphine-PCA"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* identifier.value = "202500507153500547"
* identifier.value = "https://somehospital.fr/Medication-ID"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $SMS#100000091372 "morphine"
* subject.reference = "#patient-Trad-Presc-Morphine-PCA"
* encounter.identifier.value = "765093464568"
* encounter.identifier.system = "https://somehospital.fr/Sejour"
* supportingInformation[0].type = "Organization"
* supportingInformation[=].identifier.value = "603"
* supportingInformation[=].identifier.system = "https://somehospital.fr/UF"
* supportingInformation[=].extension[UFRole].valueCode = #UFHEB
* supportingInformation[+].type = "Organization"
* supportingInformation[=].identifier.value = "506"
* supportingInformation[=].identifier.system = "https://somehospital.fr/UF"
* supportingInformation[=].extension[UFRole].valueCode = #UFMED
* authoredOn = "2025-05-07T15:35:00+02:00"
* requester.identifier.value = "899999999999"
* requester.identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* groupIdentifier.value = "10543745"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* note[0].text = "Prescription textuelle: Par voie intraveineuse : PCA Morphine 120 mg/24h Bolus 10 mg Période refractaire 2h -- À partir du 07/05/2025 à 17:30 jusqu'au 11/05/2025 à 17h30"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2025-05-07T17:30:00+02:00"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2025-05-11T17:30:00+02:00"
* dosageInstruction[=].route = $EDQM#20045000 "Voie intraveineuse"
* dosageInstruction[=].doseAndRate.rateRatio.numerator.value = 5
* dosageInstruction[=].doseAndRate.rateRatio.numerator.unit = "mg"
* dosageInstruction[=].doseAndRate.rateRatio.numerator.system = $unitsofmeasure
* dosageInstruction[=].doseAndRate.rateRatio.numerator.code = #mg
* dosageInstruction[=].doseAndRate.rateRatio.denominator.value = 1
* dosageInstruction[=].doseAndRate.rateRatio.denominator.unit = "h"
* dosageInstruction[=].doseAndRate.rateRatio.denominator.system = $unitsofmeasure
* dosageInstruction[=].doseAndRate.rateRatio.denominator.code = #h
* dosageInstruction[+].timing.repeat.boundsPeriod.start = "2025-05-07T17:30:00+02:00"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2025-05-11T17:30:00+02:00"
* dosageInstruction[=].timing.repeat.frequencyMax = 1
* dosageInstruction[=].timing.repeat.period = 2
* dosageInstruction[=].timing.repeat.periodUnit = #h
* dosageInstruction[=].asNeededCodeableConcept.text = "bolus"
* dosageInstruction[=].route = $EDQM#20045000 "Voie intraveineuse"
* dosageInstruction[=].doseAndRate.doseQuantity.value = 10
* dosageInstruction[=].doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction[=].doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction[=].doseAndRate.doseQuantity.code = #mg
