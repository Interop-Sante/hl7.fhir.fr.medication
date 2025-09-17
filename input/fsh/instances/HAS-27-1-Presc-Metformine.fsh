Instance: HAS-27-1-Metformine
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "METFORMINE 700 mg comprimé: 1 comprimé le matin et 1 comprimé soir, au cours ou à la fin des repas"
* type = #searchset
* entry.resource = medicationrequest-HAS-27-1-Metformine

Instance: medicationrequest-HAS-27-1-Metformine
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé le matin et 1 comprimé soir, au cours ou à la fin des repas"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: METFORMINE 700 mg comprimé: 1 comprimé le matin et 1 comprimé soir, au cours ou à la fin des repas​"
* medicationCodeableConcept = $Medicabase#MV00002702 "Metformine embonate 700 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "au cours ou à la fin du repas"
* dosageInstruction.timing.repeat.when[0] = #MORN
* dosageInstruction.timing.repeat.when[+] = #EVE
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "comprimé"
