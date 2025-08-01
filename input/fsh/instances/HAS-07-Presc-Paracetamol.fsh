Instance: HAS-7-Presc-Paracetamol
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-7-Presc-Paracetamol

Instance: medicationrequest-HAS-7-Presc-Paracetamol
InstanceOf: FRInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: PARACETAMOL 500 mg gélule : Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $Medicabase#MV00000557 "PARACETAMOL 500 mg gélule"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction.asNeededCodeableConcept = $sct#22253000 "douleur"
* dosageInstruction.asNeededCodeableConcept.text = "Si douleurs"
* dosageInstruction.maxDosePerPeriod.numerator = 4000 'mg' "mg"
* dosageInstruction.maxDosePerPeriod.denominator = 24 'h' "h"
* dosageInstruction.maxDosePerAdministration = 1000 'mg' "mg"