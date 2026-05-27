# Artifacts Summary - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR Current Medication Composition](StructureDefinition-fr-current-medication-composition.md) | Profil de la ressource Composition du traitement médicamenteux courant. |
| [FR Current Medication MedicationStatement](StructureDefinition-fr-current-medication-medicationstatement.md) | Profil de la ressource **MedicationStatement** du traitement médicamenteux courant. Current Medication MedicationStatement resource profile |
| [FR Inpatient MedicationDispense](StructureDefinition-fr-inpatient-medication-dispense.md) | French medication dispense profile |
| [FR Medication](StructureDefinition-fr-medication.md) | profil de la ressource Medication décrivant le médicament dans une ressource MedicationRequest ou MedicationStatement profilée par InterOp’Santé |
| [FR Medication History Composition](StructureDefinition-fr-medication-history-composition.md) | Profil de la ressource Composition du Bilan Médicamenteux. Medication Assessment Composition resource profile. |
| [FR Medication History MedicationStatement](StructureDefinition-fr-medication-history-medicationstatement.md) | Profil de la ressource **MedicationStatement** du Bilan médicamenteux. Medication History MedicationStatement resource profile |
| [FR Medication Reconciliation Composition](StructureDefinition-fr-medication-reconciliation-composition.md) | Profil de la ressource **Composition** la Fiche de Conciliation des Traitements médicamenteux (FCT). |
| [FR Medication Reconciliation MedicationStatement](StructureDefinition-fr-medication-reconciliation-statement.md) | Profil de la ressource **MedicationStatement** référencée dans la ressource **Composition** de la Fiche de Conciliation des Traitements médicamenteux (FCT). |
| [FR On Admission Medication Composition](StructureDefinition-fr-on-admission-medication-composition.md) | Profil de la ressource **Composition** du traitement médicamenteux prescrit à l’admission. |
| [FR On Admission Retroactive Reconciliation Composition](StructureDefinition-fr-on-admission-retroactive-reconciliation-composition.md) | Profil de la ressource **Composition** de la Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d’admission. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR Meditinal Product Substance](StructureDefinition-fr-mp-substance.md) | code for the medicinal product substance |
| [Range with UCUM or EDQM codes if code is used](StructureDefinition-FrRangeMedication.md) | Range with low and high unit UCUM or EDQM codes if code is used |
| [Ratio with UCUM or EDQM codes if code is used](StructureDefinition-FrRatioMedication.md) | Ratio with numerator and denominator unit UCUM or EDQM encoded if code is used |
| [SimpleQuantity with UCUM or EDQM codes or code not used](StructureDefinition-FrSimpleQuantityMedication.md) | simple quantity datatype requiring a UCUM or EDQM code or no code (only unti) |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FRMedicationHistorySources](StructureDefinition-fr-medication-history-sources.md) | Sources des lignes du Bilan Médicamenteux que représente la ressource **Composition** ou de chacune de ses lignes que représente la ressource **MedicationStatement** référencée par l’élément **entry** de la ressource **Composition** (nombre de sources ET le type de source, défini codé avec, si possible, son auteur, défini ès qualités et, si possible, nominativement) |
| [FRMedicationStatementReconciliationProperties](StructureDefinition-fr-medicationstatement-reconciliation-properties.md) | Propiétés spécifiques de la ligne de médicament, ajoutée à la ressource MedicationStatement dans la Fiche de Conciliation des Traitements médicamenteux (FCT) |
| [Medication descriptive properties](StructureDefinition-fr-drug-characteristic.md) | Specifies descriptive properties of the medicine |
| [MedicationRequest overall treatment intent](StructureDefinition-fr-treatment-intent.md) | The overall intention of the treatment |
| [Strength CodeableConcept](StructureDefinition-fr-strength-codeableconcept.md) | Additional non unit value for strength |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [French Medicinal product Dose form](ValueSet-fr-mp-dose-form.md) | Le jeu de valeurs à utiliser pour coder l’élément **doseForm** des ressources **FrMedication**. |
| [French Method Of Administration](ValueSet-FrMethodOfAdministration.md) | Le jeu de valeurs à utiliser pour coder l’élément **dosageInstruction.method** de la ressource **FRMedicationRequest**. |
| [French Route of Administration](ValueSet-fr-route-of-administration.md) | Le jeu de valeurs à utiliser pour coder l’élément **dosageInstruction.route** de la ressource **FRMedicationRequest**. |
| [French overall intention of the treatment](ValueSet-fr-treatment-intent.md) | Le jeu de valeurs à utiliser pour coder l’élément **treatmentIntent** de la ressource **FRInpatientMedicationRequest**. |
| [MedicationIngredientStrengthCodes](ValueSet-medication-ingredient-strength-codes.md) | Medication Ingredient Strength Codes |
| [value set Interop'Santé - Codes identifiant les médicaments](ValueSet-fr-medication-code.md) | Le jeu de valeurs à utiliser pour indiquer le médicament dans Medication.code.coding.code |
| [value set Interop'Santé - Codes identifiant les substances](ValueSet-fr-substance-code.md) | Le jeu de valeurs à utiliser pour indiquer un ingrédient composant un médicament dans Medication.ingredient.itemCodeableConcept.coding.code |
| [value set Interop'Santé - Gravité de l'erreur sur une ligne de traitement d'une FCT](ValueSet-fr-medication-reconciliation-outcome.md) | Le jeu de valeurs à utiliser pour coder la gravité de l’erreur sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [value set Interop'Santé - Résolution d'une divergence sur une ligne de traitement d'une FCT](ValueSet-fr-medication-reconciliation-resolution.md) | Un jeu de valeurs à utiliser pour coder la résolution d’une divergence sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [value set Interop'Santé - Statut d'une ligne de traitement d'une FCT](ValueSet-fr-medication-reconciliation-status.md) | Le jeu de valeurs à utiliser pour coder le statut d’une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [value set Interop'Santé - Statut éditorial d'une valeur](ValueSet-fr-editorial-status.md) | Le jeu de valeurs à utiliser pour coder le statut éditorial d’une valeur. |
| [value set Interop'Santé - Type d'écart/erreur sur une ligne de traitement d'une FCT](ValueSet-fr-medication-reconciliation-type.md) | Le jeu de valeurs à utiliser pour coder le type d’écart/erreur sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [value set Interop'Santé - qualification de la divergence identifiée sur une ligne de traitement d'une FCT](ValueSet-fr-medication-reconciliation-qualified-discrepancy.md) | Le jeu de valeurs à utiliser pour coder la qualification de la divergence identifiée sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [value set Interop'Santé - type de document de la ressource Composition d'une FCT](ValueSet-fr-current-medication-document-type.md) | Le jeu de valeurs à utiliser pour coder le type de document de la ressource **Composition** d’une liste des Traitements Médicamenteux Courants. |
| [value set Interop'Santé - type de document de la ressource Composition d'une FCT](ValueSet-fr-medication-reconciliation-document-type.md) | Le jeu de valeurs à utiliser pour coder le type de document de la ressource **Composition** d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [value set SIPh - Nature des sources d'un Bilan Médicamenteux](ValueSet-fr-medication-history-source-type.md) | Un jeu de valeurs à utiliser pour coder les sources d’un Bilan Médicamenteux. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Medication_Ingredient_Strength_Codes](CodeSystem-medication-ingredient-strength-codes.md) |  |
| [code system Interop'Santé - Gravité de l'erreur sur une ligne de traitement d'une FCT](CodeSystem-fr-medication-reconciliation-outcome.md) | Le système de codage de la gravité de l’erreur sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [code system Interop'Santé - Nature des sources d'un Bilan Médicamenteux](CodeSystem-fr-medication-history-source-type.md) | Le système de codage des sources d’un Bilan Médicamenteux. |
| [code system Interop'Santé - Résolution d'une divergence sur une ligne de traitement d'une FCT](CodeSystem-fr-medication-reconciliation-resolution.md) | Le système de codage de la résolution d’une divergence sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [code system Interop'Santé - Statut d'une ligne de traitement d'une FCT](CodeSystem-fr-medication-reconciliation-status.md) | Le système de codage du statut d’une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [code system Interop'Santé - Statut éditorial d'une valeur](CodeSystem-fr-editorial-status.md) | Le système de codage du statut éditorial d’une valeur. |
| [code system Interop'Santé - Type d'écart/erreur sur une ligne de traitement d'une FCT](CodeSystem-fr-medication-reconciliation-type.md) | Le système de codage du type d’écart/erreur sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [code system Interop'Santé - Type de document d'une ressource Composition du domaine Pharmacy](CodeSystem-fr-document-type.md) | Le système de codage SIPh du type de document d’une ressource **Composition** du domaine Pharmacy |
| [code system Interop'Santé - divergence identifiée sur une ligne de traitement d'une FCT](CodeSystem-fr-medication-reconciliation-discrepancy.md) | Le système de codage de la divergence identifiée sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Disp-DOLIPRANE-Refill-Compl-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-Compl-presc-DC.md) | Prescription complémentaire et finale de DOLIPRANE sur une prescription de Paracétamol |
| [Disp-DOLIPRANE-Refill-Substit](MedicationDispense-Disp-DOLIPRANE-Refill-Substit.md) | Dispensation complémentaire et partielle de DOLIPRANE sur une prescription d’EFFERALGAN |
| [Disp-DOLIPRANE-Refill-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-presc-DC.md) | Dispensation complémentaire et partielle de DOLIPRANE sur une prescription de Paracétamol |
| [Disp-EFFERALGAN](MedicationDispense-Disp-EFFERALGAN.md) | Dispensation complète d’EFFERALGANT sur une prescription d’EFFERALGAN |
| [Disp-EFFERALGAN-presc-DC](MedicationDispense-Disp-EFFERALGAN-presc-DC.md) | Dispensation complète de Paracétamol sur une prescription d’EFFERALGAN |
| [Disp-group01-1](MedicationDispense-Disp-group01-1.md) | Délivrance reglobalisée, cumulant 3 dispensations nominatives |
| [Disp-group01-2](MedicationDispense-Disp-group01-2.md) | Délivrance reglobalisée, cumulant 3 dispensations nominatives - Option 2 |
| [InLine-DOLIPRANE](Medication-InLine-DOLIPRANE.md) | Medication DOLIPRANE® pour exemple de dispensation |
| [InLine-Observation-poids-Avion](Observation-InLine-Observation-poids-Avion.md) | Poids du patient pour exemples traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [InLine-Presc-EFFERALGAN](MedicationRequest-InLine-Presc-EFFERALGAN.md) | Prescription d’EFFERALGAN® pour exemple de dispensation |
| [InLine-med-EFFERALGAN](Medication-InLine-med-EFFERALGAN.md) | Medication EFFERALGAN® pour exemple de dispensation |
| [InLine-med-Paracetamol](Medication-InLine-med-Paracetamol.md) | Medication Paracétamol pour exemple de dispensation |
| [InLine-observation-taille-Avion](Observation-InLine-observation-taille-Avion.md) | Taille du patient pour exemples traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [InLine-patient-Avion](Patient-InLine-patient-Avion.md) | Patient pour exemples traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [InLine-patient-group-01](Group-InLine-patient-group-01.md) | Groupe de patient pour exemple de délivrance reglobalisée |
| [InLine-practitioner-Luiggi](Practitioner-InLine-practitioner-Luiggi.md) | Practitioner prescripteur pour exemples traduction PN13-FHIR de resultats d’analyse pharmaceutique |
| [InLine-presc-EFFERALGAN2](MedicationRequest-InLine-presc-EFFERALGAN2.md) | Prescription d’EFFERALGAN® pour exemple de dispensation |
| [InLine-presc-Paracetamol1](MedicationRequest-InLine-presc-Paracetamol1.md) | Prescription de Paracétamol pour exemple de dispensation |
| [InLine-presc-Paracetamol2](MedicationRequest-InLine-presc-Paracetamol2.md) | Prescription de Paracétamol pour exemple de dispensation |

