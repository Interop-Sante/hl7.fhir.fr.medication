Instance: HAS-L11-Presc-Paracetamol-Tramadol
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entre[0].resource = patient-HAS-L11-Presc-Paracetamol-Tramadol
* entry[+].resource = medicationrequest-HAS-L11-Presc-Paracetamol
* entry[+].resource = medicationrequest-HAS-L11-Presc-Tramadol
* entry[+].resource = requestgroup-HAS-L11-Presc-Paracetamol-Tramadol

Instance: patient-HAS-L11-Presc-Paracetamol-Tramadol
InstanceOf: Patient
Usage: #inline
* id = "patient-HAS-L11-Presc-Paracetamol-Tramadol"
* meta.profile[0] = $FrCorePatientINS
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

Instance: medicationrequest-HAS-L11-Presc-Paracetamol
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* id = "medicationrequest-HAS-L11-Presc-Paracetamol"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* identifier.value = "20250606144844569"
* identifier.value = "https://somehospital.fr/Medication-ID"
* status = #active
* intent = #order
* priority = #routine
* medicationCodeableConcept = $Medicabase#MV00000557 "PARACETAMOL 500 mg gélule"
* subject.reference = "#patient-HAS-L11-Presc-Paracetamol-Tramadol"
* encounter.identifier.value = "S2025060612345"
* encounter.identifier.system = "https://somehospital.fr/Sejour"
* supportingInformation[0].type = "Organization"
* supportingInformation[=].identifier.value = "603"
* supportingInformation[=].identifier.system = "https://somehospital.fr/UF"
* supportingInformation[=].extension[UFRole].valueCode = #UFHEB
* supportingInformation[+].type = "Organization"
* supportingInformation[=].identifier.value = "506"
* supportingInformation[=].identifier.system = "https://somehospital.fr/UF"
* supportingInformation[=].extension[UFRole].valueCode = #UFMED
* authoredOn = "2025-06-06T14:48:44+02:00"
* requester.identifier.value = "899999999999"
* requester.identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* groupIdentifier.value = "Presc-HAS-L11"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* note[0].text = "Prescription textuelle: Prescription textuelle: PARACETAMOL 500mg gélule - 2 gélules toutes les 6 h pendant 10 jours si douleurs"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-06-06T15:00:00+02:00"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-06-16T15:00:00+02:00"
* dosageInstruction.asNeededCodeableConcept = $sct#22253000 "douleur"
* dosageInstruction.asNeededCodeableConcept.text = "Si douleurs"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.doseAndRate.doseQuantity.value = 2
* dosageInstruction.doseAndRate.doseQuantity.unit = "gélule ou capsule molle"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15012000

Instance: medicationrequest-HAS-L11-Presc-Tramadol
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* id = "medicationrequest-HAS-L11-Presc-Tramadol"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest-exclusion"
* identifier.value = "20250606144844570"
* identifier.value = "https://somehospital.fr/Medication-ID"
* status = #active
* intent = #option
* priority = #routine
* medicationCodeableConcept = $Medicabase#MV00000705 "TRAMADOL 50 mg, cpr orodispersible"
* subject.reference = "#patient-HAS-L11-Presc-Paracetamol-Tramadol"
* encounter.identifier.value = "S2025060612345"
* encounter.identifier.system = "https://somehospital.fr/Sejour"
* supportingInformation[0].type = "Organization"
* supportingInformation[=].identifier.value = "603"
* supportingInformation[=].identifier.system = "https://somehospital.fr/UF"
* supportingInformation[=].extension[UFRole].valueCode = #UFHEB
* supportingInformation[+].type = "Organization"
* supportingInformation[=].identifier.value = "506"
* supportingInformation[=].identifier.system = "https://somehospital.fr/UF"
* supportingInformation[=].extension[UFRole].valueCode = #UFMED
* authoredOn = "2025-06-06T14:48:44+02:00"
* requester.identifier.value = "899999999999"
* requester.identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* groupIdentifier.value = "Presc-HAS-L11"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* note[0].text = "Prescription textuelle: TRAMADOL 50 mg, cpr orodispersible - 1 à  2 comprimés toutes les 8 h pendant 10 jours si paracétamol insuffisant. STOP SI NAUSEES"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-06-06T15:00:00+02:00"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-06-16T15:00:00+02:00"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 8
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"
* dosageInstruction.maxDosePerAdministration = 2 $EDQM#15054000 "Comprimé"


Instance: requestgroup-HAS-L11-Presc-Paracetamol-Tramadol
InstanceOf: FrRequestGroupForPrescription
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-requestgroup-for-prescription"
* groupIdentifier.value = "Presc-HAS-L11"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* status = #active
* intent = #order
* priority = #routine
* subject.reference = "#patient-HAS-L11-Presc-Paracetamol-Tramadol"
* action[0].id = "A202506061"
* action[=].selectionBehavior = #exactly-one
* action[=].action[0].id = "20250606144844570"
* action[=].action[=].description = "si paracétamol insuffisant"
* action[=].action[=].resource.reference = "#medicationrequest-HAS-L11-Presc-Tramadol"
* action[=].action[+].id = "20250606144844569"
* action[=].action[=].resource.reference = "#medicationrequest-HAS-L11-Presc-Paracetamol"
* action[+].id = "A202506061"
* action[=].description = "STOP SI NAUSEES"
* action[=].condition.kind = #stop
* action[=].resource.reference = "#medicationrequest-HAS-L11-Presc-Tramadol"
