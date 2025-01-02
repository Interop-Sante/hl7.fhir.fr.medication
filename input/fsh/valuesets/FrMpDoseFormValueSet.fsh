ValueSet: FrMpDoseForm
Id: fr-mp-dose-form
Title: "French Medicinal product Dose form"
Description: "Le jeu de valeurs à utiliser pour coder l'élément *doseForm* des ressources *FrMedicationUcd*, *FrMedicationUcdPart* ou *FrMedicationNonProprietaryName*."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #draft
* ^experimental = false
* ^immutable = false
* include codes from system SNOMED_CT
    where constraint = "(< 763158003 |Medicinal product (product)|) . 411116001 |Has manufactured dose form (attribute)|"