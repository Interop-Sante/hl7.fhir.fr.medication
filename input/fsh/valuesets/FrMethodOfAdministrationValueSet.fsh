ValueSet: FrMethodOfAdministration
Id: FrMethodOfAdministration
Title: "French Method Of Administration"
Description: "Le jeu de valeurs à utiliser pour coder l'élément *dosageInstruction.method* de la ressource *FrMedicationRequest*."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #draft
* ^experimental = false
* ^immutable = false
* include codes from system SNOMED_CT
    where constraint = "< 736665006 |Dose form administration method (administration method)| minus > (< 736665006 |Dose form administration method (administration method)|)"