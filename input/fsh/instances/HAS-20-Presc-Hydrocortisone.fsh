Instance: HAS-20-Presc-Hydrocortisone
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "HYDROCORTISONE 10 mg comprimé: 20 mg à 8h et 10 mg à 12h"
* type = #searchset
* entry.resource = medicationrequest-HAS-20-Presc-Hydrocortisone

Instance: medicationrequest-HAS-20-Presc-Hydrocortisone
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "20 mg à 8h et 10 mg à 12h"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: HYDROCORTISONE 10 mg comprimé: 20 mg à 8h et 10 mg à 12h"
* medicationCodeableConcept = $Medicabase#MV00000089 "HYDROCORTISONE 10 mg comprimé"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction[0].timing.repeat.timeOfDay = "08:00:00"
* dosageInstruction[=].doseAndRate.doseQuantity = 20 $unitsofmeasure#mg "mg"
* dosageInstruction[+].timing.repeat.timeOfDay = "12:00:00"
* dosageInstruction[=].doseAndRate.doseQuantity = 10 $unitsofmeasure#mg "mg"