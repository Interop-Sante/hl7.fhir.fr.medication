Instance: HAS-14-2-Presc-Betamethasone
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-14-2-Presc-Betamethasone

Instance: medicationrequest-HAS-14-2-Presc-Betamethasone
InstanceOf: FrPatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-patient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: BETHAMETHASONE 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter. Ne pas dépasser 2 applications par jour"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00000063 "BETAMETHASONE 0,05% voie cutanée pom"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.patientInstruction = "application en couche mince et uniforme sur la zone à traiter"
* dosageInstruction.timing.repeat.frequencyMax = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Application"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #{Appln}
* dosageInstruction.maxDosePerPeriod.numerator = 2 $unitsofmeasure#{Appln} "Application"
* dosageInstruction.maxDosePerPeriod.denominator = 1 'd' "jour"