Profile: FrMedication2unique
Parent: Medication
Id: fr-medication-2-unique
Description: "ressource Medication unique regroupant les 4 profils en 1 (ucd, ucd-part, non-proprietary-name et compound)"
* ^status = #draft
* ^experimental = true

* obeys frmed-med-1

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "coding.system"
* code.coding ^slicing.description = "3 slices: 1. for branded medication ; 2. for non-proprietary named medication ; 3.  for compound medication. Induces 2 constrains on ingredient element: 1. for non-compound medication, ingredient element SHALL be a substance ; for compound medication, ingredient element SHALL be a branded or non-proprietary named medication."
* code.coding ^slicing.rules = #open
* code.coding contains
    ucdCode 0..1 MS and
    snomedMedicinalProductCode 0..1 MS and
    otherMedicationCode 0..1 MS

* code.coding[ucdCode] from $SIPh-CIO_UCD (required)
* code.coding[ucdCode] ^short = "Codes that identify this branded medication"
// * code.coding[ucdCode].system = "^http:\\/\\/phast\\.fr\\/fhir\\/ValueSet\\/Pharmacy\\/CIOdc\\/SIPh-CIO_UCD$" //TODO : remplacer avec le système FHIR d'UCD
* code.coding[ucdCode].system ^short = "UCD codeSystem"
* code.coding[ucdCode].system ^definition = "The UCD code system (under the responsibility of the Club Inter Pharmaceutique (CIP)"
* code.coding[ucdCode].system ^comment = "In the absence of a uri defined by the Club Interpharceutique or the competent government authorities, the uri defined by PHAST is used."
* code.coding[ucdCode].system ^requirements = "The code system SHALL be the UCD code system"


* code.coding[snomedMedicinalProductCode] from FrMedicinalProductOnly (required)
* code.coding[snomedMedicinalProductCode].system = $sct
* code.coding[snomedMedicinalProductCode].system ^short = "SNOMED CT codeSystem"

* code.coding[otherMedicationCode] obeys frmed-med-2 and frmed-med-3 and frmed-med-4
* code.coding[otherMedicationCode] ^short = "Generaly no code for compound medicinal product"
* code.coding[otherMedicationCode] ^definition = "A code identifing the compound medicinal product. Generaly none : no code defined for G5 1L + NaCl 3g + KCl 2g."
// * code.coding[otherMedicationCode].system = "^((?!http:\\/\\/phast\\.fr\\/fhir\\/ValueSet\\/Pharmacy\\/CIOdc\\/SIPh-CIO_UCD|http:\\/\\/snomed\\.info\\/sct).)*$" 

* code.text MS

* ingredient 1.. MS
* ingredient.item[x] only FrMPSubstance2Active or Reference(FrMedication2unique)
* ingredient.item[x] MS