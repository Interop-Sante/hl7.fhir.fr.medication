CodeSystem: FrMedicationReconciliationDiscrepancy
Id: FrMedicationReconciliationDiscrepancy
Title: "code system Interop'Santé - divergence identifiée sur une ligne de traitement d'une FCT"
Description: "Le système de codage de la divergence identifiée sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux)."
* ^meta.lastUpdated = "2021-06-23T08:40:00Z"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "http://interopsante.org/fhir/CodeSystem/fr-medication-reconciliation-discrepancy"
* ^version = "0.2.0"
* ^status = #draft
* ^experimental = false
* ^date = "2021-06-23T08:40:00Z"
* ^publisher = "InterOp'Santé - FRANCE"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "fhir@interopsante.org"
* ^content = #complete
* ^count = 4
* ^property.code = #isQualified
* ^property.description = "Une divergence peut ne pas être qualifiée. Une absence de divergence n'a pas à être qualifiée."
* ^property.type = #boolean
* #10000001 "Pas de divergence" "Pas de divergence entre la ligne de traitement du Bilan Médicamenteux et celle du Traitement Courant"
* #10000001 ^property.code = #isQualified
* #10000001 ^property.valueBoolean = false
* #10000002 "Divergence non qualifiée" "Divergence identifiée mais non qualifiée, entre la ligne de traitement du Bilan Médicamenteux et celle du Traitement Courant"
* #10000002 ^property.code = #isQualified
* #10000002 ^property.valueBoolean = false
* #10000003 "Divergence intentionnelle" "Divergence identifiée et qualifiée, entre la ligne de traitement du Bilan Médicamenteux et celle du Traitement Courant. Le Bilan Médicamenteux a été pris en compte par le prescripteur dans le Traitement Courant."
* #10000003 ^property.code = #isQualified
* #10000003 ^property.valueBoolean = true
* #10000004 "Divergence non-intentionnelle" "Divergence identifiée et qualifiée, entre la ligne de traitement du Bilan Médicamenteux et celle du Traitement Courant. Méconnaissance, par le prescripteur, du Bilan Médicamenteux dans le Traitement Courant."
* #10000004 ^property.code = #isQualified
* #10000004 ^property.valueBoolean = true