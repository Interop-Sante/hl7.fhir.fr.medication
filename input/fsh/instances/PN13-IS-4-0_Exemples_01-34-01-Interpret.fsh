Instance: Bundle-Exemple_01-34-01-Interpret
InstanceOf: fr-prescription-bundle-for-example
// exemple de traduction de PN13-IS.4.0.Exemples_01.34.01 avec interprétation du code de fréquence
Usage: #example
* type = #searchset
* entry[0].resource.id = "med-01-34-01"
// Pas sûr de comment on référence un profil qui est créé dans le cadre de l'IG
* entry[=].resource.meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* entry[=].resource.code = $UCD#3400892169026 "DOLIPRANE 1000MG CPR EFFV"
* entry[=].resource.code.text = "DOLIPRANE 1 000 mg, cpr efferv"
* entry[+].resource.resourceType = "MedicationRequest"
* entry[=].resource.text.status = #additional
// Pas sûr de comment on fait du XHTML
// * entry[=].resource.text.div = "<div> Doliprane cpr 3x1g/j x 3j </div>"
* entry[=].resource.meta.profile[0] =  "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest3"
* entry[=].resource.identifier[0].value = "id1"
* entry[=].resource.identifier[=].system = "https://somehospital.fr/PrescrptionLine-ID"
* entry[=].resource.status = #active
* entry[=].resource.intent = #order
* entry[=].resource.priority = #routine
* entry[=].resource.medicationReference.reference = "#med-01-34-01"
* entry[=].resource.subject.identifier.value = "123456"
* entry[=].resource.subject.identifier.system = "https://somehospital.fr/IPP"
* entry[=].resource.encounter.identifier.value = "234567"
* entry[=].resource.encounter.identifier.system = "https://somehospital.fr/Sejour"
* entry[=].resource.supportingInformation[0].type = "Organization"
* entry[=].resource.supportingInformation[=].identifier.value = "2571"
* entry[=].resource.supportingInformation[=].identifier.system = "https://somehospital.fr/UF"
// Je ne comprends pas comment on référence une extension, ça fait toujours une erreur à la compilation
//* entry[=].resource.supportingInformation[=].extension[UFRole].valueCode = #UFMED
* entry[=].resource.authoredOn = "2007-12-27T10:33:00+01:00"
* entry[=].resource.requester.identifier.value = "345678"
* entry[=].resource.requester.identifier.system = "https://somehospital.fr/EI"
* entry[=].resource.groupIdentifier.value = "IdentifiantAttribuePourLaTraductionEnFHIR"
* entry[=].resource.groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* entry[=].resource.dosageInstruction[0].timing.repeat.boundsPeriod.start = "2007-12-28T07:00:00+01:00"
* entry[=].resource.dosageInstruction[=].timing.repeat.boundsPeriod.end = "2007-12-30T18:00:00+01:00"
* entry[=].resource.dosageInstruction[=].timing.repeat.frequency = 3
* entry[=].resource.dosageInstruction[=].timing.repeat.period = 1
* entry[=].resource.dosageInstruction[=].timing.repeat.periodUnit = #d
* entry[=].resource.dosageInstruction[=].route = $EDQM#20053000 "Voie orale"
* entry[=].resource.dosageInstruction[=].doseAndRate[0].doseQuantity.value = 1
* entry[=].resource.dosageInstruction[=].doseAndRate[=].doseQuantity.system = $EDQM
* entry[=].resource.dosageInstruction[=].doseAndRate[=].doseQuantity.code = #10219000
* entry[=].resource.dosageInstruction[=].doseAndRate[=].doseQuantity.unit = "Comprimé"
