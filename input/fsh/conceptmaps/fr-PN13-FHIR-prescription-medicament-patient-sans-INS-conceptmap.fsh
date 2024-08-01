Instance: fr-PN13-FHIR-prescription-medicament-patient-sans-INS-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* name = "FrPN13FHIRMedicationPrescriptionPatientSansINSConceptMap"
* title = "Conversion PN13 vers FHIR pour un patient sans INS qualifiée d'une prescription de médicaments"
* status = #draft
* publisher = "Interop'Santé"
* description = "ConceptMap pour la conversion d'un patient sans INS qualifiée d'une prescritpion de médicament entre PN13 et FHIR"
* juridiction[0].coding[0].code = $ISO3166#FRA
* juridiction[0].coding[0].display = "France"
// A voir quel uri peut être utiliser pour le schema XSD PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri = $PN13Schema
* targetUri = $FrCorePatient
* group[0].element[0].code = $PN13Schema#M_prescription_médicaments/Patient/Ipp
* group[0].element[0].target[0].code = $FrCorePatient#Patient.identifier.value
* group[0].element[0].target[0].equivalence = #equal
* group[0].element[0].target[0].produt[0].property = "Patient.identfier.use"
* group[0].element[0].target[0].product[0].value = "usual"
* group[0].element[1].code = $PN13Schema#M_prescription_médicaments/Patient/DI
* group[0].element[1].target[0].code = $FrCorePatient#Patient.identifier.system
* group[0].element[1].target[0].equivalence = #equivalent
* group[0].element[1].target[0].comment = "Le domaine d'identification PN13 doit être exprimé sous le format uri pour alimenter patient.identifer.system. Par exemple, les domaines d'identification sous forme d'OID doivent être préfixés par urn:oid:"
* group[1].element[0].code = $PN13Schema#M_prescription_médicaments/Patient/Nom_naissance
* group[1].element[0].target[0].code = $FrCorePatient#Patient.name.family
* group[1].element[0].target[0].equivalence = #equal
* group[1].element[0].target[0].product[0].property = "Patient.name.use"
* group[1].element[0].target[0].product[0].value = "official"
* group[1].element[1].code = $PN13Schema#M_prescription_médicaments/Patient/Premier_prénom
* group[1].element[1].target[0].code = $FrCorePatient#Patient.name.given
* group[1].element[1].target[0].equivalence = #equal
* group[1].element[2].code = $PN13Schema#M_prescription_médicaments/Patient/Prénoms
* group[1].element[2].target[0].code = $FrCorePatient#Patient.name.extension.valueString
* group[1].element[2].target[0].equivalence = #equal
* group[1].element[2].target[0].product[0].property = "Patient.name.extension.url"
* group[1].element[2].target[0].product[0].value = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name"
* group[2].element[0].code = $PN13Schema#M_prescription_médicaments/Patient/Nom_usuel
* group[2].element[0].target[0].code = $FrCorePatient#Patient.name.family
* group[2].element[0].target[0].equivalence = #equal
* group[2].element[0].target[0].product[0].property = "Patient.name.use"
* group[2].element[0].target[0].product[0].value = "usual"
* group[2].element[1].code = $PN13Schema#M_prescription_médicaments/Patient/Prénom_usuel
* group[2].element[1].target[0].code = $FrCorePatient#Patient.name.given
* group[2].element[1].target[0].equivalence = #equal
* group[3].element[0].code = $PN13Schema#M_prescription_médicaments/Patient/Date_naissance
* group[3].element[0].target[0].code = $FrCorePatient#Patient.birthDate
* group[3].element[0].target[0].equivalence = #equivalent
* group[3].element[0].target[0].comment = "La date doit être transformée du format AAAAMMJJ[HH[MM[SS]]] au format YYYY-MM-DDTHH:MM:SS+ZZ:ZZ. L'offset de fuseau horaire n'est à intégrer que si au moin une heure est fournie."
* group[3].element[1].code = $PN13Schema#M_prescription_médicaments/Patient/Sexe
* group[3].element[1].target[0].code = $FrCorePatient#Patient.gender
* group[3].element[1].target[0].equivalence = #equivalent
* group[3].element[1].target[0].comment = "le code est à traduire en utilisant la ConceptMap fr-PN13-FHIR-gender-conceptmap"
* group[4].element[0].code = $PN13Schema#M_prescription_médicaments/Patient/Lieu_naissance
* group[4].element[0].target[0].code = $FrCorePatient#Patient.extension.valueAddress.extension.valueCoding.code
* group[4].element[0].target[0].equivalence = #equal
* group[4].element[0].target[0].comment = "L'élément FHIR Patient.extension.valueAddress.extension.valueCoding.system dépend de la valeur du code. Pour les codes commençant par 99, le system est https://mos.esante.gouv.fr/NOS/TRE_R20-Pays/FHIR/TRE-R13-Pays ; pour le code 01 https://mos.esante.gouv.fr/NOS/TRE_R302-ContexteCodeComplementaire/FHIR/TRE-R302-ContexteCodeComplementaire; pour les autres codes le system est est https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune"
* group[4].element[0].target[0].product[0].property = "Patient.extension.url"
* group[4].element[0].target[0].product[0].value = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* group[4].element[0].target[0].product[1].property = "Patient.extension.valueAddress.extension.url"
* group[4].element[0].target[0].product[1].value = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code"
* group[5].element[0].code = $PN13Schema#M_prescription_médicaments/Patient/Statut_idpat
* group[5].element[0].target[0].code = $FrCorePatient#Patient.extension.extension.valueCoding.code
* group[5].element[0].target[0].equivalence = #equal
* group[5].element[0].target[0].product[0].property = "Patient.extension.url"
* group[5].element[0].target[0].product[0].value = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
* group[5].element[0].target[0].product[1].property = "Patient.extension.extension.url"
* group[5].element[0].target[0].product[1].value = "identityStatus"
* group[5].element[0].target[0].product[2].property = "Patient.extension.extension.valueCoding.system"
* group[5].element[0].target[0].product[2].value = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445"
* group[6].element[0].code = $PN13Schema#M_prescription_médicaments/Patient/Date_lunaire
* group[6].element[0].target[0].equivalence = #unmatched
* group[6].element[0].target[0].comment = "Les dates luanires ne sont pas à indiquer dans les ressources FHIR"