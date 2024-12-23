Profile: FrMedicationNonproprietaryName
Parent: Medication
Id: fr-medication-non-proprietary-name
Title: "French non proprietary name Medication"
Description: "Simple prescribed, dispensed, administered or used medication expressed in non proprietary name composed of one to many substances. If composed of many substance, the strengh SHALL be defined."
* ^status = #draft
* ^experimental = false
* ^purpose = "Simple medication description, include those composed of many substances."
* . ^short = "Simple nonproprietary name Medication of MRQ, MDP or MUS"
* . ^definition = "This ressource is profiled for describing a simple medicament (vs compound medication) in the presription line represented by a MedicationRequest, a MedicationDispense or a MedicationUsage (pka MedicationStatement)."
* . ^comment = "A simple medication is made of one single component made of one to many substances.\r\nOptionality of doseForm, amount and strehgth attributes supports different levels of granularity.\r\nThe coarser level only defines the substances it's made of. For instance, contaning only paracetamol or containing only glucose.\r\nThe finest level is the defines the composition and the dose form. For instance, paracetamol 500 mg tablet or  500 mL glucose 5% (50 mg/mL) solution for injection."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains FrDrugCharacteristic named drugCharacteristic 0..*
* extension[drugCharacteristic] ^short = "descriptive properties of the medicine"
* code 1..
* code from FrMedicinalProductOnly (extensible)
* code ^definition = "A sctid  that specify this medication."
* code ^requirements = "The developper SHALL support the infusion use case, which requires a multi-compounds Medication ressource."
* code.text ^comment = "When some code is available, the text is the same as a displayName of one of the codings."
* form from FrMpDoseForm (extensible)
* amount only FrRatioUcum
* amount ^short = "Amount of drug in the MRequest, MDispense or MUsage"
* amount ^definition = "The quantity of the only substance or the volume (liquid) or mass (ointment) in the Medication of the MedicationRequest, Dispense or Use (pka MedicationStatement)."
* amount ^comment = "If the strenght of the ingredients is a concentration, it is the volume (liquid) or mass (ointment) in the Medication of the MedicationRequest, Dispense or Use (pka MedicationStatement).\r\nIf there is only one ingredient and the strenght is not defined, it is the quantity of the substance."
* ingredient 1..
* ingredient ^definition = "Identifies a particular constituent in the product."
* ingredient ^comment = "For the active ingedients, the medication contains ALL the ingredients and ONLY the ingredients."
* ingredient.item[x] only FrMPSubstanceActive
* ingredient.item[x] ^short = "Substance"
* ingredient.item[x] ^definition = "The actual substance (simple ingredient) of the simple medication (ie. made of single component)."
* ingredient.item[x] ^requirements = "The composition of the medication for this ingredient has to be defined"
* ingredient.strength only FrRatioUcum
* ingredient.strength ^definition = "Specifies how much of the items there are in this Medication"
* ingredient.strength ^comment = "The quantity of this igredient defining the medication. For instance, 50 mg/mL defining the glucose quantity for the glucose 5% or 500 mg medicine and 30 mg respectively defining the paracetamol and the codeine quantity for the paracetamol+codeine 500 mg+30 mg medicine."
* batch ..0