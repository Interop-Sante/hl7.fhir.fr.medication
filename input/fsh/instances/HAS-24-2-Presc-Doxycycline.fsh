Instance: HAS-24-1-presc-Doxycyline
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "DOXYCYCLINE 100 mg comprime : 1 comprimé le soir. Ne pas s’allonger dans l’heure qui suit la prise, utiliser une protection solaire adaptée"
* type = #searchset
* entry.resource = medicationrequest-HAS-24-1-Presc-Doxycyline

Instance: medicationrequest-HAS-24-1-Presc-Doxycyline
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé le soir. Ne pas s’allonger dans l’heure qui suit la prise, utiliser une protection solaire adaptée"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: DOXYCYCLINE 100 mg comprime : 1 comprimé le soir. Ne pas s’allonger dans l’heure qui suit la prise, utiliser une protection solaire adaptée"
* medicationCodeableConcept = $Medicabase#MV00000833 "Doxycycline 100 mg comprimé"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "Ne pas s’allonger dans l’heure qui suit la prise, utiliser une protection solaire adaptée"
* dosageInstruction.timing.repeat.when = #EVE
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15054000 "Comprimé"