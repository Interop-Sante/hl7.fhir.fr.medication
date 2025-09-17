Instance: HAS-09-Presc-Ropinirole
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
Description: "ROPINIROLE comprimé 1mg : 1 comprimé à 7h, 12h 18h"
* type = #searchset
* entry.resource = medicationrequest-HAS-9-Presc-Roprinirole

Instance: medicationrequest-HAS-9-Presc-Roprinirole
InstanceOf: fr-medicationrequest
Usage: #inline
* meta.profile = Canonical(fr-medicationrequest)
* extension[renderedDosageInstruction].valueMarkdown = "1 comprimé à 7h, 12h 18h"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: ROPINIROLE comprimé 1mg : 1 comprimé à 7h, 12h 18h"
* medicationCodeableConcept = $Medicabase#MV00000499 "ROPINIROLE comprimé 1mg"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.timing.repeat.timeOfDay[0] = "07:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "12:00:00"
* dosageInstruction.timing.repeat.timeOfDay[+] = "18:00:00"
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.unit = "comprimé"
* dosageInstruction.doseAndRate.doseQuantity.system = $EDQM
* dosageInstruction.doseAndRate.doseQuantity.code = #15054000