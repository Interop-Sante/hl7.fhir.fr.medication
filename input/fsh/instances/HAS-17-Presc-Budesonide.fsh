Instance: HAS-17-Presc-Budesonide
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medication-HAS-17-Presc-BudesonideComp
* entry[+].resource = medicationrequest-HAS-17-Presc-Budesonide

Instance: medication-HAS-17-Presc-BudesonideComp
InstanceOf: fr-medication-compound
Usage: #inline
* id = "medication-HAS-17-Presc-BudesonideComp"
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-compound"
* code.text = "3 mL Eau Pour Preparation Injectable + 1 récipient unidose ( soit 2 mL) de BUDESONIDE  1mg/2mL) suspension pour inhalation par nébuliseur"
* ingredient[0].itemCodeableConcept = $SMS#100000078023 "eau pour préparations injectables"
* ingredient[=].strength.numerator = 3 $unitsofmeasure#mL "ml"
* ingredient[+].itemCodeableConcept = $Medicabase#MV00004231 "Budésonide 1 mg/2 ml (0,5 mg/ml) suspension pour inhalation par nébuliseur en récipient unidose"
* ingredient[=].strength.numerator = 1 $unitsofmeasure#[recipient_unidose] "récipient unidose"

Instance: medicationrequest-HAS-17-Presc-Budesonide
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: Préparation pour nébuliseur ultrasonique: 3 mL Eau Pour Preparation Injectable + 1 récipient unidose ( soit 2 mL) de BUDESONIDE  1mg/2mL) suspension pour inhalation par nébuliseur. A administrer en 20 min à 8h, 14h, 18h, et 22h à partir du 16/03/2023"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationReference.reference = "#medication-HAS-17-Presc-BudesonideComp"
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