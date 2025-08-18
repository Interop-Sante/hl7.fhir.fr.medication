Instance: HAS-08-2-Presc-Paracetamol
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "PARACETAMOL 24 mg/mL (DOLIPRANE 2.4%), susp buv, flac 100 mL : 1 dose correspondant à la graduation de 7 kg, toutes les 6 heures - Si température supérieure ou égale à 38,5°C."
* type = #searchset
* entry.resource = medicationrequest-HAS-8-2-Presc-Paracetamol

Instance: medicationrequest-HAS-8-2-Presc-Paracetamol
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 dose correspondant à la graduation de 7 kg, toutes les 6 heures - Si température supérieure ou égale à 38,5°C"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: PARACETAMOL 24 mg/mL (DOLIPRANE 2.4%), susp buv, flac 100 mL : 1 dose correspondant à la graduation de 7 kg, toutes les 6 heures - Si température supérieure ou égale à 38,5°C"
* medicationCodeableConcept = $Medicabase#MV00001921 "Paracétamol 24 mg/ml suspension buvable"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.additionalInstruction.text = "Si température supérieure ou égale à 38,5°C"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 6
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "dose correspondant à la graduation de 7 kg"
* dosageInstruction.doseAndRate.doseQuantity.system = "https://bogussystem.eu"
* dosageInstruction.doseAndRate.doseQuantity.code = #Grad7kg
