ValueSet: FrMedicinalProductOnly
Id: FrMedicinalProductOnly
Title: "French Medicinal Product only"
Description: "Le jeu de valeurs à utiliser pour coder l'élément *code* de la ressource *FrMedicationNonproprietaryName*."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #draft
* ^experimental = false
* ^immutable = false
* include codes from system SNOMED_CT
    where constraint = "< 763158003 |Medicinal product (product)| : 766952006 |Count of base of active ingredient (attribute)| = * ,  [0..0] 411116001 |Has manufactured dose form (attribute)| = *"