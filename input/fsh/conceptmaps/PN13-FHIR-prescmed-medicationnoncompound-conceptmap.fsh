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
* group[0].element[0].target[0].equivalence = #unmatched
* group[0].element[1].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_2
* group[0].element[1].target[0].equivalence = #unmatched
* group[0].element[2].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_3
* group[0].element[2].target[0].equivalence = #unmatched
* group[0].element[3].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_4
* group[0].element[3].target[0].equivalence = #unmatched
* group[0].element[4].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_5
* group[0].element[4].target[0].equivalence = #unmatched
* group[0].element[5].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_6
* group[0].element[5].target[0].equivalence = #unmatched
* group[0].element[6].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_7
* group[0].element[6].target[0].equivalence = #unmatched
* group[0].element[7].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_8
* group[0].element[7].target[0].equivalence = #unmatched
* group[0].element[8].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_9
* group[0].element[8].target[0].equivalence = #unmatched
* group[0].element[9].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_10
* group[0].element[9].target[0].equivalence = #unmatched
* group[0].element[10].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_11
* group[0].element[10].target[0].equivalence = #unmatched
* group[0].element[11].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_12
* group[0].element[11].target[0].equivalence = #unmatched
* group[0].element[12].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_13
* group[0].element[12].target[0].equivalence = #unmatched
* group[0].element[13].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Type_composant_14
* group[0].element[13].target[0].equivalence = #unmatched
* group[1].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_1
* group[1].element[0].target[0].code = #Medication.code.coding.code
* group[1].element[0].target[0].equivalence = #equivalent
* group[1].element[0].target[0].comment = "Le code à utiliser en FHIR est un code UCD13, ce qui veut dire que si le code fournit dans la prescription PN13 n'est par un code UCD13, il convient de le traduire en UCD13 pour alimenter #Medication.code.coding.code"
* group[1].element[0].target[0].product[0].property = #Medication.code.coding.system
* group[1].element[0].target[0].product[0].value = "http://data.esante.gouv.fr/ansm/medicament/UCD"
* group[1].element[1].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_2
* group[1].element[1].target[0].code = #Medication.code.coding.code
* group[1].element[1].target[0].equivalence = #equivalent
* group[1].element[1].target[0].comment = "Le code à utiliser en FHIR est un code UCD13, ce qui veut dire que si le code fournit dans la prescription PN13 n'est pas un code UCD13, il convient de le traduire en UCD13 pour alimenter #Medication.code.coding.code"
* group[1].element[1].target[0].product[0].property = #Medication.code.coding.system
* group[1].element[1].target[0].product[0].value = "http://data.esante.gouv.fr/ansm/medicament/UCD"
* group[1].element[2].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_3
* group[1].element[2].target[0].code = #Medication.code.coding.code
* group[1].element[2].target[0].equivalence = #equivalent
* group[1].element[2].target[0].comment = "Le code à utiliser en FHIR est un code SMS s'il existe ou un code technique ANSM dans l'attente de l'attribution d'un code SMS, ce qui veut dire que si le code fournit n'est pas un code SMS, il convient de vérifier que c'est un code technique ANSM pour lequel il n'existe pas de code SMS ou, dans le cas contraitre, de traduire le code en code SMS. Le système à utiliser est soit http://data.esante.gouv.fr/ansm/medicament/CodeSMS pour les codes SMS, soit http://data.esante.gouv.fr/ansm/medicament/Substance pour les codes techniques ANSM"
* group[1].element[3].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_4
* group[1].element[3].target[0].code = #Medication.code.coding.code
* group[1].element[3].target[0].equivalence = #equal
* group[1].element[3].target[0].comment = "Le code utilisé pour une préparation hospitalière est un code local, Medication.code.coding.system est alors à définir pour identifier dans quel périmètre ce code peut être compris"
* group[1].element[4].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_5
* group[1].element[4].target[0].code = #Medication.code.coding.code
* group[1].element[4].target[0].equivalence = #equivalent
* group[1].element[4].target[0].comment = "Le code à utiliser en FHIR est un code UCD13, ce qui veut dire que si le code fournit dans la prescription PN13 n'est par un code UCD13, il convient de le traduire en UCD13 pour alimenter #Medication.code.coding.code"
* group[1].element[4].target[0].product[0].property = #Medication.code.coding.system
* group[1].element[4].target[0].product[0].value = "http://data.esante.gouv.fr/ansm/medicament/UCD"
* group[1].element[5].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_6
* group[1].element[5].target[0].code = #Medication.code.coding.code
* group[1].element[5].target[0].equivalence = #equivalent
* group[1].element[5].target[0].comment = "Le code à utiliser en FHIR est un code UCD13, ce qui veut dire que si le code fournit dans la prescription PN13 n'est par un code UCD13, il convient de le traduire en UCD13 pour alimenter #Medication.code.coding.code"
* group[1].element[5].target[0].product[0].property = #Medication.code.coding.system
* group[1].element[5].target[0].product[0].value = "http://data.esante.gouv.fr/ansm/medicament/UCD"
* group[1].element[6].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_7
* group[1].element[6].target[0].code = #Medication.code.coding.code
* group[1].element[6].target[0].equivalence = #equal
* group[1].element[6].target[0].comment = "Le code utilisé pour une préparation magistrale est un code local, Medication.code.coding.system est alors à définir pour identifier dans quel périmètre ce code peut être compris"
* group[1].element[7].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_8
* group[1].element[7].target[0].code = #Medication.code.coding.code
* group[1].element[7].target[0].equivalence = #equivalent
* group[1].element[7].target[0].comment = "Le code à utiliser en FHIR est un code SMS s'il existe ou un code technique ANSM dans l'attente de l'attribution d'un code SMS, ce qui veut dire que si le code fournit n'est pas un code SMS, il convient de vérifier que c'est un code technique ANSM pour lequel il n'existe pas de code SMS ou, dans le cas contraitre, de traduire le code en code SMS. Le système à utiliser est soit http://data.esante.gouv.fr/ansm/medicament/CodeSMS pour les codes SMS, soit http://data.esante.gouv.fr/ansm/medicament/Substance pour les codes techniques ANSM"
* group[1].element[8].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_9
* group[1].element[8].target[0].code = #Medication.code.coding.code
* group[1].element[8].target[0].equivalence = #inexact
* group[1].element[8].target[0].comment = "Les codes locaux des bases médicamenteuses ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
* group[1].element[9].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_10
* group[1].element[9].target[0].code = #Medication.code.coding.code
* group[1].element[9].target[0].equivalence = #inexact
* group[1].element[9].target[0].comment = "Les codes locaux des bases médicamenteuses ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
* group[1].element[10].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_11
* group[1].element[10].target[0].code = #Medication.code.coding.code
* group[1].element[10].target[0].equivalence = #inexact
* group[1].element[10].target[0].comment = "Les codes locaux des bases médicamenteuses ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
* group[1].element[11].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_12
* group[1].element[11].target[0].code = #Medication.code.coding.code
* group[1].element[11].target[0].equivalence = #inexact
* group[1].element[11].target[0].comment = "Les codes locaux des bases médicamenteuses ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
* group[1].element[12].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_13
* group[1].element[12].target[0].code = #Medication.code.coding.code
* group[1].element[12].target[0].equivalence = #equivalent
* group[1].element[12].target[0].comment = "Le code à utiliser en FHIR est un code SMS s'il existe ou un code technique ANSM dans l'attente de l'attribution d'un code SMS, ce qui veut dire que si le code fournit n'est pas un code SMS, il convient de vérifier que c'est un code technique ANSM pour lequel il n'existe pas de code SMS ou, dans le cas contraitre, de traduire le code en code SMS. Le système à utiliser est soit http://data.esante.gouv.fr/ansm/medicament/CodeSMS pour les codes SMS, soit http://data.esante.gouv.fr/ansm/medicament/Substance pour les codes techniques ANSM"
* group[1].element[13].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Code_composant_14
* group[1].element[13].target[0].code = #Medication.code.coding.code
* group[1].element[13].target[0].equivalence = #inexact
* group[1].element[13].target[0].comment = "Les codes medicabase ne sont pas à utiliser seuls dans les prescription FHIR, ils peuvent être utiliser en complément d'un code SMS ou d'un code technique ANSM dans une autre occurrence de Medication.code.coding mais un code SMS ou un code technique ANSM doit être fourni dans la ressource FHIR"
* group[2].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Libellé_composant
* group[2].element[0].target[0].code = #Medication.code.text
* group[2].element[0].target[0].equivalence = #equal
* group[3].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite/Nombre
* group[3].element[0].target[0].code = #Medication.amount.numerator.value
* group[3].element[0].target[0].equivalence = #equal
* group[3].element[1].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite/Unité
* group[3].element[1].target[0].code = #Medication.amount.numerator.code
* group[3].element[1].target[0].equivalence = #equal
* group[3].element[1].target[0].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite/Unité@Phast-nomenclature
* group[3].element[1].target[0].dependsOn[0].value = "EDQM"
* group[3].element[1].target[0].product[0].property = $FhirDosage#Dosage.doseAndRate.doseQuantity.system
* group[3].element[1].target[0].product[0].value = "http://data.esante.gouv.fr/coe/standardterms"
* group[3].element[2].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite/Unité
* group[3].element[2].target[0].code = #Medication.amount.numerator.code
* group[3].element[2].target[0].equivalence = #equal
* group[3].element[2].target[0].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite/Unité@Phast-nomenclature
* group[3].element[2].target[0].dependsOn[0].value = "UCUM"
* group[3].element[2].target[0].product[0].property = $FhirDosage#Dosage.doseAndRate.doseQuantity.system
* group[3].element[2].target[0].product[0].value = "http://unitsofmeasure.org"
* group[3].element[3].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Quantité_composant_prescrite/Unité
* group[3].element[3].target[0].code = #Medication.amount.numerator.unit
* group[3].element[3].target[0].equivalence = #relatedto
* group[3].element[3].target[0].comment = "Si Quantité/Unité n'est pas exprimée en EDQM, il est recommander, si possible, de la traduire en EDQM et d'utiliser amount.numerator.code et de référencer la terminologie utilisée dans amount.numerator.system. Si ce n'est pas possible, amount.numerator.unit peut être utilisé mais pourrait poser des problèmes d'interprétation."
* group[4].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Référent_poso
* group[4].element[0].target[0].equivalence = #disjoint
* group[4].element[0].target[0].comment = "Cette élément est mappé au niveau de la ressource ConceptMap PN13-FHIR-prescmed-dosageinstruction-conceptmap"
* group[5].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/ALD_exonérante
* group[5].element[0].target[0].equivalence = #unmatched
* group[6].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Indication
* group[6].element[0].target[0].equivalence = #disjoint
* group[6].element[0].target[0].comment = "Prévu pour une version ultérieure de ce guide"
* group[7].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Indication_structurée
* group[7].element[0].target[0].equivalence = #disjoint
* group[7].element[0].target[0].comment = "Prévu pour une version ultérieure de ce guide"
* group[8].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Commentaire
* group[8].element[0].target[0].equivalence = #disjoint
* group[8].element[0].target[0].comment = "Prévu pour une version ultérieure de ce guide"
* group[9].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Commentaire_structuré
* group[9].element[0].target[0].equivalence = #disjoint
* group[9].element[0].target[0].comment = "Prévu pour une version ultérieure de ce guide"
* group[10].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Véhicule
* group[10].element[0].target[0].code = #Medication.extension($fr-is-vehicle).valueBoolean
* group[10].element[0].target[0].equivalence = #equal
* group[11].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Non_substituable
* group[11].element[0].target[0].equivalence = #disjoint
* group[11].element[0].target[0].comment = "Cet élément est mappé au niveau de la ressource ConceptMap PN13-FHIR-prescmed-medicationrequest-conceptmap"
* group[12].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[12].element[0].target[0].equivalence = #disjoint
* group[12].element[0].target[0].comment = "Dans le cas des médicaments composés, la forme est à indiqué au niveau de la ressource Medication chapeau suivant le profil fr-medication-compound"
* group[12].element[0].target[0].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic
* group[12].element[0].target[0].dependsOn[0].value = "{Présence de plusieurs éléments Elément_prescr_médic dans le message PN13}"
* group[12].element[1].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[12].element[1].target[0].code = #Medication.form.coding.code
* group[12].element[1].target[0].equivalence = #equivalent
* group[12].element[1].target[0].comment = "le code cible est à trouver dans le mapping Free Set CIO-DC FORME"
* group[12].element[1].target[0].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[12].element[1].target[0].dependsOn[0].value = "SIPh-CIO_Forme"
* group[12].element[1].target[0].dependsOn[1].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic
* group[12].element[1].target[0].dependsOn[1].value = "{Présence d'un seul élément Elément_prescr_médic dans le message PN13}"
* group[12].element[2].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[12].element[2].target[0].code = #Medication.form.coding.code
* group[12].element[2].target[0].equivalence = #equivalent
* group[12].element[2].target[0].comment = "le code cible est à trouver dans le mapping Free Set CIO-DC FORME"
* group[12].element[2].target[0].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[12].element[2].target[0].dependsOn[0].value = "{Absent}"
* group[12].element[2].target[0].dependsOn[1].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic
* group[12].element[2].target[0].dependsOn[1].value = "{Présence d'un seul élément Elément_prescr_médic dans le message PN13}"
* group[12].element[3].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[12].element[3].target[0].code = #Medication.form.coding.code
* group[12].element[3].target[0].equivalence = #equal
* group[12].element[3].target[0].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[12].element[3].target[0].dependsOn[0].value = "EDQM"
* group[12].element[3].target[0].product[0].property = #Medication.form.coding.system
* group[12].element[3].target[0].product[0].value = "http://standardterms.edqm.eu"
* group[12].element[3].target[0].dependsOn[1].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic
* group[12].element[3].target[0].dependsOn[1].value = "{Présence d'un seul élément Elément_prescr_médic dans le message PN13}"
* group[12].element[4].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[12].element[4].target[0].code = #Medication.form.coding.code
* group[12].element[4].target[0].equivalence = #relatedto
* group[12].element[4].target[0].comment = "Certains codes cibles peuvent être trouvés dans le mapping Free Set CIO-DC FORME. Dans le cas contraire, si la traduction en EDQM n'est pas possible, Medication.form.text peut être utilisé mais pourrait poser des problèmes d'interprétation"
* group[12].element[4].target[0].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme@Phast-nomenclature
* group[12].element[4].target[0].dependsOn[0].value = "SIPh-Forme"
* group[12].element[4].target[0].dependsOn[1].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic
* group[12].element[4].target[0].dependsOn[1].value = "{Présence d'un seul élément Elément_prescr_médic dans le message PN13}"