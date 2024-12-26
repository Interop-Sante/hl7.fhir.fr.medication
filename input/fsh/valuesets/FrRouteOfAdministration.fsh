ValueSet: FrRouteOfAdministration
Id: fr-route-of-administration
Title: "French Route of Administration"
Description: "Le jeu de valeurs à utiliser pour coder l'élément *dosageInstruction.route* de la ressource *FrMedicationRequest*."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #draft
* ^experimental = false
* ^immutable = false
* include codes from system SNOMED_CT
    where constraint = "< 284009009 |Route of administration value (qualifier value)| minus > (< 284009009 |Route of administration value (qualifier value)|)"