Instance: InLine-Inter-Arret-Paracetamol-Si-Douleur
InstanceOf: fr-inpatient-pharmaceutical-intervention-suggestion
Usage: #example
Description: "Proposition d'arrêt dans le cadre d'un intervention pharmaceutique"
* extension[renderedDosageInstruction].valueMarkdown = "Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)"
* status = #active
* intent = #proposal
* priority = #routine
* doNotPerform = true
* note.text = "Prescription textuelle: PARACETAMOL 500 mg gélule : Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)"
* medicationCodeableConcept = $Medicabase#MV00000557 "PARACETAMOL 500 mg gélule"
* subject.reference = "Patient/14602"
* supportingInformation.reference = "MedicationRequest/InLine-Analyse-Presc-Paracetamol-Si-Souleur"
* authoredOn = "2025-07-23T11:06:00+01:00"
* requester.reference = "Practitioner/smart-Practitioner-27865023"
* groupIdentifier.value = "Presc-4130"
* dosageInstruction.asNeededCodeableConcept = $sct#22253000 "douleur"
* dosageInstruction.asNeededCodeableConcept.text = "Si douleurs"
* dosageInstruction.maxDosePerPeriod.numerator = 4000 $unitsofmeasure#mg "mg"
* dosageInstruction.maxDosePerPeriod.denominator = 24 $unitsofmeasure#h "h"
* dosageInstruction.maxDosePerAdministration = 1000 $unitsofmeasure#mg "mg"