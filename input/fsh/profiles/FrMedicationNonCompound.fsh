Profile: FrMedicationNonCompound
Parent: Medication
Id: fr-medication-noncompound
Title: "French Non Compound Medication"
Description: "Simple prescribed, dispensed, administered or used medication composed of one to many substances. If composed of many substance, the strengh SHALL be defined."
* ^status = #draft
* ^experimental = false
* ^purpose = "Simple medication description, include those composed of many substances."
* . ^short = "Simple Medication"
* . ^definition = "This ressource is profiled for describing a simple medication (vs compound medication) in the presription line represented by a MedicationRequest, a MedicationDispense or a MedicationUsage (pka MedicationStatement)."
* . ^comment = "A simple medication is made of one single component made of one to many substances.\r\nOptionality of doseForm, amount and strehgth attributes supports different levels of granularity.\r\nThe coarser level only defines the substances it's made of. For instance, contaning only paracetamol or containing only glucose.\r\nThe finest level is the defines the composition and the dose form. For instance, paracetamol 500 mg tablet or  500 mL glucose 5% (50 mg/mL) solution for injection."

* obeys frmed-med-1

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains FrDrugCharacteristic named drugCharacteristic 0..*
* extension[drugCharacteristic] ^short = "descriptive properties of the medicine"
* code 1..
* code ^definition = "A RUIM id that specify this medication."
* code ^requirements = "The developper SHALL support the infusion use case, which requires a multi-compounds Medication ressource."
* code.text ^comment = "When some code is available, the text is the same as a displayName of one of the codings."
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "coding.system"
* code.coding ^slicing.description = "One slice for code from the official medication referential in France: Référentiel Unique d'Interopérabilité du Médicament (RUIM) browsable with https://smt.esante.gouv.fr/explorer-les-concepts/terminologie-ref_interop_med/ and downloadable through https://smt.esante.gouv.fr/catalogue-des-terminologies/"
* code.coding ^slicing.rules = #open
* code.coding contains
    nonCompoundCode 1..1 MS

* code.coding[nonCompoundCode] from fr-medication-code (required)
* code.coding[nonCompoundCode] ^short = "Codes that identify this simple medication"
* code.coding[nonCompoundCode] ^definition = "Codes that identify this simple medication"
* code.coding[nonCompoundCode] ^binding.description = "UCD, SMS or ANSM code"

* amount only FrRatioUcum
* amount ^short = "Amount of drug in the MRequest, MDispense or MUsage"
* amount ^definition = "The quantity of the only substance or the volume (liquid) or mass (ointment) in the Medication of the MedicationRequest, Dispense or Use (pka MedicationStatement)."
// Si la contrainte d'avoir au moins un composant est levée (notamment parce que code du médicament porte cette information) le commentaire est à mettre à jour
* amount ^comment = "If the strenght of the ingredients is a concentration, it is the volume (liquid) or mass (ointment) in the Medication of the MedicationRequest, Dispense or Use (pka MedicationStatement).\r\nIf there is only one ingredient and the strenght is not defined, it is the quantity of the substance."

* ingredient ^definition = "Identifies a particular constituent in the product."
// Si la contrainte d'avoir au moins un composant est levée (notamment parce que code du médicament porte cette information) le commentaire est à mettre à jour
* ingredient ^comment = "For the active ingedients, the medication contains ALL the ingredients and ONLY the ingredients."
// Faire un jeu de valeur juste avec des codes SMS et ANSM pour les ingrédients? A priori pas de nécessité de passer par UCD part étant donné que les substances sont maintenant dans le RIUM
* ingredient.item[x] only FrMPSubstanceActive
* ingredient.item[x] ^short = "Substance"
* ingredient.item[x] ^definition = "The actual substance (simple ingredient) of the simple medication (ie. made of single component)."
* ingredient.item[x] ^requirements = "The composition of the medication for this ingredient SHALL be defined for prescrption of virtual medication so that strength can be defined. It MAY be defined for other medication"

* ingredient.strength only FrRatioUcum
* ingredient.strength ^definition = "Specifies how much of the items there are in this Medication"
* ingredient.strength ^comment = "The quantity of this igredient defining the medication. For instance, 50 mg/mL defining the glucose quantity for the glucose 5% or 500 mg medicine and 30 mg respectively defining the paracetamol and the codeine quantity for the paracetamol+codeine 500 mg+30 mg medicine."
* ingredient.strength ^requirements = "In cas of virtual medication strength SHALL be provided"

* batch ^definition = "This applies for the proprietary named medication involved in a MedicationDispense, MedicationAdministration or a MedicationUse."
* batch ^comment = "WARNING: it is the batch number of the part.\r\nIf it is not discerned for each part, it SHALL NOT be provided here but at the grouping level where it is defined, most often the UCD."