Instance: HAS-32-1-Presc-LOVENOX
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "ENOXAPARINE sodique 4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie (LOVENOX®): 1 injection en sous-cutanée par jour pendant 1 semaine."
* type = #searchset
* entry.resource = medicationrequest-HAS-32-1-Presc-LOVENOX

Instance: medicationrequest-HAS-32-1-Presc-LOVENOX
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 injection en sous-cutanée par jour pendant 1 semaine."
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: ENOXAPARINE sodique 4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie (LOVENOX®): 1 injection en sous-cutanée par jour pendant 1 semaine."
* medicationCodeableConcept = $UCD#3400892669236 "LOVENOX 4000UI SRG0,4ML +ERIS"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.boundsDuration = 2 $unitsofmeasure#wk "semaines"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = $EDQM#20066000 "Voie sous-cutanée"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "Seringue"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15052000
