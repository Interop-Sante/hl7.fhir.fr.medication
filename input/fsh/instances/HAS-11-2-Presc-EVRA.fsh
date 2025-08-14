Instance: HAS-11-2-Presc-EVRA
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "EVRA® 203 µg/24h + 33,9µg/24h dispositif transdermique : Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique"
* type = #searchset
* entry[0].resource = medicationrequest-HAS-11-2-Presc-EVRA

Instance: medicationrequest-HAS-11-2-Presc-EVRA
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* extension[renderedDosageInstruction].valueMarkdown = "Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: EVRA® 203 µg/24h + 33,9µg/24h dispositif transdermique : Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique"
* medicationCodeableConcept = $UCD#3400892571720 "EVRA 203µG/33,9µG DISP TRANS"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique"
* dosageInstruction.timing.repeat.boundsDuration.value = 6
* dosageInstruction.timing.repeat.boundsDuration.unit = "mois"
* dosageInstruction.timing.repeat.boundsDuration.system = $unitsofmeasure
* dosageInstruction.timing.repeat.boundsDuration.code = #mo
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #mo
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "dispositif transdermique"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15036000