Instance: PN13-FHIR-analpharm-val-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* name = "FrPN13FHIRPharmaceuticalAnalysisValidationConceptMap"
* title = "Conversion PN13 vers FHIR pour le résultat d'une analyse pharmaceutiquede type validation"
* status = #draft
* version = "0.1"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion PN13 vers FHIR d'un résultat d'une analyse pharmaceutique de type validation"
* jurisdiction[0].coding[0].code = $ISO3166#FRA
* jurisdiction[0].coding[0].display = "France"
// A voir quel uri peut être utiliser pour le schema XSD PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13Schema
* targetUri = Canonical(fr-inpatient-pharmaceutical-analysis-result)
* group[0].element[0].code = $PN13Schema#Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Dh_validation
* group[=].element[=].target[0].code = #Task.authoredOn
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "La date et l'heure sont à mettre au format FHIR avec offset"
* group[=].element[+].code = $PN13Schema#Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Identification_pharmacien
* group[=].element[=].target[0].code = #Task.owner
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "La référence Task.owner est à constituer à partir des sous-éléments <Identifiant> et <Domaine_identification>"
* group[=].element[+].code = $PN13Schema#Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Id_pharmacien
* group[=].element[=].target[0].code = #Task.owner
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "La référence Task.owner est à constituer à partir de l'élément <Id_pharmacien>"
* group[+].element[0].code = $PN13Schema#Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Validation_pharm
* group[=].element[=].target[0].code = #Task.output
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Validation_pharm
* group[=].element[=].target[=].dependsOn[=].value = "1"
* group[=].element[=].target[=].dependsOn[+].property = $PN13Schema#Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Cré_arr_mod_val
* group[=].element[=].target[=].dependsOn[=].value = "{Absent ou vide}"
* group[=].element[=].target[=].product[0].property = #Task.output.type.text
* group[=].element[=].target[=].product[=].value = "résultat de l'analyse"
* group[=].element[=].target[=].product[+].property = #Task.output.valueCode
* group[=].element[=].target[=].product[=].value = "VALIDATION"
* group[+].element[0].code = $PN13Schema#Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Commentaire_pharmacien
* group[=].element[=].target[0].code = #Task.output.valueString
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].product[0].property = #Task.output.type.text
* group[=].element[=].target[=].product[=].value = "commentaire"
* group[=].element[+].code = $PN13Schema#Messages/M_Compte_rendu_analyse/Compte_rendu_pharm/Elément_prescr_parm/Commentaire_structuré/Texte
* group[=].element[=].target[0].code = #Task.output.valueString
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].product[0].property = #Task.output.type.text
* group[=].element[=].target[=].product[=].value = "commentaire"
