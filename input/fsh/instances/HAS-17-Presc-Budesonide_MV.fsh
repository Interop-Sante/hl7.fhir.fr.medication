Instance: HAS-17-Presc-Budesonide-MV
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-HAS-17-Presc-BudesonideComp-MV
* entry[+].resource = medication-HAS-17-Presc-Budesonide-MV
* entry[+].resource = medicationrequest-HAS-17-Presc-Budesonide-MV

Instance: medication-HAS-17-Presc-Budesonide-MV
InstanceOf: fr-medication-noncompound
Usage: #inline
* id = "medication-HAS-17-Presc-Budesonide-MV"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-noncompound"
* code = $SMS#100000091309 "budésonide"
* form = $EDQM#11102000 "Suspension pour inhalation par nébuliseur"
* ingredient.itemCodeableConcept = $SMS#100000091309 "budésonide"
* ingredient.strength.numerator = 1 $unitsofmeasure#mg "mg"
* ingredient.strength.denominator = 2 $unitsofmeasure#mL "ml"

Instance: medication-HAS-17-Presc-BudesonideComp-MV
InstanceOf: fr-medication-compound
Usage: #inline
* id = "medication-HAS-17-Presc-BudesonideComp-MV"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-compound"
* code.text = "3 mL Eau Pour Preparation Injectable + 1 récipient unidose ( soit 2 mL) de BUDESONIDE  1mg/2mL) suspension pour inhalation par nébuliseur"
* ingredient[0].itemCodeableConcept = $SMS#100000078023 "eau pour préparations injectables"
* ingredient[=].strength.numerator = 3 $unitsofmeasure#mL "ml"
* ingredient[+].itemReference.reference = "#medication-HAS-17-Presc-Budesonide-MV"
* ingredient[=].strength.numerator = 2 $unitsofmeasure#mL "ml"

Instance: medicationrequest-HAS-17-Presc-Budesonide-MV
InstanceOf: FrPatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: Préparation pour nébuliseur ultrasonique: 3 mL Eau Pour Preparation Injectable + 1 récipient unidose ( soit 2 mL) de BUDESONIDE  1mg/2mL) suspension pour inhalation par nébuliseur. A administrer en 20 min à 8h, 14h, 18h, et 22h à partir du 16/03/2023"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationReference.reference = "#medication-HAS-17-Presc-BudesonideComp-MV"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2023-03-16"
* dosageInstruction.timing.repeat.duration = 20
* dosageInstruction.timing.repeat.durationUnit = #min
* dosageInstruction.timing.repeat.timeOfDay[0] = "08:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "14:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "22:00:00"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "inhalateur"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15026000