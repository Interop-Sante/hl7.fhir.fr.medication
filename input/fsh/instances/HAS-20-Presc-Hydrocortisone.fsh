Instance: HAS-20-Presc-Hydrocortisone
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-20-Presc-Hydrocortisone

Instance: medicationrequest-HAS-20-Presc-Hydrocortisone
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: HYDROCORTISONE 10 mg comprimé: 20 mg à 8h et 10 mg à 12h"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00000089 "HYDROCORTISONE 10 mg comprimé"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction[0].timing.repeat.timeOfDay = "08:00:00"
* dosageInstruction[=].doseAndRate.doseQuantity = 20 $unitsofmeasure#mg "mg"
* dosageInstruction[+].timing.repeat.timeOfDay = "12:00:00"
* dosageInstruction[=].doseAndRate.doseQuantity = 10 $unitsofmeasure#mg "mg"