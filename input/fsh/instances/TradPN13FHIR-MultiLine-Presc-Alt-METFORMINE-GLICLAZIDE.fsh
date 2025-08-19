Instance: TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "METFORMINE® ou GLICLAZIDE® en cas d'intolérance digestive à la METFORMINE - Traduction de PN13"
* type = #searchset
* entry[0].resource = patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE
* entry[+].resource = medicationrequest-Trad-Presc-Alt-METFORMINE
* entry[+].resource = medicationrequest-Trad-Presc-Alt-GLICLAZIDE
* entry[+].resource = requestgroup-Trad-Presc-Alt-METFORMINE-GLICLAZIDE

Instance: patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE
InstanceOf: Patient
Usage: #inline
* id = "patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE"
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

Instance: medicationrequest-Trad-Presc-Alt-METFORMINE
InstanceOf: fr-inpatient-medicationrequest
Usage: #inline
* id = "medicationrequest-Trad-Presc-Alt-METFORMINE"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* identifier.value = "20250502144844569"
* identifier.value = "https://somehospital.fr/Medication-ID"
* status = #active
* intent = #option
* priority = #routine
* medicationCodeableConcept = $UCD#3400890020275 "METFORMINE ACC 1000MG CPR"
* subject.reference = "#patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE"
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
* authoredOn = "2025-05-02T14:48:44+02:00"
* requester.identifier.value = "899999999999"
* requester.identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* groupIdentifier.value = "10543744"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* note[0].text = "Prescription textuelle: Par voie orale : METFORMINE 1000MG 0,5 comprimé 2 fois par jour avec les repas -- À partir du 02/05/2025 à 19:00 jusqu'au 31/05/2025 à 19h00"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-05-02T19:00:00+02:00"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-05-31T18:59:59+02:00"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.when = #C
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 0.5
* dosageInstruction.doseAndRate.doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000

Instance: medicationrequest-Trad-Presc-Alt-GLICLAZIDE
InstanceOf: fr-inpatient-medicationrequest
Usage: #inline
* id = "medicationrequest-Trad-Presc-Alt-GLICLAZIDE"
* meta.profile = Canonical(fr-inpatient-medicationrequest)
* identifier.value = "20250502144844570"
* identifier.value = "https://somehospital.fr/Medication-ID"
* status = #active
* intent = #option
* priority = #routine
* medicationCodeableConcept = $UCD#3400893541364 "GLICLAZIDE ARW 30MG CPR LM"
* subject.reference = "#patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE"
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
* authoredOn = "2025-05-02T14:48:44+02:00"
* requester.identifier.value = "899999999999"
* requester.identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* groupIdentifier.value = "10543744"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* note[0].text = "Prescription textuelle: Par voie orale : GLICLAZIDE 30MG 3 comprimés au petit déjeuner -- À partir du 02/05/2025 à 19:00 jusqu'au 31/05/2025 à 19h00"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-05-02T19:00:00+02:00"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-05-31T18:59:59+02:00"
* dosageInstruction.timing.repeat.when = #CM
* dosageInstruction.route = $EDQM#20053000 "Voie orale"
* dosageInstruction.route.text = "Voie orale"
* dosageInstruction.doseAndRate.doseQuantity.value = 3
* dosageInstruction.doseAndRate.doseQuantity.unit = "Comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000

Instance: requestgroup-Trad-Presc-Alt-METFORMINE-GLICLAZIDE
InstanceOf: fr-requestgroup-for-prescription
Usage: #inline
* meta.profile = Canonical(fr-requestgroup-for-prescription)
* groupIdentifier.value = "10543744"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* status = #active
* intent = #order
* priority = #routine
* subject.reference = "#patient-Trad-Presc-Alt-METFORMINE-GLICLAZIDE"
* action[0].id = "20250502144844570"
* action[=].description = "En cas d'intolérance digestive au METFORMINE"
* action[=].relatedAction.extension[additionalRelationship].valueCode = #ALT
* action[=].relatedAction.actionId = "20250502144844569"
* action[=].relatedAction.relationship = #concurrent
* action[=].resource.reference = "#medicationrequest-Trad-Presc-Alt-GLICLAZIDE"
* action[+].id = "20250502144844569"
* action[=].description = "Sans intolérance digestive au METFORMINE"
* action[=].relatedAction.extension[additionalRelationship].valueCode = #ALT
* action[=].relatedAction.actionId = "20250502144844570"
* action[=].relatedAction.relationship = #concurrent
* action[=].resource.reference = "#medicationrequest-Trad-Presc-Alt-METFORMINE"
