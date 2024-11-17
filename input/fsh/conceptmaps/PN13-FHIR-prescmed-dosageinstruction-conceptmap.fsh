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
* group[0].source = $PN13Schema-Posologie
* group[0].target = $FhirDosage
* group[0].element[0].code = $PN13Schema-Posologie#Elément_posologie
* group[0].element[0].target[0].code = $FhirDosage#Dosage.timing
* group[0].element[0].target[0].equivalence = #relatedto
* group[0].element[0].target[0].comment = "en l'absence de Fréquence et Fréquence_structurée la fréquence par défaut est d'une fois par jour"
* group[0].element[0].target[0].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Fréquence
* group[0].element[0].target[0].dependsOn[0].value = "<Null>"
* group[0].element[0].target[0].dependsOn[1].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée
* group[0].element[0].target[0].dependsOn[1].value = "<Null>"
* group[0].element[0].target[0].product[0].property = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[0].element[0].target[0].product[0].value = "d"
* group[0].element[0].target[0].product[1].property = $FhirDosage#Dosage.timing.repeat.period
* group[0].element[0].target[0].product[1].value = "1"
* group[0].element[1].code = $PN13Schema-Posologie#Elément_posologie/Fréquence
* group[0].element[1].target[0].code = $FhirDosage#Dosage.timing.frequency
* group[0].element[1].target[0].equivalence = #relatedto
* group[0].element[1].target[0].comment = "la terminologie locale utilisée dans le message PN13 est à traduire entre timing.frequency, timing.period et timing.periodUnit"
* group[0].element[1].target[1].code = $FhirDosage#Dosage.timing.period
* group[0].element[1].target[1].equivalence = #relatedto
* group[0].element[1].target[1].comment = "la terminologie locale utilisée dans le message PN13 est à traduire entre timing.frequency, timing.period et timing.periodUnit"
* group[0].element[1].target[2].code = $FhirDosage#Dosage.timing.periodUnit
* group[0].element[1].target[2].equivalence = #relatedto
* group[0].element[1].target[2].comment = "la terminologie locale utilisée dans le message PN13 est à traduire entre timing.frequency, timing.period et timing.periodUnit"
* group[1].element[0].code = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_échelle
* group[1].element[0].target[0].code = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[0].equivalence = #equivalent
* group[1].element[0].target[0].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_échelle
* group[1].element[0].target[0].dependsOn[0].value = "1"
* group[1].element[0].target[0].dependsOn[1].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_filtre
* group[1].element[0].target[0].dependsOn[1].value = "<Null>"
* group[1].element[0].target[0].product[0].property = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[0].product[0].value = "s"
* group[1].element[0].target[1].code = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[1].equivalence = #equivalent
* group[1].element[0].target[1].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_échelle
* group[1].element[0].target[1].dependsOn[0].value = "2"
* group[1].element[0].target[1].dependsOn[1].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_filtre
* group[1].element[0].target[1].dependsOn[1].value = "<Null>"
* group[1].element[0].target[1].product[0].property = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[1].product[0].value = "min"
* group[1].element[0].target[2].code = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[2].equivalence = #equivalent
* group[1].element[0].target[2].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_échelle
* group[1].element[0].target[2].dependsOn[0].value = "3"
* group[1].element[0].target[2].dependsOn[1].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_filtre
* group[1].element[0].target[2].dependsOn[1].value = "<Null>"
* group[1].element[0].target[2].product[0].property = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[2].product[0].value = "h"
* group[1].element[0].target[3].code = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[3].equivalence = #equivalent
* group[1].element[0].target[3].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_échelle
* group[1].element[0].target[3].dependsOn[0].value = "4"
* group[1].element[0].target[3].dependsOn[1].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_filtre
* group[1].element[0].target[3].dependsOn[1].value = "<Null>"
* group[1].element[0].target[3].product[0].property = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[3].product[0].value = "d"
* group[1].element[4].target[4].code = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[4].equivalence = #equivalent
* group[1].element[0].target[4].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_échelle
* group[1].element[0].target[4].dependsOn[0].value = "5"
* group[1].element[0].target[4].dependsOn[1].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_filtre
* group[1].element[0].target[4].dependsOn[1].value = "<Null>"
* group[1].element[0].target[4].product[0].property = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[4].product[0].value = "wk"
* group[1].element[0].target[5].code = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[5].equivalence = #equivalent
* group[1].element[0].target[5].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_échelle
* group[1].element[0].target[5].dependsOn[0].value = "6"
* group[1].element[0].target[5].dependsOn[1].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_filtre
* group[1].element[0].target[5].dependsOn[1].value = "<Null>"
* group[1].element[0].target[5].product[0].property = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[5].product[0].value = "mo"
* group[1].element[0].target[6].code = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[6].equivalence = #equivalent
* group[1].element[0].target[6].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_échelle
* group[1].element[0].target[6].dependsOn[0].value = "7"
* group[1].element[0].target[6].dependsOn[1].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_filtre
* group[1].element[0].target[6].dependsOn[1].value = "<Null>"
* group[1].element[0].target[6].product[0].property = $FhirDosage#Dosage.timing.repeat.periodUnit
* group[1].element[0].target[6].product[0].value = "a"
* group[1].element[1].code = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_durée
* group[1].element[1].target[0].code = $FhirDosage#Dosage.timing.repeat.period
* group[1].element[1].target[0].equivalence = #equivalent
* group[1].element[1].target[0].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_durée
* group[1].element[1].target[0].dependsOn[0].value = "<Null>"
* group[1].element[1].target[6].dependsOn[1].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_filtre
* group[1].element[1].target[6].dependsOn[1].value = "<Null>"
* group[1].element[1].target[0].product[0].property = $FhirDosage#Dosage.timing.repeat.period
* group[1].element[1].target[0].product[0].value = "1"
* group[1].element[1].target[1].code = $FhirDosage#Dosage.timing.repeat.period
* group[1].element[1].target[1].equivalence = #equal
* group[1].element[2].code = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_multiplicité
* group[1].element[2].target[0].code = $FhirDosage#Dosage.timing.repeat.frequency
* group[1].element[2].target[0].equivalence = #equivalent
* group[1].element[2].target[0].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_multiplicité
* group[1].element[2].target[0].dependsOn[0].value = "<Null>"
* group[1].element[2].target[6].dependsOn[1].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_filtre
* group[1].element[2].target[6].dependsOn[1].value = "<Null>"
* group[1].element[2].target[0].product[0].property = $FhirDosage#Dosage.timing.repeat.frequency
* group[1].element[2].target[0].product[0].value = "1"
* group[1].element[2].target[1].code = $FhirDosage#Dosage.timing.repeat.frequency
* group[1].element[2].target[1].equivalence = #equal
* group[2].element[0].code = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J
* group[2].element[0].target[0].code = $FhirDosage#Dosage.timing.repeat.dayOfWeek
* group[2].element[0].target[0].equivalence = #equivalent
* group[2].element[0].target[0].comment = "Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée"
* group[2].element[0].target[0].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J
* group[2].element[0].target[0].dependsOn[0].value = "1"
* group[2].element[0].target[0].product[0].property = $FhirDosage#Dosage.timing.repeat.dayOfWeek
* group[2].element[0].target[0].product[0].value = "mon"
* group[2].element[1].code = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J
* group[2].element[1].target[1].code = $FhirDosage#Dosage.timing.repeat.dayOfWeek
* group[2].element[1].target[1].equivalence = #equivalent
* group[2].element[1].target[1].comment = "Si présence d'élémént(s) Frq_filtreVal_1_N, chaque Frq_filtreVal_1_N donne lieu à une occurrence de dosageInstruction reprenant dans les éléments et indiquant dans timing.repeat.boundsPeriod la semaine concernée"
* group[2].element[1].target[1].dependsOn[0].property = $PN13Schema-Posologie#Elément_posologie/Fréquence_structurée/Frq_filtre/Frq_filtreVal_1_J
* group[2].element[1].target[1].dependsOn[0].value = "2"
* group[2].element[1].target[1].product[0].property = $FhirDosage#Dosage.timing.repeat.dayOfWeek
* group[2].element[1].target[1].product[0].value = "tue"