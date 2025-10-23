Instance: HAS-18-Presc-Budesonide-MV
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "BUDESONIDE  1mg/2mL, suspension pour inhalation par nébuliseur en récipient unidose 
1 récipient unidose de 1 mg 4 fois par jour selon les modalités d'administration  suivantes : 

Préparation pour nébuliseur ultrasonique : 
     - 3 mL Eau Pour Préparation Injectable 
     - 1 récipient unidose (soit 2 mL) de BUDESONIDE  1mg/2mL) suspension pour inhalation par nébuliseur

A administrer en 20 min à 8h, 14h, 18h, et 22h  jusqu'au 26/03/2023"
* type = #searchset
* entry.resource = medicationrequest-HAS-18-Presc-Budesonide

Instance: medicationrequest-HAS-18-Presc-Budesonide
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "A administrer en 20 min à 8h, 14h, 18h, et 22h"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: BUDESONIDE  1mg/2mL, suspension pour inhalation par nébuliseur en récipient unidose 
1 récipient unidose de 1 mg 4 fois par jour selon les modalités d'administration  suivantes : 

Préparation pour nébuliseur ultrasonique : 
     - 3 mL Eau Pour Préparation Injectable 
     - 1 récipient unidose (soit 2 mL) de BUDESONIDE  1mg/2mL) suspension pour inhalation par nébuliseur

A administrer en 20 min à 8h, 14h, 18h, et 22h  jusqu'au 26/03/2023"
* medicationCodeableConcept = $Medicabase#MV00004231 "Budésonide 1 mg/2 ml (0,5 mg/ml) suspension pour inhalation par nébuliseur en récipient unidose"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2023-03-26"
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