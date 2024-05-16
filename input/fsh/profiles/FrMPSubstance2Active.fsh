Profile: FrMPSubstance2Active
Parent: CodeableConcept
Id: FrMPSubstance2Active
Description: "code for the medicinal product substance"
* ^url = "http://interopsante.org/fhir/StructureDefinition/FrMPSubstance2Active"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2021-11-26"
* ^publisher = "InterOp'Santé - FRANCE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "fhir@interopsante.org"
* ^copyright = "InterOp'Santé 2021"
* . ^short = "SNOMED CT Medicinal Product Substance"
* . ^example[0].label = "Glucose"
* . ^example[=].valueCodeableConcept = $sct#67079006 "glucose (substance)"
* . ^example[=].valueCodeableConcept.text = "glucose"
* . ^example[+].label = "Perindopril erbumine"
* . ^example[=].valueCodeableConcept = $sct#129485000 "perindopril erbumine (substance)|"
* . ^example[=].valueCodeableConcept.text = "perindopril erbumine (substance)"
* coding 1..
* coding ^slicing.discriminator.type = #value
* coding ^slicing.discriminator.path = "system"
* coding ^slicing.description = "SNOMED CT code system mandatory ; other code systems optional"
* coding ^slicing.rules = #open
* coding contains
    snomedSubstanceCoding 0..1 and
    otherCoding 0..*
* coding[snomedSubstanceCoding] from FrMpSubstanceActive (required)
* coding[snomedSubstanceCoding] ^binding.description = "Medicinal product Substance"
* coding[snomedSubstanceCoding].system = "http://snomed.info/sct" (exactly)
* coding[otherCoding].system = "^((?!http:\\/\\/snomed\\.info\\/sct).)*$"