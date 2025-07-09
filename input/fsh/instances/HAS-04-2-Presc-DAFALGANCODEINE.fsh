Instance: HAS-4-2-Presc-DAFALGANCODEINE
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[+].resource = medicationrequest-HAS-4-2-Presc-DAFALGANCODEINE

Instance: medicationrequest-HAS-4-2-Presc-DAFALGANCODEINE
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest-exclusion"
* status = #active
* intent = #option
* priority = #routine
* medicationCodeableConcept = $UCD#3400891479287 "DAFALGAN CODEINE CPR"
* subject.reference = "Patient/14602"
* requester.identifier.value = "899999999999"
* requester.identifier.system = "urn:oid:1.2.250.1.71.4.2.1"
* note[0].text = "Prescription textuelle: DAFALGAN CODEINE®, comprimé un à deux comprimés toutes les 12 h pendant 10 jours, selon l’intensité de la douleur, avec un maximum à 2 comprimés par prise et de 4 comprimés par jour. STOP SI NAUSEES"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* dosageInstruction.patientInstruction = "Selon l'intensité des douleurs. STOP SI NAUSEE"
* dosageInstruction.timing.repeat.boundsDuration.value = 10
* dosageInstruction.timing.repeat.boundsDuration.unit = "jour"
* dosageInstruction.timing.repeat.boundsDuration.system = $unitsofmeasure
* dosageInstruction.timing.repeat.boundsDuration.code = #d
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 12
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.doseAndRate.doseRange.low = 1 $EDQM#15054000 "Comprimé"
* dosageInstruction.doseAndRate.doseRange.high = 2 $EDQM#15054000 "Comprimé"
* dosageInstruction.maxDosePerAdministration = 2 $EDQM#15054000 "Comprimé"
* dosageInstruction.maxDosePerPeriod.numerator = 4 $EDQM#15054000 "Comprimé"
* dosageInstruction.maxDosePerPeriod.denominator = 1 $unitsofmeasure#d "Jour"
