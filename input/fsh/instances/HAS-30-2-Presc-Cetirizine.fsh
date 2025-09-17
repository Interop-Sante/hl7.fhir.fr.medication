Instance: HAS-30-2-Presc-Cetirizine
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "CETIRIZINE 10 mg : 1 à 4 comprimés par jour selon les symptômes (urticaire)"
* type = #searchset
* entry.resource = medicationrequest-HAS-30-2-Presc-Cetirizine

Instance: medicationrequest-HAS-30-2-Presc-Cetirizine
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 à 4 comprimés par jour selon les symptômes (urticaire)"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: CETIRIZINE 10 mg : 1 à 4 comprimés par jour selon les symptômes (urticaire)"
* medicationCodeableConcept = $Medicabase#MV00000524 "Cétirizine dichlorhydrate 10 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "Selon les symptômes (urticaire)"
* dosageInstruction.doseAndRate.doseRange.low = 1 $EDQM#15054000 "Comprimé"
* dosageInstruction.doseAndRate.doseRange.high = 4 $EDQM#15054000 "Comprimé"
