Instance: HAS-14-2-Presc-Betamethasone
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "BETHAMETHASONE 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter. Ne pas dépasser 2 applications par jour"
* type = #searchset
* entry[0].resource = medicationrequest-HAS-14-2-Presc-Betamethasone

Instance: medicationrequest-HAS-14-2-Presc-Betamethasone
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* extension[renderedDosageInstruction].valueMarkdown = "1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter. Ne pas dépasser 2 applications par jour"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: BETHAMETHASONE 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter. Ne pas dépasser 2 applications par jour"
* medicationCodeableConcept = $Medicabase#MV00000063 "BETAMETHASONE 0,05% voie cutanée pom"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.patientInstruction = "application en couche mince et uniforme sur la zone à traiter"
* dosageInstruction.timing.repeat.frequencyMax = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Application"
* dosageInstruction.maxDosePerPeriod.numerator = 2 "Application"
* dosageInstruction.maxDosePerPeriod.denominator = 1 'd' "jour"