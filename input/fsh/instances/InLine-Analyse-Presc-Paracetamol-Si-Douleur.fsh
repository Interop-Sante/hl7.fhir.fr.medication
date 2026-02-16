Instance: InLine-Analyse-Presc-Paracetamol-Si-Douleur
InstanceOf: fr-inpatient-medicationrequest
Usage: #example
Description: "Prescription de Paracétamol pour exemple d'intervention pharmaceutique"
* extension[renderedDosageInstruction].valueMarkdown = "Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)"
* status = #active
* intent = #order
* priority = #routine
* note.text = "Prescription textuelle: PARACETAMOL 500 mg gélule : Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)"
* medicationCodeableConcept = $Medicabase#MV00000557 "PARACETAMOL 500 mg gélule"
* subject.reference = "Patient/14602"
* authoredOn = "2025-07-23T10:33:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* groupIdentifier.value = "Presc-4130"
* dosageInstruction.asNeededCodeableConcept = $sct#22253000 "douleur"
* dosageInstruction.asNeededCodeableConcept.text = "Si douleurs"
* dosageInstruction.maxDosePerPeriod.numerator = 4000 $unitsofmeasure#mg "mg"
* dosageInstruction.maxDosePerPeriod.denominator = 24 $unitsofmeasure#h "h"
* dosageInstruction.maxDosePerAdministration = 1000 $unitsofmeasure#mg "mg"