Extension: FrDrugCharacteristic
Id: FrDrugCharacteristic
Title: "Medication descriptive properties"
Description: "Specifies descriptive properties of the medicine"
* ^context.type = #element
* ^context.expression = "Medication"
* . ^short = "Descriptive properties of the medicine"
* . ^definition = "Specifies descriptive properties of the medicine, such as color, shape, imprints, release characteristic, etc."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    type 0..1 and
    value 0..*
* extension[type] ^short = "Type of the drug characteristic"
* extension[type] ^definition = "A code specifying which characteristic of the medicine is being described (for example, colour, shape, imprint, release characteristic)."
* extension[type].value[x] only CodeableConcept
* extension[type].value[x] from $medicationknowledge-characteristic (example)
* extension[type].value[x] ^short = "Type of characteristic"
* extension[type].value[x] ^definition = "A code specifying which characteristic of the medicine is being described."
* extension[value] ^short = "Description of the characteristic"
* extension[value] ^definition = "The description should be provided as a CodeableConcept, SimpleQuantity or an image. The description can be a string only when these others are not available."
* extension[value].value[x] only base64Binary or string or Attachment or CodeableConcept or Quantity