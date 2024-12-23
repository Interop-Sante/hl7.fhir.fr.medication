ValueSet: FrMpUnitOfPresentation
Id: fr-mp-unit-of-presentation
Title: "French Medicinal product Unit of Presentation"
Description: "Le jeu de valeurs à utiliser pour coder l'unité de présentation de la dose."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #draft
* ^experimental = false
* ^immutable = false
* include codes from system SNOMED_CT
    where constraint = "(< 763158003 |Medicinal product (product)|) . 763032000 |Has unit of presentation (attribute)|"