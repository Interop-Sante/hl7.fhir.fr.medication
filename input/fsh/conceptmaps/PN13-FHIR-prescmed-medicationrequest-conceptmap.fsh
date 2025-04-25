Instance: PN13-FHIR-prescmed-medicationrequest-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* name = "FrPN13FHIRMedicationPrescriptionMedicationRequestConceptMap"
* title = "Conversion PN13 vers FHIR pour la ligne de prescription d'une prescription de médicaments"
* status = #draft
* version = "0.1"
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion PN13 vers FHIR d'une ligne de prescription d'une prescritpion de médicament"
* jurisdiction.coding.code = $ISO3166#FRA
* jurisdiction.coding.display = "France"
// A voir quel uri peut être utiliser pour le schema XSD PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13Schema
* targetUri = Canonical(fr-inpatient-medicationrequest)
* group[0].element[0].code =  $PN13Schema#Messages@Phast-id_message
* group[=].element[=].target[0].code = #MedicationRequest.groupIdentifier.value
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].comment = "Si l'identifiant de message n'est pas présent, le groupIdentifier est à attribuer par le système effectuant la traduction du message PN13 de manière à ce que le couple (identfier.value,identifier.system)  soit unique pour chaque prescription"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.groupIdentifier.system
* group[=].element[=].target[=].product[=].value = "{A attribuer par le systéme effectuant la traduction en fonction du système émetteur du message PN13}"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Mode_communication
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Dh_prescription
* group[=].element[=].target[0].code = #MedicationRequest.authoredOn
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "La date et l'heure sont à mettre au format FHIR avec offset"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Unité_hébergement
* group[=].element[=].target[0].code = #MedicationRequest.supportingInformation.identifier
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].product[0].property = #MedicationRequestion.supportingInformation.system
* group[=].element[=].target[=].product[=].value = "{A attribuer par le systéme effectuant la traduction}"
* group[=].element[=].target[=].product[+].property = #MedicationRequestion.supportingInformation.extension.url
* group[=].element[=].target[=].product[=].value = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-uf-role"
* group[=].element[=].target[=].product[+].property = #MedicationRequestion.supportingInformation.extension.valueCode
* group[=].element[=].target[=].product[=].value = "UFHEB"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Unité_resp_médicale
* group[=].element[=].target[0].code = #MedicationRequest.supportingInformation.identifier
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].product[0].property = #MedicationRequestion.supportingInformation.system
* group[=].element[=].target[=].product[=].value = "{A attribuer par le systéme effectuant la traduction}"
* group[=].element[=].target[=].product[+].property = #MedicationRequestion.supportingInformation.extension.url
* group[=].element[=].target[=].product[=].value = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-uf-role"
* group[=].element[=].target[=].product[+].property = #MedicationRequestion.supportingInformation.extension.valueCode
* group[=].element[=].target[=].product[=].value = "UFMED"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire
* group[=].element[=].target[0].code = #MedicationRequest.note.text
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le texte est à préfixer par `Commentaire sur la prescription:`"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.note.extension.url
* group[=].element[=].target[=].product[=].value = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.note.extension.valueCode
* group[=].element[=].target[=].product[=].value = "PRESCCOM"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Rôle_auteur
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Identifiant
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.identifier.value
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Domaine_identification
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.identifier.system
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Nom_usage
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Prénom_usage
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Initiales
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Civilité
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Titre
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Nom_famille
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_auteur/Prénoms
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Rôle_destinataire
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Identification_destinataire
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Criticité
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Commentaire_structuré/Texte
* group[=].element[=].target[0].code = #MedicationRequest.note.text
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le texte est à préfixer par `Commentaire sur la prescription:`"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.note.extension.url
* group[=].element[=].target[=].product[=].value = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.note.extension.valueCode
* group[=].element[=].target[=].product[=].value = "PRESCCOM"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Rens_compl
* group[=].element[=].target[0].code = #MedicationRequest.supportingInformation.reference
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Ressource Observation à créer en se basant sur la ressourece conceptMap PN13-FHIR-observation-conceptmap et à référencer dans MedicationRequest.supportingInformation.reference"
* group[=].element[=].target[=].dependsOn[0].property = #Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl
* group[=].element[=].target[=].dependsOn[=].value = "{Absent}"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl
* group[=].element[=].target[0].code = #MedicationRequest.note.text
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Reprendre la valeur de Valeur_rens_compl en la préfixant par le libellé du type de renseignement complémentaire (Code_rens_compl) issu de la terminologie SIPh_RensComplement"
* group[=].element[=].target[=].dependsOn[0].property = #Messages/M_prescription_médicaments/Prescription/Rens_compl/Valeur_rens_compl
* group[=].element[=].target[=].dependsOn[=].value = "{Présent}"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.note.extension.url
* group[=].element[=].target[=].product[=].value = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.note.extension.valueCode
* group[=].element[=].target[=].product[=].value = "LIPRESCRENSCOMP"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Id_élément_prescr
* group[=].element[=].target[0].code = #MedicationRequest.identifier.value
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].product[0].property = #MedicationRequest.identifier.system
* group[=].element[=].target[=].product[=].value = "{A attribuer par le systéme effectuant la traduction en fonction du système émetteur du message PN13}"
* group[+].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Type_élément_prescr
* group[=].element[=].target[0].code = #MedicationRequest.medicationReference.reference
* group[=].element[=].target[=].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Forme
* group[=].element[=].target[0].code = #MedicationRequest.medicationReference.reference
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Voir les ressources concepMap PN13-FHIR-Prescmedi-medicationComp-conceptmap ou PN13-FHIR-Prescmedi-medicationNonComp-conceptmap pour le détail du mapping de cet élément"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Libellé_élément_prescr
* group[=].element[=].target[0].code = #MedicationRequest.note.text
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le texte est à préfixer par `Libellé textuel du médicament:`"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.note.extension.url
* group[=].element[=].target[=].product[=].value = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.note.extension.valueCode
* group[=].element[=].target[=].product[=].value = "LIPRESCLIBMED"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Cré_arr_mod_val
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent
* group[=].element[=].target[0].code = #MedicationRequest.priority
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent
* group[=].element[=].target[=].dependsOn[=].value = "true"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.priority
* group[=].element[=].target[=].product[=].value = "urgent"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent
* group[=].element[=].target[0].code = #MedicationRequest.priority
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent
* group[=].element[=].target[=].dependsOn[=].value = "false"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.priority
* group[=].element[=].target[=].product[=].value = "routine"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent
* group[=].element[=].target[0].code = #MedicationRequest.priority
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Urgent
* group[=].element[=].target[=].dependsOn[=].value = "{Absent}"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.priority
* group[=].element[=].target[=].product[=].value = "routine"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Fourniture
* group[=].element[=].target[0].code = #MedicationRequest.medication[x].extension.valueBoolean
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].product[0].property = #MedicationRequest.medication[x].extension.url
* group[=].element[=].target[=].product[=].value = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medication-to-dispense"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Id_prescripteur
* group[=].element[=].target[0].code = #MedicationRequest.requester
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Voir la ressource concepMap PN13-FHIR-prescmed-practitioner-id-seul-conceptmap pour le détail du mapping de cet élément"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Identification_prescripteur
* group[=].element[=].target[0].code = #MedicationRequest.requester
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Voir la ressource concepMap PN13-FHIR-presmed-practitioner-identite-conceptmap pour le détail du mapping de cet élément"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration
* group[=].element[=].target[0].code = #MedicationRequest.dosageInstruction.route.coding.code
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration@Phast-nomenclature
* group[=].element[=].target[=].dependsOn[=].value = "EDQM"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.dosageInstruction.route.coding.system
* group[=].element[=].target[=].product[=].value = "http://standardterms.edqm.eu"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration
* group[=].element[=].target[0].code = #MedicationRequest.dosageInstruction.route.coding.code
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "le code cible est à trouver dans le mapping Free Set CIO-DC VOIE"
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration@Phast-nomenclature
* group[=].element[=].target[=].dependsOn[=].value = "SIPh-CIO_Voie_administration"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.dosageInstruction.route.coding.system
* group[=].element[=].target[=].product[=].value = "http://standardterms.edqm.eu"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration
* group[=].element[=].target[0].code = #MedicationRequest.dosageInstruction.route.coding.code
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "le code cible est à trouver dans le mapping Free Set CIO-DC VOIE"
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration@Phast-nomenclature
* group[=].element[=].target[=].dependsOn[=].value = "{Absent}"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.dosageInstruction.route.coding.system
* group[=].element[=].target[=].product[=].value = "http://standardterms.edqm.eu"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration
* group[=].element[=].target[0].code = #MedicationRequest.dosageInstruction.route.text
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le code SIPh est à traduire en code EDQM si possible (le cas échéant en utilisant le mapping Free Set CIO-DC VOIE) à indiquer dans MedicationRequest.dosageInstruction.route.coding.code avec MedicationRequest.dosageInstruction.route.coding.system valorisé à http://standardterms.edqm.eu. Si ce n'est pas possible MedicationRequest.dosageInstruction.route.text peut être utilisé pour mettre le libellé de la voie d'administration"
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Voie_administration@Phast-nomenclature
* group[=].element[=].target[=].dependsOn[=].value = "SIPh-Voie_administration"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Lieu_administration
* group[=].element[=].target[0].code = #MedicationRequest.dispenseRequest.performer.display
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dispositif_associé
* group[=].element[=].target[0].code = #MedicationRequest.supportingInformation.display
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[=].target[=].product[0].property = #MedicationRequest.supportingInformation.type
* group[=].element[=].target[=].product[=].value = "Device"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Posologie
* group[=].element[=].target[0].code = #MedicationRequest.note.text
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le texte est à préfixer par `Libellé textuel de la posologie:`"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.note.extension.url
* group[=].element[=].target[=].product[=].value = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.note.extension.valueCode
* group[=].element[=].target[=].product[=].value = "LIPRESCPOS"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_début_prescrite
* group[=].element[=].target[0].code = #MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.start
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "La date et l'heure sont à mettre au format FHIR avec offset"
* group[=].element[=].target[=].dependsOn[0].property = #Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_début
* group[=].element[=].target[=].dependsOn[=].value = "{Absent}"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_début_prescrite
* group[=].element[=].target[0].equivalence = #disjoint
* group[=].element[=].target[=].comment = "Dans le cas où l'élément Dh_début est présent, Dh_début_prescrite n'est pas mappé cf. la prescription - vue d'ensemble section Précisions sur dates et durée de prescription"
* group[=].element[=].target[=].dependsOn[0].property = #Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_début
* group[=].element[=].target[=].dependsOn[=].value = "{Présent}"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_début
* group[=].element[=].target[0].code = #MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.start
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "La date et l'heure sont à mettre au format FHIR avec offset"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_fin_prescrite
* group[=].element[=].target[0].code = #MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.end
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "La date et l'heure sont à mettre au format FHIR avec offset"
* group[=].element[=].target[=].dependsOn[0].property = #Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_fin
* group[=].element[=].target[=].dependsOn[=].value = "{Absent}"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_fin_prescrite
* group[=].element[=].target[0].equivalence = #disjoint
* group[=].element[=].target[=].comment = "Dans le cas où l'élément Dh_fin est présent, Dh_finprescrite n'est pas mappé cf. la prescription - vue d'ensemble section Précisions sur dates et durée de prescription"
* group[=].element[=].target[=].dependsOn[0].property = #Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_fin
* group[=].element[=].target[=].dependsOn[=].value = "{Présent}"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Dh_fin
* group[=].element[=].target[0].code = #MedicationRequest.dosageInstruction.timing.repeat.boundsPeriod.end
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "La date et l'heure sont à mettre au format FHIR avec offset"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Indication
* group[=].element[=].target[0].code = #MedicationRequest.note.text
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le texte est à préfixer par `Indication sur la ligne de prescription:`"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.note.extension.url
* group[=].element[=].target[=].product[=].value = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.note.extension.valueCode
* group[=].element[=].target[=].product[=].value = "LIPRESCIND"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire
* group[=].element[=].target[0].code = #MedicationRequest.note.text
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le texte est à préfixer par `Commentaire sur la ligne de prescription:`"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.note.extension.url
* group[=].element[=].target[=].product[=].value = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.note.extension.valueCode
* group[=].element[=].target[=].product[=].value = "LIPRESCCOMM"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Rôle_auteur
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Identifiant
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.identifier.value
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Domaine_identification
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.identifier.system
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Nom_usage
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Prénom_usage
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Initiales
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Civilité
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Titre
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Nom_famille
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_auteur/Prénoms
* group[=].element[=].target[0].code = #MedicationRequest.note.authorReference.display
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Peut être utilisé pour constituer display en concaténant tout ou partie des éléments relatedto"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Rôle_destinataire
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Identification_destinataire
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Criticité
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Commentaire_structuré/Texte
* group[=].element[=].target[0].code = #MedicationRequest.note.text
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le texte est à préfixer par `Commentaire sur la ligne de prescription:`"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.note.extension.url
* group[=].element[=].target[=].product[=].value = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.note.extension.valueCode
* group[=].element[=].target[=].product[=].value = "LIPRESCCOMM"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Rang_élément_prescr
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Id_protocole_prescrit
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo
* group[=].element[=].target[0].code = #MedicationRequest.status
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo
* group[=].element[=].target[=].dependsOn[=].value = "0"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.status
* group[=].element[=].target[=].product[=].value = "unknown"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.intent
* group[=].element[=].target[=].product[=].value = "order"
* group[=].element[+].target[0].code = #MedicationRequest.status
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo
* group[=].element[=].target[=].dependsOn[=].value = "1"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.status
* group[=].element[=].target[=].product[=].value = "on-hold"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.intent
* group[=].element[=].target[=].product[=].value = "order"
* group[=].element[+].target[0].code = #MedicationRequest.status
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo
* group[=].element[=].target[=].dependsOn[=].value = "2"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.status
* group[=].element[=].target[=].product[=].value = "active"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.intent
* group[=].element[=].target[=].product[=].value = "order"
* group[=].element[+].target[0].code = #MedicationRequest.status
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo
* group[=].element[=].target[=].dependsOn[=].value = "3"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.status
* group[=].element[=].target[=].product[=].value = "active"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.intent
* group[=].element[=].target[=].product[=].value = "order"
* group[=].element[+].target[0].code = #MedicationRequest.status
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo
* group[=].element[=].target[=].dependsOn[=].value = "4"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.status
* group[=].element[=].target[=].product[=].value = "cancelled"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.intent
* group[=].element[=].target[=].product[=].value = "order"
* group[=].element[+].target[0].code = #MedicationRequest.status
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].dependsOn[0].property = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/GoNogo
* group[=].element[=].target[=].dependsOn[=].value = "{Absent}"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.status
* group[=].element[=].target[=].product[=].value = "active"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.intent
* group[=].element[=].target[=].product[=].value = "order"
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Motif_attente
* group[=].element[=].target[0].code = #MedicationRequest.statusReason.text
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Delta_dh_référence
* group[=].element[=].target[0].equivalence = #unmatched
* group[=].element[+].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Conditions_application
* group[=].element[=].target[0].code = #MedicationRequest.note.text
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Le texte est à préfixer par `Condition d'application sur la ligne de prescription:`"
* group[=].element[=].target[=].product[0].property = #MedicationRequest.note.extension.url
* group[=].element[=].target[=].product[=].value = "https://hl7.fr/fhir/fr/medication/StructureDefinition/fr-medicationrequest-note-scope"
* group[=].element[=].target[=].product[+].property = #MedicationRequest.note.extension.valueCode
* group[=].element[=].target[=].product[=].value = "LIPRESCCONDAPPL"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit
* group[=].element[=].target[0].code = #MedicationRequest.medicationReference
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Voir les ressources concepMap PN13-FHIR-Prescmedi-medicationComp-conceptmap ou PN13-FHIR-Prescmedi-medicationNonComp-conceptmap pour le détail du mapping de cet élément"
* group[=].element[=].target[+].code = #MedicationRequest.medicationCodeableConcept
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Si Composant_prescrit ne comporte pas d'information complémentaire à l'enregistrement du RUIM, medicationCodeableConcept peut être utilisé"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Elément_posologie
* group[=].element[=].target[0].code = #MedicationRequest.dosageInstruction
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Voir la ressource concepMap PN13-FHIR-prescmed-dosageinstruction-conceptmap pour le détail du mapping de cet élément"
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Protocole_prescrit_médic
* group[=].element[=].target[0].equivalence = #unmatched
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Non_substituable
* group[=].element[=].target[0].code = #MedicationRequest.substitution.allowedBoolean
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "POINT D'ATTENTION - La logique de cet élément est inversée entre PN13 et FHIR. Ainsi Non-substituable à faux en PN13 est à traduire en substitution.allowedBoolean à vrai en FHIR. Par ailleurs, cet élément est au niveau de médicament dans PN13 et au niveau de la ligne de prescription en FHIR. En cas de médicament composé, un opérateur logique OU Inclusif est à utiliser sur les valeurs PN13: si au moins un composant d'un médicament composé est non substituable, la ligne de prescription est considérée comme non substituable et donc l'élément substitution.allowedBoolean est valorisé à faux."
* group[+].element[0].code = $PN13Schema#Messages/M_prescription_médicaments/Prescription/Elément_prescr_médic/Composant_prescrit/Référent_poso
* group[=].element[=].target[0].code = #MedicationRequest.dosageInstruction.doseAndRate.extension($fr-basis-of-dose-component).valueReference
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[=].comment = "Porte la référence à la ressource Medication traduisant l'élément Composant_prescrit de PN13 pour lequel Référent_poso est vrai"