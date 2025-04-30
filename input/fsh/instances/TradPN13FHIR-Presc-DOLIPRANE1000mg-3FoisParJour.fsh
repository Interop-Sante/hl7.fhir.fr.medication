Instance: TradPN13FHIR-Presc-DOLIPRANE
InstanceOf: fr-prescription-bundle-for-example
// exemple de traduction de PN13-IS.4.0.Exemples_01.34.01 sans interpretation du code de fréquence
Usage: #example
* type = #searchset
* entry[0].resource = medication-TradPN13FHIR-Presc-DOLIPRANE
* entry[+].resource = medicationrequest-TradPN13FHIR-Presc-DOLIPRANE

Instance: medication-TradPN13FHIR-Presc-DOLIPRANE
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-TradPN13FHIR-Presc-DOLIPRANE"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $UCD#3400892169026 "DOLIPRANE 1000MG CPR EFFV"
* code.text = "DOLIPRANE 1 000 mg, cpr efferv"

Instance: medicationrequest-TradPN13FHIR-Presc-DOLIPRANE
InstanceOf: fr-inpatient-medicationrequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* identifier[0].value = "id1"
* identifier[=].system = "https://somehospital.fr/PrescrptionLine-ID"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: Doliprane cpr 3x1g/j x 3j"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationReference.reference = "#medication-TradPN13FHIR-Presc-DOLIPRANE"
* subject.identifier.value = "123456"
* subject.identifier.system = "https://somehospital.fr/IPP"
* encounter.identifier.value = "234567"
* encounter.identifier.system = "https://somehospital.fr/Sejour"
* supportingInformation[0].type = "Organization"
* supportingInformation[=].identifier.value = "2571"
* supportingInformation[=].identifier.system = "https://somehospital.fr/UF"
* supportingInformation[=].extension[UFRole].valueCode = #UFMED
* authoredOn = "2007-12-27T10:33:00+01:00"
* requester.identifier.value = "345678"
* requester.identifier.system = "https://somehospital.fr/EI"
* groupIdentifier.value = "IdentifiantAttribuePourLaTraductionEnFHIR"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2007-12-28T07:00:00+01:00"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2007-12-30T18:00:00+01:00"
* dosageInstruction[=].timing.code = https://CH-Biorel.fr/Frequence#3 "Trois fois par jour"
* dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* dosageInstruction[=].doseAndRate[0].doseQuantity.value = 1
* dosageInstruction[=].doseAndRate[=].doseQuantity.system = $EDQM
* dosageInstruction[=].doseAndRate[=].doseQuantity.code = #15036000
* dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "Comprimé"
