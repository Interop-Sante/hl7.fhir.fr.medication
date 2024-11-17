Instance: PN13-FHIR-prescmed-medicationUCD-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* name = "FrPN13FHIRMedicationPrescriptionMedicationUCDConceptMap"
* title = "Conversion PN13 vers FHIR pour un médicament UCD d'une prescription de médicaments"
* status = #draft
* version = "0.1"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion PN13 vers FHIR d'un médicament UCD d'une prescritpion de médicament"
* jurisdiction[0].coding[0].code = $ISO3166#FRA
* jurisdiction[0].coding[0].display = "France"
// A voir quel uri peut être utiliser pour le schema XSD PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13Schema
* targetUri = $FrMedicationUCD
* group[0].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[0].element[0].target[0].code = $FrMedicationUCD#Medication.form.coding.code
* group[0].element[0].target[0].equivalence = #equivalent
* group[0].element[0].target[0].comment = "L'équivalence est donnée par le mapping à fournir par PHAST"
* group[0].element[0].target[0].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[0].element[0].target[0].dependsOn[0].value = "SIPh-CIO_Forme"
* group[0].element[1].target[0].code = $FrMedicationUCD#Medication.form.coding.code
* group[0].element[1].target[0].equivalence = #equivalent
* group[0].element[1].target[0].comment = "L'équivalence est donnée par le mapping à fournir par PHAST"
* group[0].element[1].target[0].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[0].element[1].target[0].dependsOn[0].value = "<Null>"
// verifier comment exprimer l'absence de valeur dans un concept map
* group[0].element[2].target[0].code = $FrMedicationUCD#Medication.form.coding.code
* group[0].element[2].target[0].equivalence = #equal
* group[0].element[2].target[0].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[0].element[2].target[0].dependsOn[0].value = "EDQM"
* group[0].element[2].target[0].product[0].property = $FrMedicationUCD#Medication.form.coding.system
* group[0].element[2].target[0].product[0].value = "http://standardterms.edqm.eu"
* group[0].element[3].target[0].code = $FrMedicationUCD#Medication.form.coding.code
* group[0].element[3].target[0].equivalence = #unmatched
* group[0].element[3].target[0].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[0].element[3].target[0].dependsOn[0].value = "SIPh-Forme"
