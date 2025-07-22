Instance: HAS-23-2-Presc-Amiodarone
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-23-2-Presc-Amiodarone

Instance: medicationrequest-HAS-23-2-Presc-Amiodarone
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: AMIODARONE 200 mg comprimé: 1 comprimé pendant 5 jours (du lundi au vendredi), et puis arrêt 2 jours (samedi, dimanche). Recommencer le cycle de 7 jours, à répéter sur le mois."
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00002542 "AMIODARONE 200 mg comprimé"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.duration = 1
* dosageInstruction.timing.repeat.durationUnit = #mo
* dosageInstruction.timing.repeat.frequency = 5
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #wk
* dosageInstruction.timing.repeat.dayOfWeek[0] = #mon
* dosageInstruction.timing.repeat.dayOfWeek[+] = #tue
* dosageInstruction.timing.repeat.dayOfWeek[+] = #wed
* dosageInstruction.timing.repeat.dayOfWeek[+] = #thu
* dosageInstruction.timing.repeat.dayOfWeek[+] = #fri
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"
