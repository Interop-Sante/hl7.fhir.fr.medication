CodeSystem: FrMedicationReconciliationStatus
Id: FrMedicationReconciliationStatus
Title: "code system InterOp'Santé - Statut d'une ligne de traitement d'une FCT"
Description: "Le système de codage du statut d'une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux)."
* ^meta.lastUpdated = "2021-06-23T08:40:00Z"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "http://interop.org/CodeSystem/fr-medication-reconciliation-status"
* ^version = "0.2.0"
* ^status = #draft
* ^experimental = false
* ^date = "2021-06-23T08:40:00Z"
* ^publisher = "InterOp'Santé - FRANCE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "fhir@interopsante.org"
* ^content = #complete
* ^count = 5
* #10000001 "Continué" "La spécialité et la posologie de la ligne du Traitement Courant sont identiques à celles de la ligne du traitement antérieur (Bilan Médicamenteux)."
* #10000002 "Équivalence" "La ligne du traitement antérieur (Bilan Médicamenteux) est poursuivie dans le Traitement Courant, mais avec un médicament équivalent. Il s'agit souvent de substituer la spécialité du traitement antérieur par la spécialité au Livret de l'établissement."
* #10000003 "Arrêté" "La ligne de traitement antérieur (Bilan Médicamenteux) ne figure pas dans le Traitement Courant. Cette ligne de traitement a donc été arrêtée."
* #10000004 "Modifié" "L'intention thérapeutique de la ligne du traitement antérieur (Bilan Médicamenteux) est poursuivie mais avec modification du principe actif et/ou de la forme galénique et/ou de la voie d'adminisitration et/ou des modialités d'administration et/ou de la posologie."
* #10000005 "Initié" "La ligne du traitement courant ne figure pas dans le traitement antérieur (Bilan Médicamenteux). Cette ligne de traitement a donc été initiée/démarrée."