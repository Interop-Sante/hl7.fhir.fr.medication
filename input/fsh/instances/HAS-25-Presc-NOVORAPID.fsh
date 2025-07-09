Instance: HAS-25-NOVORAPID
InstanceOf: fr-prescription-bundle-for-example
Usage: #example
* type = #searchset
* entry[0].resource = medicationrequest-HAS-25-NOVORAPID

Instance: medicationrequest-HAS-25-NOVORAPID
InstanceOf: FrInpatientMedicationRequest
Usage: #inline
* meta.profile[0] = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-inpatient-medicationrequest"
* status = #active
* intent = #order
* priority = #routine
* note[0].text = "Prescription textuelle: NOVORAPID Flexpen® 100 UI / mL : A administrer avant chaque repas en fonction de la glycémie 6 U si glycémie entre 1,5 et 2 g/L​ 8 U si glycémie entre 2 et 2,5 g/L 10 U si glycémie supérieure à 2,5 g/L​"
* note[=].extension[noteScope].valueCode = #LIPRESCTXT
* medicationCodeableConcept = $UCD#3400892402437 "NOVORAPID FLEXPEN STYLO3ML"
* subject.reference = "Patient/14602"
* requester.reference = "Practitioner/smart-Practitioner-71482713"
* dosageInstruction[0].additionalInstruction.text = "Si glycémie entre 1,5 et 2 g/L"
* dosageInstruction[=].timing.repeat.when = #AC
* dosageInstruction[=].doseAndRate.doseQuantity = 6 $unitsofmeasure#[U] "U"
* dosageInstruction[+].additionalInstruction.text = "Si glycémie entre 2 et 2,5 g/L"
* dosageInstruction[=].timing.repeat.when = #AC
* dosageInstruction[=].doseAndRate.doseQuantity = 8 $unitsofmeasure#[U] "U"
* dosageInstruction[+].additionalInstruction.text = "Si glycémie supérieure à 2,5 g/L"
* dosageInstruction[=].timing.repeat.when = #AC
* dosageInstruction[=].doseAndRate.doseQuantity = 10 $unitsofmeasure#[U] "U"
