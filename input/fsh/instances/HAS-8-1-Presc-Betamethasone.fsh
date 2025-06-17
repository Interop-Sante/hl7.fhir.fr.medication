Instance: HAS-8-1-Presc-Betamethasone
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-8-1-Presc-Betamethasone

Instance: medicationrequest-HAS-8-1-Presc-Betamethasone
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: BETHAMETHASONE 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00000063 "BETAMETHASONE 0,05% voie cutanée pom"
* subject.reference = "Patient/14602"
* authoredOn = "2025-06-05T15:00:00Z"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-HAS-8-1"
* groupIdentifier.system = "https://somehospital.fr/Prescrption-ID"
* dosageInstruction.patientInstruction = "1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2025-06-05T15:00:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2025-06-15T15:00:00Z"
* dosageInstruction.route = $EDQM#20003000 "Voie cutanée"
* dosageInstruction.route.text = "Voie cutanée"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Application"
* dosageInstruction.doseAndRate.doseQuantity.system = $unitsofmeasure
* dosageInstruction.doseAndRate.doseQuantity.code = #{Appln}
* dosageInstruction.maxDosePerPeriod.numerator = 2 $unitsofmeasure#{Appln} "Application"
* dosageInstruction.maxDosePerPeriod.denominator = 24 'h' "h"