Instance: HAS-23-1-Presc-Fluindione
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "FLUINDIONE 20 mg comprimé quadrisécable: 0,5 comprimé au jour 1, et puis 0,75 comprimé au jour 2. Recommencer le cycle de 2 jours, à répéter sur le mois."
* type = #searchset
* entry[0].resource = medicationrequest-HAS-23-1-Presc-Fluindione

Instance: medicationrequest-HAS-23-1-Presc-Fluindione
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: FLUINDIONE 20 mg comprimé quadrisécable: 0,5 comprimé au jour 1, et puis 0,75 comprimé au jour 2. Recommencer le cycle de 2 jours, à répéter sur le mois."
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00001070 "FLUINDIONE 20 mg comprimé quadrisécable"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
// la séquence n'est pas satisfaisante si sequence différente, risque de ne pas mettre en oeuvre le 0.75 dans le mois du cycle (attente de la fin de la première séquence), si séquence identique, risque de 1,25 tous les deux jours
* dosageInstruction[0].sequence = 1
* dosageInstruction[=].additionalInstruction.text = "le premier jour du cycle de 2 jours"
* dosageInstruction[=].timing.repeat.boundsDuration = 1 'mo' "mois"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 2
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].doseAndRate.doseQuantity = 0.5 $EDQM#15054000 "Comprimé"
* dosageInstruction[+].sequence = 1
* dosageInstruction[=].additionalInstruction.text = "le second jour du cycle de 2 jours"
* dosageInstruction[=].timing.repeat.boundsDuration = 1 'mo' "mois"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 2
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].doseAndRate.doseQuantity = 0.75 $EDQM#15054000 "Comprimé"
