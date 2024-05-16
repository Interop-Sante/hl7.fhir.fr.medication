CodeSystem: FrDocumentType
Id: fr-document-type
Title: "code system Interop'Santé - Type de document d'une ressource Composition du domaine Pharmacy"
Description: "Le système de codage SIPh du type de document d'une ressource *Composition* du domaine Pharmacy"

* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^status = #draft
* ^experimental = false
* ^content = #complete
* ^property[0].code = #isMedicationReconciliation
* ^property[=].description = "Le document est une FCT (Fiche de Conciliation des Traitements médicamenteux)."
* ^property[=].type = #boolean
* ^property[+].code = #isCurrentMedication
* ^property[=].description = "Le document est une liste des Traitements Médicamenteux Courants."
* ^property[=].type = #boolean

* #10000001 "FCT" "Fiche de Conciliation des Traitements médicamenteux (sans autre précision)"
* #10000001 ^property[0].code = #isMedicationReconciliation
* #10000001 ^property[=].valueBoolean = true
* #10000001 ^property[+].code = #isCurrentMedication
* #10000001 ^property[=].valueBoolean = false
* #10000002 "FCT rétroactive d'admission" "Fiche de Conciliation des Traitements médicamenteux rétroactive d'admission"
* #10000002 ^property[0].code = #isMedicationReconciliation
* #10000002 ^property[=].valueBoolean = true
* #10000002 ^property[+].code = #isCurrentMedication
* #10000002 ^property[=].valueBoolean = false
* #10000003 "FCT proactive d'admission" "Fiche de Conciliation des Traitements médicamenteux proactive d'admission"
* #10000003 ^property[0].code = #isMedicationReconciliation
* #10000003 ^property[=].valueBoolean = true
* #10000003 ^property[+].code = #isCurrentMedication
* #10000003 ^property[=].valueBoolean = false
* #10000004 "FCT proactive de sortie" "Fiche de Conciliation des Traitements médicamenteux proactive de sortie (retour à domicile)"
* #10000004 ^property[0].code = #isMedicationReconciliation
* #10000004 ^property[=].valueBoolean = true
* #10000004 ^property[+].code = #isCurrentMedication
* #10000004 ^property[=].valueBoolean = false
* #10000005 "FCT rétroactive de sortie" "Fiche de Conciliation des Traitements médicamenteux rétroactive de sortie (retour à domicile)"
* #10000005 ^property[0].code = #isMedicationReconciliation
* #10000005 ^property[=].valueBoolean = true
* #10000005 ^property[+].code = #isCurrentMedication
* #10000005 ^property[=].valueBoolean = false
* #10000006 "FCT proactive de transfert" "Fiche de Conciliation des Traitements médicamenteux proactive de transfert (dans une autre structure de soins)"
* #10000006 ^property[0].code = #isMedicationReconciliation
* #10000006 ^property[=].valueBoolean = true
* #10000006 ^property[+].code = #isCurrentMedication
* #10000006 ^property[=].valueBoolean = false
* #10000007 "FCT rétroactive de transfert" "Fiche de Conciliation des Traitements médicamenteux rétroactive de transfert (dans une autre structure de soins)"
* #10000007 ^property[0].code = #isMedicationReconciliation
* #10000007 ^property[=].valueBoolean = true
* #10000007 ^property[+].code = #isCurrentMedication
* #10000007 ^property[=].valueBoolean = false
* #10000008 "FCT proactive de mutation" "Fiche de Conciliation des Traitements médicamenteux proactive de mutation (dans une autre unité fonctionnelle ou médicale)"
* #10000008 ^property[0].code = #isMedicationReconciliation
* #10000008 ^property[=].valueBoolean = true
* #10000008 ^property[+].code = #isCurrentMedication
* #10000008 ^property[=].valueBoolean = false
* #10000009 "FCT rétroactive de mutation" "Fiche de Conciliation des Traitements médicamenteux rétroactive de mutation (dans une autre unité fonctionnelle ou médicale)"
* #10000009 ^property[0].code = #isMedicationReconciliation
* #10000009 ^property[=].valueBoolean = true
* #10000009 ^property[+].code = #isCurrentMedication
* #10000009 ^property[=].valueBoolean = false
* #10000010 "FCT proactive de sortie du service" "Fiche de Conciliation des Traitements médicamenteux proactive de sortie du service (tout mode de sortie administratif confondu)"
* #10000010 ^property[0].code = #isMedicationReconciliation
* #10000010 ^property[=].valueBoolean = true
* #10000010 ^property[+].code = #isCurrentMedication
* #10000010 ^property[=].valueBoolean = false
* #10000011 "FCT rétroactive de sortie du service" "Fiche de Conciliation des Traitements médicamenteux rétroactive de sortie du service (tout mode de sortie administratif confondu)"
* #10000011 ^property[0].code = #isMedicationReconciliation
* #10000011 ^property[=].valueBoolean = true
* #10000011 ^property[+].code = #isCurrentMedication
* #10000011 ^property[=].valueBoolean = false
* #10000012 "Traitement Médicamenteux Courant" "Traitement Médicamenteux Courant (sans autre précision)"
* #10000012 ^property[0].code = #isMedicationReconciliation
* #10000012 ^property[=].valueBoolean = false
* #10000012 ^property[+].code = #isCurrentMedication
* #10000012 ^property[=].valueBoolean = true
* #10000013 "OMA" "OMA (Ordonnance Médicale d'Admission)"
* #10000013 ^property[0].code = #isMedicationReconciliation
* #10000013 ^property[=].valueBoolean = false
* #10000013 ^property[+].code = #isCurrentMedication
* #10000013 ^property[=].valueBoolean = true
* #10000014 "Traitement Médicamenteux de sortie/transfert/mutation" "Traitement Médicamenteux de sortie/transfert/mutation"
* #10000014 ^property[0].code = #isMedicationReconciliation
* #10000014 ^property[=].valueBoolean = false
* #10000014 ^property[+].code = #isCurrentMedication
* #10000014 ^property[=].valueBoolean = true