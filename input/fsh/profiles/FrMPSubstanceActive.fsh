Profile: FrMPSubstanceActive
Parent: CodeableConcept
Id: FrMPSubstanceActive
Title: "French Active Substance of a Medicinal Product"
Description: "code for the medicinal product substance"
* ^url = "http://interopsante.org/fhir/StructureDefinition/FrMPSubstanceActive"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2021-10-18"
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
* coding from FrMpSubstanceActive (extensible)
* coding ^binding.description = "Medicinal product Substance"