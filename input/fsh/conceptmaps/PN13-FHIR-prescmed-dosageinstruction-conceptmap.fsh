Instance: PN13-FHIR-prescmed-dosageinstruction-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* name = "FrPN13FHIRMedicationPrescriptionDosageInstructiontConceptMap"
* title = "Conversion PN13 vers FHIR pour la posologie d'une prescription de médicaments"
* status = #draft
* version = "0.1"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion PN13 vers FHIR d'une posologie d'une prescritpion de médicament"
* jurisdiction[0].coding[0].code = $ISO3166#FRA
* jurisdiction[0].coding[0].display = "France"
// A voir quel uri peut être utiliser pour le schema XSD PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13Schema-Posologie
* targetUri = $FhirDosage


* group[0].element[0].code = $PN13Schema-Posologie#Elément_posologie/Débit/Nombre
* group[=].element[=].target[0].equivalence = #disjoint
* group[=].element[=].target[=].comment = "Le débit maximal n'est pas mappé en FHIR"
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Type_événement_début
* group[=].element[=].target[=].dependsOn[=].value = "4"
* group[=].element[=].target[=].dependsOn[+].property = $PN13Schema-Posologie#Elément_posologie/Evt_structuré_début/Evénement_param_poso_cond
* group[=].element[=].target[=].dependsOn[=].value = "4"

* group[=].element[+].code = $PN13Schema-Posologie#Elément_posologie/Débit/Nombre
* group[=].element[=].target[0].equivalence = #disjoint
* group[=].element[=].target[=].comment = "Valable uniquement pour les versions de PN13 antérieures à la v3.3. Le débit maximal n'est pas mappé en FHIR"
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Type_événement_début
* group[=].element[=].target[=].dependsOn[=].value = "4"
* group[=].element[=].target[=].dependsOn[+].property = $PN13Schema-Posologie#Elément_posologie/Evt_début
* group[=].element[=].target[=].dependsOn[=].value = "4"