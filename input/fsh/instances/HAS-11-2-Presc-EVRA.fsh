Instance: HAS-11-2-Presc-EVRA
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "EVRA® 203 µg/24h + 33,9µg/24h dispositif transdermique : Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique"
* type = #searchset
* entry.resource = medicationrequest-HAS-11-2-Presc-EVRA

Instance: medicationrequest-HAS-11-2-Presc-EVRA
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: EVRA® 203 µg/24h + 33,9µg/24h dispositif transdermique : Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique"
* medicationCodeableConcept = $UCD#3400892571720 "EVRA 203µG/33,9µG DISP TRANS"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique"
* dosageInstruction.timing.repeat.boundsDuration.value = 6
* dosageInstruction.timing.repeat.boundsDuration.unit = "mois"
* dosageInstruction.timing.repeat.boundsDuration.system = $unitsofmeasure
* dosageInstruction.timing.repeat.boundsDuration.code = #mo
* dosageInstruction.timing.repeat.duration = 7
* dosageInstruction.timing.repeat.durationUnit = #d
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #mo
* dosageInstruction.doseAndRate.doseQuantity = 1 $EDQM#15036000 "dispositif transdermique"
