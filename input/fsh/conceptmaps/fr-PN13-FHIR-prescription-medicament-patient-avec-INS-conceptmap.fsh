Instance: fr-PN13-FHIR-prescription-medicament-patient-avec-INS-conceptmap
InstanceOf: ConceptMap
Usage: #definition
* ^name: "FrPN13FHIRMedicationPrescriptionPatientINSConceptMap"
* ^title: "Conversion PN13 vers FHIR pour un patient avec INS qualifiée d'une prescription de médicaments"
* ^status: #draft
* ^publisher: "Interop'Santé"
* ^description: "ConceptMap pour la conversion d'un patient avec INS qualifiée d'une prescritpion de médicament entre PN13 et FHIR"
* juridiction[0].coding[0].code: "FRA"
* juridiction[0].coding[0].display: "France"
* juridiction[0].coding[0].system: "urn:iso:std:iso:3166"
// A voir quel uri peut être utiliser pour le schema XSD PN13 idéalement une url sous le domaine interopsante.org. L'url indiquée n'est qu'un exemple, elle est à modifier pour mettre une url officielle
* sourceUri: "https://interopsante.org/pn13/xsd"
* targetUri: "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins"
* group[0].element[0].code: "M_prescription_médicaments/Patient/Ipp"
* group[0].element[0].target[0].code: "Patient.identifier.value"
* group[0].element[0].target[0].equivalence: "equal"
* group[0].element[0].target[0].produt[0].property: "Patient.identfier.use"
* group[0].element[0].target[0].product[0].value: "usual"
* group[0].element[1].code: "M_prescription_médicaments/Patient/DI"
* group[0].element[1].target[0].code: "Patient.identifier.system"
* group[0].element[1].target[0].equivalence: "equivalent"
* group[0].element[1].target[0].comment: "Le domaine d'identification PN13 doit être exprimé sous le format uri pour alimenter patient.identifer.system. Par exemple, les domaines d'identification sous forme d'OID doivent être préfixés par urn:oid:"
* group[1].element[0].code: "M_prescription_médicaments/Patient/INS"
* group[1].element[0].target[0].code: "Patient.identifier.value"
* group[1].element[0].target[0].equivalence: "equal"
* group[1].element[0].target[0].product[0].property: "Patient.identfier.use"
* group[1].element[0].target[0].product[0].value: "official"
* group[1].element[1].code: "M_prescription_médicaments/Patient/INS_OID"
* group[1].element[1].target[0].code: "Patient.identifier.system"
* group[1].element[1].target[0].equivalence: "equivalent"
* group[1].element[1].target[0].comment: "L'élément INS_OID PN13 doit être préfixé par urn:oid: pour alimenter patient.identifer.system."
* group[2].element[0].code: "M_prescription_médicaments/Patient/Nom_naissance"
* group[2].element[0].target[0].code: "Patient.name.family"
* group[2].element[0].target[0].equivalence: "equal"
* group[2].element[0].target[0].product[0].property: "Patient.name.use"
* group[2].element[0].target[0].product[0].value: "official"
* group[2].element[1].code: "M_prescription_médicaments/Patient/Premier_prénom"
* group[2].element[1].target[0].code: "Patient.name.given"
* group[2].element[1].target[0].equivalence: "equal"
* group[2].element[2].code: "M_prescription_médicaments/Patient/Prénoms"
* group[2].element[2].target[0].code: "Patient.name.extension.valueString"
* group[2].element[2].target[0].equivalence: "equal"
* group[2].element[2].target[0].product[0].property: "Patient.name.extension.url"
* group[2].element[2].target[0].product[0].value: "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name"
* group[3].element[0].code: "M_prescription_médicaments/Patient/Nom_usuel"
* group[3].element[0].target[0].code: "Patient.name.family"
* group[3].element[0].target[0].equivalence: "equal"
* group[3].element[0].target[0].product[0].property: "Patient.name.use"
* group[3].element[0].target[0].product[0].value: "usual"
* group[3].element[1].code: "M_prescription_médicaments/Patient/Prénom_usuel"
* group[3].element[1].target[0].code: "Patient.name.given"
* group[3].element[1].target[0].equivalence: "equal"
* group[4].element[0].code: "M_prescription_médicaments/Patient/Date_naissance"
* group[4].element[0].target[0].code: "Patient.birthDate"
* group[4].element[0].target[0].equivalence: "equivalent"
* group[4].element[0].target[0].comment: "La date doit être transformée du format AAAAMMJJ[HH[MM[SS]]] au format YYYY-MM-DDTHH:MM:SS+ZZ:ZZ. L'offset de fuseau horaire n'est à intégrer que si au moin une heure est fournie."
* group[4].element[1].code: "M_prescription_médicaments/Patient/Sexe"
* group[4].element[1].target[0].code: "Patient.gender"
* group[4].element[1].target[0].equivalence: "equivalent"
* group[4].element[1].target[0].comment: "le code est à traduire en utilisant la ConceptMap fr-PN13-FHIR-gender-conceptmap"
* group[5].element[0].code: "M_prescription_médicaments/Patient/Lieu_naissance"
* group[5].element[0].target[0].code: "Patient.extension.valueAddress.extension.valueCoding.code"
* group[5].element[0].target[0].equivalence: "equal"
* group[5].element[0].target[0].comment: "L'élément FHIR Patient.extension.valueAddress.extension.valueCoding.system dépend de la valeur du code. Pour les codes commençant par 99, le system est https://mos.esante.gouv.fr/NOS/TRE_R20-Pays/FHIR/TRE-R13-Pays ; pour le code 01 https://mos.esante.gouv.fr/NOS/TRE_R302-ContexteCodeComplementaire/FHIR/TRE-R302-ContexteCodeComplementaire; pour les autres codes, le system est pour les autres codes, le system est https://mos.esante.gouv.fr/NOS/TRE_R13-Commune/FHIR/TRE-R13-Commune"
* group[5].element[0].target[0].product[0].property: "Patient.extension.url"
* group[5].element[0].target[0].product[0].value: "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* group[5].element[0].target[0].product[1].property: "Patient.extension.valueAddress.extension.url"
* group[5].element[0].target[0].product[1].value: "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code"
* group[6].element[0].code: "M_prescription_médicaments/Patient/Statut_idpat"
* group[6].element[0].target[0].code: "Patient.extension.extension.valueCoding.code"
* group[6].element[0].target[0].equivalence: "equal"
* group[6].element[0].target[0].product[0].property: "Patient.extension.url"
* group[6].element[0].target[0].product[0].value: "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
* group[6].element[0].target[0].product[1].property: "Patient.extension.extension.url"
* group[6].element[0].target[0].product[1].value: "identityStatus"
* group[6].element[0].target[0].product[2].property: "Patient.extension.extension.valueCoding.system"
* group[6].element[0].target[0].product[2].value: "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445"
* group[7].element[0].code: "M_prescription_médicaments/Patient/Date_lunaire"
* group[7].element[0].target[0].equivalence: "unmatched"
* group[7].element[0].target[0].comment: "Les dates luanires ne sont pas à indiquer dans les ressources FHIR"