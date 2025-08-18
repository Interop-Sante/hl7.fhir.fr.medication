Instance: HAS-08-1-Presc-Betamethasone
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "BETHAMETHASONE 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter"
* type = #searchset
* entry.resource = medicationrequest-HAS-8-1-Presc-Betamethasone

Instance: medicationrequest-HAS-8-1-Presc-Betamethasone
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: BETHAMETHASONE 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter"
* medicationCodeableConcept = $Medicabase#MV00000063 "BETAMETHASONE 0,05% voie cutanée pom"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "en couche mince et uniforme sur la zone à traiter"
* dosageInstruction.timing.repeat.frequencyMax = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Application"
