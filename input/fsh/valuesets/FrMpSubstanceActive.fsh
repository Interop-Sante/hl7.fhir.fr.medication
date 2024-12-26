ValueSet: FrMpSubstanceActive
Id: fr-mp-substance-active
Title: "French Medicinal product Active substance"
Description: "Le jeu de valeurs à utiliser pour coder l'élément *ingredient.itemCodeableConcept* des ressources *FrMedicationUcd*, *FrMedicationUcdPart* et *FrMedicationNonproprietaryName*."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #draft
* ^experimental = false
* ^immutable = false
* include codes from system SNOMED_CT
    where constraint = "((< 763158003 |Medicinal product (product)|) . 127489000 |Has active ingredient (attribute)|) or ((< 763158003 |Medicinal product (product)|) . 762949000 |Has precise active ingredient (attribute)|)"