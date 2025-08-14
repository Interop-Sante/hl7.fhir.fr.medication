Instance: HAS-17-Presc-Budesonide
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "Préparation pour nébuliseur ultrasonique: 1 récipient unidose (soit 2 mL) de BUDESONIDE  1mg/2mL) suspension pour inhalation par nébuliseur à compléter par de l’eau pour préparation injectable si nécessaire en fonction du modèle de nébuliseur. A administrer en 20 min à 8h, 14h, 18h, et 22h à partir du 16/03/2023"
* type = #searchset
* entry[0].resource = medicationrequest-HAS-17-Presc-Budesonide

Instance: medicationrequest-HAS-17-Presc-Budesonide
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* extension[renderedDosageInstruction].valueMarkdown = "A administrer en 20 min à 8h, 14h, 18h, et 22h à partir du 16/03/2023"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: Préparation pour nébuliseur ultrasonique: 1 récipient unidose (soit 2 mL) de BUDESONIDE  1mg/2mL) suspension pour inhalation par nébuliseur à compléter par de l’eau pour préparation injectable si nécessaire en fonction du modèle de nébuliseur. A administrer en 20 min à 8h, 14h, 18h, et 22h à partir du 16/03/2023"
* medicationCodeableConcept = $Medicabase#MV00004231 "Budésonide 1 mg/2 ml (0,5 mg/ml) suspension pour inhalation par nébuliseur en récipient unidose"
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
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #mg