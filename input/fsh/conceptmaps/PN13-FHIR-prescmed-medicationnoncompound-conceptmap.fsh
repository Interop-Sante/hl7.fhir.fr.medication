Instance: PN13-FHIR-prescmed-medicationnoncompound-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* name = "FrPN13FHIRMedicationNonCompoundConceptMap"
* title = "Conversion PN13 vers FHIR pour un médicament non composé d'une prescription de médicaments"
* status = #draft
* version = "0.1"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion PN13 vers FHIR d'un médicament non composé d'une prescritpion de médicament"
* jurisdiction[0].coding[0].code = $ISO3166#FRA
* jurisdiction[0].coding[0].display = "France"
// A voir quel uri peut être utiliser pour le schema XSD PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13Schema
* targetUri = Canonical(fr-medication-noncompound)
* group[0].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_1
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_2
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_3
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_4
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_5
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_6
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_7
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_8
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_9
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_10
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_11
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_12
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_13
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_14
* group[=].element[=].target[0].equivalence = #unmatched
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_1
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le code à utiliser en FHIR est un code UCD13, ce qui veut dire que si le code fournit dans la prescription PN13 n'est par un code UCD13, il convient de le traduire en UCD13 pour alimenter #Medication.code.coding.code"
* group[=].element[=].target[=].product[0].property = #Medication.code.coding.system
* group[=].element[=].target[=].product[=].value = "http://data.esante.gouv.fr/ansm/medicament/UCD"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_2
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le code à utiliser en FHIR est un code UCD13, ce qui veut dire que si le code fournit dans la prescription PN13 n'est pas un code UCD13, il convient de le traduire en UCD13 pour alimenter #Medication.code.coding.code"
* group[=].element[=].target[=].product[0].property = #Medication.code.coding.system
* group[=].element[=].target[=].product[=].value = "http://data.esante.gouv.fr/ansm/medicament/UCD"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_3
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le code à utiliser en FHIR est un code SMS s'il existe ou un code technique ANSM dans l'attente de l'attribution d'un code SMS, ce qui veut dire que si le code fournit n'est pas un code SMS, il convient de vérifier que c'est un code technique ANSM pour lequel il n'existe pas de code SMS ou, dans le cas contraitre, de traduire le code en code SMS. Le système à utiliser est soit http://data.esante.gouv.fr/ansm/medicament/CodeSMS pour les codes SMS, soit http://data.esante.gouv.fr/ansm/medicament/Substance pour les codes techniques ANSM"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_4
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].comment = "Le code utilisé pour une préparation hospitalière est un code local, Medication.code.coding.system est alors à définir pour identifier dans quel périmètre ce code peut être compris"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_5
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le code à utiliser en FHIR est un code UCD13, ce qui veut dire que si le code fournit dans la prescription PN13 n'est par un code UCD13, il convient de le traduire en UCD13 pour alimenter #Medication.code.coding.code"
* group[=].element[=].target[=].product[0].property = #Medication.code.coding.system
* group[=].element[=].target[=].product[=].value = "http://data.esante.gouv.fr/ansm/medicament/UCD"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_6
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le code à utiliser en FHIR est un code UCD13, ce qui veut dire que si le code fournit dans la prescription PN13 n'est par un code UCD13, il convient de le traduire en UCD13 pour alimenter #Medication.code.coding.code"
* group[=].element[=].target[=].product[0].property = #Medication.code.coding.system
* group[=].element[=].target[=].product[=].value = "http://data.esante.gouv.fr/ansm/medicament/UCD"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_7
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].comment = "Le code utilisé pour une préparation magistrale est un code local, Medication.code.coding.system est alors à définir pour identifier dans quel périmètre ce code peut être compris"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_8
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le code à utiliser en FHIR est un code SMS s'il existe ou un code technique ANSM dans l'attente de l'attribution d'un code SMS, ce qui veut dire que si le code fournit n'est pas un code SMS, il convient de vérifier que c'est un code technique ANSM pour lequel il n'existe pas de code SMS ou, dans le cas contraitre, de traduire le code en code SMS. Le système à utiliser est soit http://data.esante.gouv.fr/ansm/medicament/CodeSMS pour les codes SMS, soit http://data.esante.gouv.fr/ansm/medicament/Substance pour les codes techniques ANSM"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_9
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Les codes locaux des bases médicamenteuses ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_10
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Les codes locaux des bases médicamenteuses ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_11
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Les codes locaux des bases médicamenteuses ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_12
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Les codes locaux des bases médicamenteuses ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_13
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le code à utiliser en FHIR est un code SMS s'il existe ou un code technique ANSM dans l'attente de l'attribution d'un code SMS, ce qui veut dire que si le code fournit n'est pas un code SMS, il convient de vérifier que c'est un code technique ANSM pour lequel il n'existe pas de code SMS ou, dans le cas contraitre, de traduire le code en code SMS. Le système à utiliser est soit http://data.esante.gouv.fr/ansm/medicament/CodeSMS pour les codes SMS, soit http://data.esante.gouv.fr/ansm/medicament/Substance pour les codes techniques ANSM"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_14
* group[=].element[=].target[0].code = #Medication.code.coding.code
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Les codes medicabase ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Libellé_composant
* group[=].element[=].target[0].code = #Medication.code.text
* group[=].element[=].target[=].equivalence = #equal
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite
* group[=].element[=].target[0].equivalence = #disjoint
* group[=].element[=].target[=].comment = "Cette élément est utilisé pour le mapping des doses/rates au niveau de la ressource ConceptMap PN13-FHIR-prescmed-dosageinstruction-conceptmap"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Référent_poso
* group[=].element[=].target[0].equivalence = #disjoint
* group[=].element[=].target[=].comment = "Cette élément est mappé au niveau de la ressource ConceptMap PN13-FHIR-prescmed-dosageinstruction-conceptmap"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/ALD_exonérante
* group[=].element[=].target[0].equivalence = #unmatched
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Indication
* group[=].element[=].target[0].equivalence = #disjoint
* group[=].element[=].target[=].comment = "Prévu pour une version ultérieure de ce guide"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Indication_structurée
* group[=].element[=].target[0].equivalence = #disjoint
* group[=].element[=].target[=].comment = "Prévu pour une version ultérieure de ce guide"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Commentaire
* group[=].element[=].target[0].equivalence = #disjoint
* group[=].element[=].target[=].comment = "Prévu pour une version ultérieure de ce guide"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Commentaire_structuré
* group[=].element[=].target[0].equivalence = #disjoint
* group[=].element[=].target[=].comment = "Prévu pour une version ultérieure de ce guide"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Véhicule
* group[=].element[=].target[0].code = #Medication.extension($fr-is-vehicle).valueBoolean
* group[=].element[=].target[=].equivalence = #equal
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Non_substituable
* group[=].element[=].target[0].equivalence = #disjoint
* group[=].element[=].target[=].comment = "Cet élément est mappé au niveau de la ressource ConceptMap PN13-FHIR-prescmed-medicationrequest-conceptmap"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[=].element[=].target[0].equivalence = #disjoint
* group[=].element[=].target[=].comment = "Dans le cas des médicaments composés, la forme est à indiqué au niveau de la ressource Medication chapeau suivant le profil fr-medication-compound"
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic
* group[=].element[=].target[=].dependsOn[=].value = "{Présence de plusieurs éléments Elément_prescr_médic dans le message PN13}"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[=].element[=].target[0].code = #Medication.form.coding.code
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "le code cible est à trouver dans le mapping Free Set CIO-DC FORME"
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[=].element[=].target[=].dependsOn[=].value = "SIPh-CIO_Forme"
* group[=].element[=].target[=].dependsOn[+].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic
* group[=].element[=].target[=].dependsOn[=].value = "{Présence d'un seul élément Elément_prescr_médic dans le message PN13}"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[=].element[=].target[0].code = #Medication.form.coding.code
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "le code cible est à trouver dans le mapping Free Set CIO-DC FORME"
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[=].element[=].target[=].dependsOn[=].value = "{Absent}"
* group[=].element[=].target[=].dependsOn[+].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic
* group[=].element[=].target[=].dependsOn[=].value = "{Présence d'un seul élément Elément_prescr_médic dans le message PN13}"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[=].element[=].target[0].code = #Medication.form.coding.code
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[=].element[=].target[=].dependsOn[=].value = "EDQM"
* group[=].element[=].target[=].product[0].property = #Medication.form.coding.system
* group[=].element[=].target[=].product[=].value = "http://standardterms.edqm.eu"
* group[=].element[=].target[=].dependsOn[+].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic
* group[=].element[=].target[=].dependsOn[=].value = "{Présence d'un seul élément Elément_prescr_médic dans le message PN13}"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[=].element[=].target[0].code = #Medication.form.coding.code
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Certains codes cibles peuvent être trouvés dans le mapping Free Set CIO-DC FORME. Dans le cas contraire, si la traduction en EDQM n'est pas possible, Medication.form.text peut être utilisé mais pourrait poser des problèmes d'interprétation"
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[=].element[=].target[=].dependsOn[=].value = "SIPh-Forme"
* group[=].element[=].target[=].dependsOn[+].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic
* group[=].element[=].target[=].dependsOn[=].value = "{Présence d'un seul élément Elément_prescr_médic dans le message PN13}"