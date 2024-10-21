Instance: PN13-FHIR-prescmed-medicationNonProp-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* name = "FrPN13FHIRMedicationPrescriptionMedicationNonPropConceptMap"
* title = "Conversion PN13 vers FHIR pour un médicament en DC d'une prescription de médicaments"
* status = #draft
* version = "0.1"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion PN13 vers FHIR d'un médicament en DC d'une prescritpion de médicament"
* jurisdiction[0].coding[0].code = $ISO3166#FRA
* jurisdiction[0].coding[0].display = "France"
// A voir quel uri peut être utiliser pour le schema XSD PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13Schema
* targetUri = $FrInpatientMedicationNonproprietaryName
* group[0].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[0].element[0].target[0].code = $FrInpatientMedicationNonproprietaryName#Medication.form.coding.code
* group[0].element[0].target[0].equivalence = #equivalent
* group[0].element[0].target[0].comment = "L'équivalence est donnée par le mapping à fournir par PHAST"
* group[0].element[0].target[0].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[0].element[0].target[0].dependsOn[0].value = "SIPh-CIO_Forme"
* group[0].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[0].element[0].target[1].code = $FrInpatientMedicationNonproprietaryName#Medication.form.coding.code
* group[0].element[0].target[1].equivalence = #equivalent
* group[0].element[0].target[1].comment = "L'équivalence est donnée par le mapping à fournir par PHAST"
* group[0].element[0].target[1].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[0].element[0].target[1].dependsOn[0].value = "<Null>"
// verifier comment exprimer l'absence de valeur dans un concept map
* group[0].element[0].target[2].code = $FrInpatientMedicationNonproprietaryName#Medication.form.coding.code
* group[0].element[0].target[2].equivalence = #equal
* group[0].element[0].target[2].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[0].element[0].target[2].dependsOn[0].value = "EDQM"
* group[0].element[0].target[2].product[0].property = $FrInpatientMedicationNonproprietaryName#Medication.form.coding.system
* group[0].element[0].target[2].product[0].value = "http://standardterms.edqm.eu"
* group[0].element[0].target[3].code = $FrInpatientMedicationNonproprietaryNameD#Medication.form.coding.code
* group[0].element[0].target[3].equivalence = #unmatched
* group[0].element[0].target[3].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[0].element[0].target[3].dependsOn[0].value = "SIPh-Forme"
