Instance: HAS-33-Presc-VERSATIS
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "VERSATIS® 700 mg emplâtre médicamenteux: 1 emplâtre par jour à 20 h, à laisser pendant 12h sur la peau"
* type = #searchset
* entry.resource = medicationrequest-HAS-33-Presc-VERSATIS

Instance: medicationrequest-HAS-33-Presc-VERSATIS
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 emplâtre par jour à 20 h, à laisser pendant 12h sur la peau"
* status = #active
* intent = #order
* priority = #routine
* note.text = "VERSATIS® 700 mg emplâtre médicamenteux: 1 emplâtre par jour à 20 h, à laisser pendant 12h sur la peau"
* medicationCodeableConcept = $UCD#3400892981079 "VERSATIS 700MG EMPL MEDIC"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.duration = 12
* dosageInstruction.timing.repeat.durationUnit = #h
* dosageInstruction.timing.repeat.timeOfDay = "20:00:00"
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15042000 "Emplâtre"
