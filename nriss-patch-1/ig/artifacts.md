# Artifacts Summary - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Ligne de prescription](StructureDefinition-fr-ligne-prescription.md) | Structuration d’une ligne de prescription [WIP - à compléter]. |
| [Posologie](StructureDefinition-fr-posologie.md) | Structuration d’une posologie en fonction des critères de la HAS. Cette structuration a pour objectif de tendre au plus proche du modèle européen[Xt-EHR](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/StructureDefinition-EHDSDosaging.html)(CI-BUILD) |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FR Current Medication Composition](StructureDefinition-fr-current-medication-composition.md) | Profil de la ressource Composition du traitement médicamenteux courant. |
| [FR Current Medication MedicationStatement](StructureDefinition-fr-current-medication-medicationstatement.md) | Profil de la ressource**MedicationStatement**du traitement médicamenteux courant. Current Medication MedicationStatement resource profile |
| [FR Inpatient MedicationDispense](StructureDefinition-fr-inpatient-medication-dispense.md) | French medication dispense profile |
| [FR Inpatient MedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md) | French inpatient medication request profile |
| [FR Medication](StructureDefinition-fr-medication.md) | profil de la ressource Medication décrivant le médicament dans une ressource MedicationRequest ou MedicationStatement profilée par InterOp’Santé |
| [FR Medication Compound](StructureDefinition-fr-medication-compound.md) | A complex medication composed of two to many simple medication. The simple medications component are described in as many ingredient.itemReference referencing a Medication resource profiled fr-medication-non-compound. |
| [FR Medication History Composition](StructureDefinition-fr-medication-history-composition.md) | Profil de la ressource Composition du Bilan Médicamenteux. Medication Assessment Composition resource profile. |
| [FR Medication History MedicationStatement](StructureDefinition-fr-medication-history-medicationstatement.md) | Profil de la ressource**MedicationStatement**du Bilan médicamenteux. Medication History MedicationStatement resource profile |
| [FR Medication Non Compound](StructureDefinition-fr-medication-noncompound.md) | Simple prescribed, dispensed, administered or used medication composed of one to many substances. If composed of many substance, the strengh SHALL be defined. |
| [FR Medication Reconciliation Composition](StructureDefinition-fr-medication-reconciliation-composition.md) | Profil de la ressource**Composition**la Fiche de Conciliation des Traitements médicamenteux (FCT). |
| [FR Medication Reconciliation MedicationStatement](StructureDefinition-fr-medication-reconciliation-statement.md) | Profil de la ressource**MedicationStatement**référencée dans la ressource**Composition**de la Fiche de Conciliation des Traitements médicamenteux (FCT). |
| [FR Medication Request](StructureDefinition-fr-medicationrequest.md) | French medication request profile |
| [FR Medication Virtual](StructureDefinition-fr-medication-virtual.md) | Virtual medication composed of one to many substances. |
| [FR Observation For Prescription](StructureDefinition-fr-observation-for-prescription.md) | Observation provided as context of the prescription (ex. weight, height…) |
| [FR On Admission Medication Composition](StructureDefinition-fr-on-admission-medication-composition.md) | Profil de la ressource**Composition**du traitement médicamenteux prescrit à l’admission. |
| [FR On Admission Retroactive Reconciliation Composition](StructureDefinition-fr-on-admission-retroactive-reconciliation-composition.md) | Profil de la ressource**Composition**de la Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d’admission. |
| [FR Prescription Bundle For Example](StructureDefinition-fr-prescription-bundle-for-example.md) | Profil de la ressource Bundle pour la constitution d’exemples de prescription. |
| [FR RequestGroup For Prescription](StructureDefinition-fr-requestgroup-for-prescription.md) | RequestGroup for expressing links between lines of a prescription |

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
| [Additional relatedAction relationship](StructureDefinition-fr-additional-action-relationship.md) | Extension to specify relationship between action in a RequestGroup |
| [Additional values for when element](StructureDefinition-fr-additional-when-values.md) | Additional values for Timing.repeat.when |
| [FRMedicationHistorySources](StructureDefinition-fr-medication-history-sources.md) | Sources des lignes du Bilan Médicamenteux que représente la ressource**Composition**ou de chacune de ses lignes que représente la ressource**MedicationStatement**référencée par l’élément**entry**de la ressource**Composition**(nombre de sources ET le type de source, défini codé avec, si possible, son auteur, défini ès qualités et, si possible, nominativement) |
| [FRMedicationStatementReconciliationProperties](StructureDefinition-fr-medicationstatement-reconciliation-properties.md) | Propiétés spécifiques de la ligne de médicament, ajoutée à la ressource MedicationStatement dans la Fiche de Conciliation des Traitements médicamenteux (FCT) |
| [Medication component Basis of dose](StructureDefinition-fr-basis-of-dose-component.md) | When the medication element of the resource in which a dose applies is compound, this extension references the Medication resource component of the medication element which is the Basis of the dose quantity or volume. |
| [Medication component which is the vehicle of the compound Medication](StructureDefinition-fr-is-vehicle.md) | Medication component which is the vehicle of the compound Medication |
| [Medication descriptive properties](StructureDefinition-fr-drug-characteristic.md) | Specifies descriptive properties of the medicine |
| [MedicationRequest overall treatment intent](StructureDefinition-fr-treatment-intent.md) | The overall intention of the treatment |
| [Scope for note element in MedicationRequest](StructureDefinition-fr-medicationrequest-note-scope.md) | Scope of a note associated in a MedicationRequest resource |
| [Strength CodeableConcept](StructureDefinition-fr-strength-codeableconcept.md) | Additional non unit value for strength |
| [UF Role](StructureDefinition-fr-uf-role.md) | Caracterization of the role of a functionnal unit for the patient encounter |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [French Medicinal product Dose form](ValueSet-fr-mp-dose-form.md) | Le jeu de valeurs à utiliser pour coder l’élément**doseForm**des ressources**FrMedication**. |
| [French Method Of Administration](ValueSet-FrMethodOfAdministration.md) | Le jeu de valeurs à utiliser pour coder l’élément**dosageInstruction.method**de la ressource**FRMedicationRequest**. |
| [French Route of Administration](ValueSet-fr-route-of-administration.md) | Le jeu de valeurs à utiliser pour coder l’élément**dosageInstruction.route**de la ressource**FRMedicationRequest**. |
| [French overall intention of the treatment](ValueSet-fr-treatment-intent.md) | Le jeu de valeurs à utiliser pour coder l’élément**treatmentIntent**de la ressource**FRInpatientMedicationRequest**. |
| [Interop'Santé value set - Additional codes for relationship between action](ValueSet-fr-additional-action-relationship-type-value-set.md) | Codes to specify relationship between action in a RequestGroup that are not in the valueSet http://hl7.org/fhir/ValueSet/action-relationship-type. |
| [MedicationIngredientStrengthCodes](ValueSet-medication-ingredient-strength-codes.md) | Medication Ingredient Strength Codes |
| [value set Interop'Santé - Codes additionnels pour l'élément when](ValueSet-fr-additional-when-codes.md) | Le jeu de valeurs à utiliser pour coder des périodes d’occurrence qui ne sont pas dans le jeu de valeurs http://hl7.org/fhir/ValueSet/event-timing. |
| [value set Interop'Santé - Codes identifiant les médicaments](ValueSet-fr-medication-code.md) | Le jeu de valeurs à utiliser pour indiquer le médicament dans Medication.code.coding.code |
| [value set Interop'Santé - Codes identifiant les substances](ValueSet-fr-substance-code.md) | Le jeu de valeurs à utiliser pour indiquer un ingrédient composant un médicament dans Medication.ingredient.itemCodeableConcept.coding.code |
| [value set Interop'Santé - Codes pour le périmètre des notes](ValueSet-fr-note-scope-codes-vs.md) | Le jeu de valeurs à utiliser pour coder le périmètre des notes par exemple lors de la transformation de message PN13 en ressources FHIR |
| [value set Interop'Santé - Gravité de l'erreur sur une ligne de traitement d'une FCT](ValueSet-fr-medication-reconciliation-outcome.md) | Le jeu de valeurs à utiliser pour coder la gravité de l’erreur sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [value set Interop'Santé - Résolution d'une divergence sur une ligne de traitement d'une FCT](ValueSet-fr-medication-reconciliation-resolution.md) | Un jeu de valeurs à utiliser pour coder la résolution d’une divergence sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [value set Interop'Santé - Statut d'une ligne de traitement d'une FCT](ValueSet-fr-medication-reconciliation-status.md) | Le jeu de valeurs à utiliser pour coder le statut d’une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [value set Interop'Santé - Statut éditorial d'une valeur](ValueSet-fr-editorial-status.md) | Le jeu de valeurs à utiliser pour coder le statut éditorial d’une valeur. |
| [value set Interop'Santé - Type d'écart/erreur sur une ligne de traitement d'une FCT](ValueSet-fr-medication-reconciliation-type.md) | Le jeu de valeurs à utiliser pour coder le type d’écart/erreur sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [value set Interop'Santé - Types de rôle d’une UF par rapport à un séjour patient dans une prescription](ValueSet-fr-uf-role-code-for-prescription.md) | Le jeu de valeurs à utiliser dans l’extension pour indiquer le type d’UF référencée dans Medication.supportingInfo |
| [value set Interop'Santé - qualification de la divergence identifiée sur une ligne de traitement d'une FCT](ValueSet-fr-medication-reconciliation-qualified-discrepancy.md) | Le jeu de valeurs à utiliser pour coder la qualification de la divergence identifiée sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [value set Interop'Santé - type de document de la ressource Composition d'une FCT](ValueSet-fr-current-medication-document-type.md) | Le jeu de valeurs à utiliser pour coder le type de document de la ressource**Composition**d’une liste des Traitements Médicamenteux Courants. |
| [value set Interop'Santé - type de document de la ressource Composition d'une FCT](ValueSet-fr-medication-reconciliation-document-type.md) | Le jeu de valeurs à utiliser pour coder le type de document de la ressource**Composition**d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [value set SIPh - Nature des sources d'un Bilan Médicamenteux](ValueSet-fr-medication-history-source-type.md) | Un jeu de valeurs à utiliser pour coder les sources d’un Bilan Médicamenteux. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Interop'Santé code system - Additional codes for relationship between action](CodeSystem-fr-additional-action-relationship-type.md) | Codes to specify relationship between action in a RequestGroup that are not in the valueSet http://hl7.org/fhir/ValueSet/action-relationship-type. |
| [Medication_Ingredient_Strength_Codes](CodeSystem-medication-ingredient-strength-codes.md) |  |
| [code system Interop'Santé - Codes additionnels pour l'élément when](CodeSystem-fr-additional-when-codes.md) | Le système de codage pour des périodes d’occurrence qui ne sont pas définies dans FHIR. |
| [code system Interop'Santé - Codes pour le périmètre des notes](CodeSystem-fr-note-scope-codes.md) | Le système de codage pour la qualification du périmètre des notes en FHIR. |
| [code system Interop'Santé - Codes pour typer le rôle des UF par rapport à un séjour patient](CodeSystem-fr-uf-role-codes.md) | Le système de codage pour les types de rôle qu’une UF peut avoir par rapport à un séjour patient. |
| [code system Interop'Santé - Gravité de l'erreur sur une ligne de traitement d'une FCT](CodeSystem-fr-medication-reconciliation-outcome.md) | Le système de codage de la gravité de l’erreur sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [code system Interop'Santé - Nature des sources d'un Bilan Médicamenteux](CodeSystem-fr-medication-history-source-type.md) | Le système de codage des sources d’un Bilan Médicamenteux. |
| [code system Interop'Santé - Résolution d'une divergence sur une ligne de traitement d'une FCT](CodeSystem-fr-medication-reconciliation-resolution.md) | Le système de codage de la résolution d’une divergence sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [code system Interop'Santé - Statut d'une ligne de traitement d'une FCT](CodeSystem-fr-medication-reconciliation-status.md) | Le système de codage du statut d’une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [code system Interop'Santé - Statut éditorial d'une valeur](CodeSystem-fr-editorial-status.md) | Le système de codage du statut éditorial d’une valeur. |
| [code system Interop'Santé - Type d'écart/erreur sur une ligne de traitement d'une FCT](CodeSystem-fr-medication-reconciliation-type.md) | Le système de codage du type d’écart/erreur sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |
| [code system Interop'Santé - Type de document d'une ressource Composition du domaine Pharmacy](CodeSystem-fr-document-type.md) | Le système de codage SIPh du type de document d’une ressource**Composition**du domaine Pharmacy |
| [code system Interop'Santé - divergence identifiée sur une ligne de traitement d'une FCT](CodeSystem-fr-medication-reconciliation-discrepancy.md) | Le système de codage de la divergence identifiée sur une ligne de traitement d’une FCT (Fiche de Conciliation des Traitements médicamenteux). |

### Terminology: Concept Maps 

These define transformations to convert between codes by systems conforming with this implementation guide.

| | |
| :--- | :--- |
| [Conversion PN13 FHIR des code de sexe administratif](ConceptMap-PN13-FHIR-gender-conceptmap.md) | ConceptMap pour la conversion des codes de sexe administratif entre PN13 et FHIR |
| [Conversion PN13 vers FHIR pour la ligne de prescription d'une prescription de médicaments](ConceptMap-PN13-FHIR-prescmed-medicationrequest-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR d’une ligne de prescription d’une prescritpion de médicament |
| [Conversion PN13 vers FHIR pour la posologie d'une prescription de médicaments](ConceptMap-PN13-FHIR-prescmed-dosageinstruction-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR d’une posologie d’une prescritpion de médicament |
| [Conversion PN13 vers FHIR pour le patient d'une prescription de médicaments avec uniquement un identifiant fourni](ConceptMap-PN13-FHIR-prescmed-patient-id-seul-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR du patient d’une prescritpion de médicament avec uniquement un identifiant fourni |
| [Conversion PN13 vers FHIR pour le professionnel prescripteur d'une prescription de médicaments avec d'autres éléments qu'uniquement l'identifiant](ConceptMap-PN13-FHIR-prescmed-practitioner-identite-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR du professionnel prescripteur d’une prescritpion de médicament avec d’autres éléments qu’uniquement l’identifiant |
| [Conversion PN13 vers FHIR pour le professionnel prescripteur d'une prescription de médicaments avec uniquement un identifiant fourni](ConceptMap-PN13-FHIR-prescmed-practitioner-id-seul-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR du professionnel prescripteur d’une prescritpion de médicament avec uniquement un identifiant fourni |
| [Conversion PN13 vers FHIR pour les renseignements complémentaires d'une prescription de médicaments](ConceptMap-PN13-FHIR-observation-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR d’un renseignement complémentare d’une prescritpion de médicament |
| [Conversion PN13 vers FHIR pour un médicament composé d'une prescription de médicaments](ConceptMap-PN13-FHIR-prescmed-medicationcomp-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR d’un médicament composé d’une prescritpion de médicament |
| [Conversion PN13 vers FHIR pour un médicament non composé d'une prescription de médicaments](ConceptMap-PN13-FHIR-prescmed-medicationnoncompound-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR d’un médicament non composé d’une prescritpion de médicament |
| [Conversion PN13 vers FHIR pour un patient avec INS qualifiée d'une prescription de médicaments](ConceptMap-PN13-FHIR-prescmed-patient-avec-INS-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR d’un patient avec INS qualifiée d’une prescritpion de médicament |
| [Conversion PN13 vers FHIR pour un patient sans INS qualifiée d'une prescription de médicaments](ConceptMap-PN13-FHIR-prescmed-patient-sans-INS-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR d’un patient sans INS qualifiée d’une prescritpion de médicament |
| [Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments](ConceptMap-PN13-FHIR-prescmed-encounter-conceptmap.md) | ConceptMap pour la conversion PN13 vers FHIR d’un séjour d’une prescritpion de médicament |
| [Mapping Free Set CIO-DC FORME](ConceptMap-PN13-FHIR-FreeSetCIODC-Forme-ConceptMap.md) | Conversion des codes CIO de forme de médicament en codes des terminologies EQDM Standard Terms et SNOMED-CT |
| [Mapping Free Set CIO-DC UNITE](ConceptMap-PN13-FHIR-FreeSetCIODC-Unite-ConceptMap.md) | Conversion des codes CIO d’unité d’administration de médicaments en codes du référentiel UCUM et du référentiel EDQM |
| [Mapping Free Set CIO-DC VOIE](ConceptMap-PN13-FHIR-FreeSetCIODC-Voie-ConceptMap.md) | Conversion des codes CIO de voie d’administration des médicaments en codes des terminologies EQDM Standard Terms et SNOMED-CT |

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
| [HAS-01-Presc-Pantoprazole-DC](Bundle-HAS-01-Presc-Pantoprazole-DC.md) | PANTOPRAZOLE 40 mg comprimé: 40 mg le soir en DC |
| [HAS-01-Presc-Pantoprazole-MV](Bundle-HAS-01-Presc-Pantoprazole-MV.md) | PANTOPRAZOLE 40 mg comprimé: 40 mg le soir en MV |
| [HAS-02-Presc-Fluindione](Bundle-HAS-02-Presc-Fluindione.md) | FLUINDIONE 20 mg comprimé : 0,5 comprimé par jour |
| [HAS-03-Presc-INNOHEP](Bundle-HAS-03-Presc-INNOHEP.md) | INNOHEP® 14 000 UI anti-Xa/0,7 ml (tinzaparine sodique) solution injectable : 12 000UI anti-Xa (soit 170 UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée |
| [HAS-04a-Presc-Paracetamol](Bundle-HAS-04a-Presc-Paracetamol.md) | PARACETAMOL 500mg gélule - 2 gélules toutes les 6 h pendant 10 jours si douleurs |
| [HAS-04b-Presc-DAFALGANCODEINE](Bundle-HAS-04b-Presc-DAFALGANCODEINE.md) | DAFALGAN CODEINE®, comprimé un à deux comprimés toutes les 12 h pendant 10 jours, selon l’intensité de la douleur, avec un maximum à 2 comprimés par prise et de 4 comprimés par jour. STOP SI NAUSEES |
| [HAS-05a-Presc-Fluindione](Bundle-HAS-05a-Presc-Fluindione.md) | FLUINDIONE 20 mg comprimé quadrisécable : 3/4 cpr par jour (trois-quart de comprimé) |
| [HAS-05b-Presc-ACTISKENAN](Bundle-HAS-05b-Presc-ACTISKENAN.md) | ACTISKENAN® 10 mg gélule : dix milligrammes par jour pendant sept jours |
| [HAS-06-1-Presc-Methotrexate](Bundle-HAS-06-1-Presc-Methotrexate.md) | METHOTREXATE 10 mg comprimé (sécable) : 2 comprimés, 1 fois par semaine, le mardi |
| [HAS-06-2-Presc-Methotrexate](Bundle-HAS-06-2-Presc-Methotrexate.md) | METHOTREXATE 10 mg comprimé (sécable) : 20 mg, 1 fois par semaine, le mardi |
| [HAS-07-Presc-Paracetamol](Bundle-HAS-07-Presc-Paracetamol.md) | PARACETAMOL 500 mg gélule : Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules) |
| [HAS-08-1-Presc-Betamethasone](Bundle-HAS-08-1-Presc-Betamethasone.md) | BETHAMETHASONE 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter |
| [HAS-08-2-Presc-Paracetamol](Bundle-HAS-08-2-Presc-Paracetamol.md) | PARACETAMOL 24 mg/mL (DOLIPRANE 2.4%), susp buv, flac 100 mL : 1 dose correspondant à la graduation de 7 kg, toutes les 6 heures - Si température supérieure ou égale à 38,5°C. |
| [HAS-09-Presc-Ropinirole](Bundle-HAS-09-Presc-Ropinirole.md) | ROPINIROLE comprimé 1mg : 1 comprimé à 7h, 12h 18h |
| [HAS-10-Presc-Methotrexate](Bundle-HAS-10-Presc-Methotrexate.md) | METHOTREXATE 10 mg comprimé : 1 comprimé 1 fois par semaine, le mardi |
| [HAS-11-1-Presc-VitamineD](Bundle-HAS-11-1-Presc-VitamineD.md) | VITAMINE D 100 000 UI solution buvable : 1 ampoule, le premier jour de chaque mois |
| [HAS-11-2-Presc-EVRA](Bundle-HAS-11-2-Presc-EVRA.md) | EVRA® 203 µg/24h + 33,9µg/24h dispositif transdermique : Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique |
| [HAS-12-1-Presc-BEPANTHEN](Bundle-HAS-12-1-Presc-BEPANTHEN.md) | BEPANTHEN®5% crème : 1 application, 2 fois par jour, en couche mince |
| [HAS-12-2-Presc-Methotrexate](Bundle-HAS-12-2-Presc-Methotrexate.md) | METHOTREXATE cp 10 mg : 20 mg, 1 fois par semaine, le mardi |
| [HAS-12-3-Presc-Enoxaparine](Bundle-HAS-12-3-Presc-Enoxaparine.md) | ENOXAPARINE 4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie : 1 seringue, 1 fois toutes les 12 heures - voie sous-cutanée |
| [HAS-13-Presc-Desloratadine](Bundle-HAS-13-Presc-Desloratadine.md) | DESLORATADINE 5 mg comprimé 1 comprimé « 1 à 2 fois par jour » en fonction de la gêne allergique |
| [HAS-14-1-Presc-CODOLIPRANE](Bundle-HAS-14-1-Presc-CODOLIPRANE.md) | CODOLIPRANE®: 1 comprimé si douleur, avec un maximum de 2 cp/prise, avec un maximum de 8 cp/jour, en respectant 4 heures minimales entre 2 prises |
| [HAS-14-2-Presc-Betamethasone](Bundle-HAS-14-2-Presc-Betamethasone.md) | BETHAMETHASONE 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter. Ne pas dépasser 2 applications par jour |
| [HAS-15-Presc-Morphine](Bundle-HAS-15-Presc-Morphine.md) | MORPHINE SULFATE LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h) pendant huit jours |
| [HAS-16-Presc-Racecadotril](Bundle-HAS-16-Presc-Racecadotril.md) | RACECADOTRIL 100 mg gélule: 1 gélule 3 fois par jour au début de chaque repas. A poursuivre tant que la diarrhée persiste avec un maximum de 7 jours |
| [HAS-17-Presc-Budesonide](Bundle-HAS-17-Presc-Budesonide.md) | BUDESONIDE 1mg/2mL, suspension pour inhalation par nébuliseur en récipient unidose 1 récipient unidose de 1 mg 4 fois par jour selon les modalités d’administration suivantes :Préparation pour nébuliseur ultrasonique : - 3 mL Eau Pour Préparation Injectable - 1 récipient unidose (soit 2 mL) de BUDESONIDE 1mg/2mL) suspension pour inhalation par nébuliseurA administrer en 20 min à 8h, 14h, 18h, et 22h à partir du 16/03/2023 |
| [HAS-18-Presc-Budesonide-MV](Bundle-HAS-18-Presc-Budesonide-MV.md) | BUDESONIDE 1mg/2mL, suspension pour inhalation par nébuliseur en récipient unidose 1 récipient unidose de 1 mg 4 fois par jour selon les modalités d’administration suivantes :Préparation pour nébuliseur ultrasonique : - 3 mL Eau Pour Préparation Injectable - 1 récipient unidose (soit 2 mL) de BUDESONIDE 1mg/2mL) suspension pour inhalation par nébuliseurA administrer en 20 min à 8h, 14h, 18h, et 22h jusqu’au 26/03/2023 |
| [HAS-19-Presc-Paracetamol](Bundle-HAS-19-Presc-Paracetamol.md) | PARACETAMOL 1000 mg comprimé: 1 comprimé, 3 prises par jour, espacés d’au moins 4 heures |
| [HAS-20-Presc-Hydrocortisone](Bundle-HAS-20-Presc-Hydrocortisone.md) | HYDROCORTISONE 10 mg comprimé: 20 mg à 8h et 10 mg à 12h |
| [HAS-21-Presc-Prednisolone](Bundle-HAS-21-Presc-Prednisolone.md) | PREDNISOLONE 20 mg comprimé (sécable) : en une prise le matin 60 mg jusqu’à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l’arrêt selon évolution |
| [HAS-22-Presc-Prednisolone](Bundle-HAS-22-Presc-Prednisolone.md) | PREDNISOLONE 20 mg comprimé (sécable) : en une prise le matin 60 mg jusqu’à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l’arrêt selon évolution |
| [HAS-23-1-Presc-Fluindione](Bundle-HAS-23-1-Presc-Fluindione.md) | FLUINDIONE 20 mg comprimé quadrisécable: 0,5 comprimé au jour 1, et puis 0,75 comprimé au jour 2. Recommencer le cycle de 2 jours, à répéter sur le mois |
| [HAS-23-2-Presc-Amiodarone](Bundle-HAS-23-2-Presc-Amiodarone.md) | AMIODARONE 200 mg comprimé: 1 comprimé pendant 5 jours (du lundi au vendredi), et puis arrêt 2 jours (samedi, dimanche). Recommencer le cycle de 7 jours, à répéter sur le mois |
| [HAS-24-1-presc-Doxycyline](Bundle-HAS-24-1-presc-Doxycyline.md) | DOXYCYCLINE 100 mg comprime : 1 comprimé le soir. Ne pas s’allonger dans l’heure qui suit la prise, utiliser une protection solaire adaptée |
| [HAS-24-1-presc-Topiramate](Bundle-HAS-24-1-presc-Topiramate.md) | TOPIRAMATE 15 mg gélule: 1 gélule par jour. Si difficulté à prendre la gélule, l’ouvrir et en administrer le contenu avec un peu de compote |
| [HAS-25-NOVORAPID](Bundle-HAS-25-NOVORAPID.md) | NOVORAPID Flexpen® 100 UI / mL : A administrer avant chaque repas en fonction de la glycémie 6 U si glycémie entre 1,5 et 2 g/L​ 8 U si glycémie entre 2 et 2,5 g/L 10 U si glycémie supérieure à 2,5 g/L |
| [HAS-26-Diazepam](Bundle-HAS-26-Diazepam.md) | DIAZEPAM 10 mg comprimé bisécable (VALIUM®): 1 comprimé toutes les 6 heures - si agitation |
| [HAS-27-1-presc-GLUCOPHAGE](Bundle-HAS-27-1-presc-GLUCOPHAGE.md) | GLUCOPHAGE® 500 mg comprimé : 1 comprimé matin et 1 comprimé soir, au cours ou à la fin des repas |
| [HAS-27-2-presc-Rifampicine](Bundle-HAS-27-2-presc-Rifampicine.md) | RIFAMPICINE 300 mg en gélule 2 gélules le matin 30 minutes avant le petit-déjeuner |
| [HAS-28-Presc-LOVENOX](Bundle-HAS-28-Presc-LOVENOX.md) | ENOXAPARINE sodique 4 000 UI (40 mg)/0,4 mL (LOVENOX®), solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l’intervention chirurgicale. à poursuivre pendant 10 jours après l’intervention. |
| [HAS-29-Presc-LOVENOX](Bundle-HAS-29-Presc-LOVENOX.md) | ENOXAPARINE sodique 6000 UI (LOVENOX®), solution injectable en seringue préremplie : 1 injection en SC par jour jusqu’à ce que l’INR de l’AVK soit dans la zone thérapeutique cible |
| [HAS-30-1-Presc-Hydrocortisone](Bundle-HAS-30-1-Presc-Hydrocortisone.md) | HYDROCORTISONE 10 mg : 1 comprimé matin et 1 comprimé midi En cas de fièvre, de forte chaleur, d’infection, de diarrhée, de stress important, augmenter la quantité pour passer à : 2 comprimés matin et 2 comprimés midi. En cas de fièvre > 40°C passer à : 2 comprimés matin, 2 comprimés midi et 2 comprimés à 16h. Avec un maximum de 6 comprimés par jour. QSP 6 mois. |
| [HAS-30-2-Presc-Cetirizine](Bundle-HAS-30-2-Presc-Cetirizine.md) | CETIRIZINE 10 mg : 1 à 4 comprimés par jour selon les symptômes (urticaire) |
| [HAS-31-Presc-DUROGESIC](Bundle-HAS-31-Presc-DUROGESIC.md) | DUROGESIC® dispositif transdermique 25 μg : un dispositif transdermique de vingt-cinq microgrammes à changer toutes les soixante-douze heures, pendant deux semaines. |
| [HAS-32-1-Presc-LOVENOX](Bundle-HAS-32-1-Presc-LOVENOX.md) | ENOXAPARINE sodique 4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie (LOVENOX®): 1 injection en sous-cutanée par jour pendant 1 semaine. |
| [HAS-32-2-Presc-ULTIBRO-BREES](Bundle-HAS-32-2-Presc-ULTIBRO-BREES.md) | ULTIBRO BREEZ® 85/43 µg gélule : 1 gélule à administrer par voie inhalée à la même heure chaque jour pendant 1 mois. |
| [HAS-33-Presc-VERSATIS](Bundle-HAS-33-Presc-VERSATIS.md) | VERSATIS® 700 mg emplâtre médicamenteux: 1 emplâtre par jour à 20 h, à laisser pendant 12h sur la peau |
| [InLine-DOLIPRANE](Medication-InLine-DOLIPRANE.md) | Medication DOLIPRANE® pour exemple de dispensation |
| [InLine-Presc-EFFERALGAN](MedicationRequest-InLine-Presc-EFFERALGAN.md) | Prescription d’EFFERALGAN® pour exemple de dispensation |
| [InLine-med-EFFERALGAN](Medication-InLine-med-EFFERALGAN.md) | Medication EFFERALGAN® pour exemple de dispensation |
| [InLine-med-Paracetamol](Medication-InLine-med-Paracetamol.md) | Medication Paracétamol pour exemple de dispensation |
| [InLine-patient-group-01](Group-InLine-patient-group-01.md) | Groupe de patient pour exemple de délivrance reglobalisée |
| [InLine-presc-EFFERALGAN2](MedicationRequest-InLine-presc-EFFERALGAN2.md) | Prescription d’EFFERALGAN® pour exemple de dispensation |
| [InLine-presc-Paracetamol1](MedicationRequest-InLine-presc-Paracetamol1.md) | Prescription de Paracétamol pour exemple de dispensation |
| [InLine-presc-Paracetamol2](MedicationRequest-InLine-presc-Paracetamol2.md) | Prescription de Paracétamol pour exemple de dispensation |
| [MultiLine-Presc-METFORMINE-GLICLAZIDE](Bundle-MultiLine-Presc-METFORMINE-GLICLAZIDE.md) | METFORMINE® ou GLICLAZIDE® en cas d’intolérance digestive à la METFORMINE |
| [MultiLine-Presc-METHOTREXATE-LEDERFOLINE](Bundle-MultiLine-Presc-METHOTREXATE-LEDERFOLINE.md) | METHOTREX® et LEDERFOLINE® à prendre en même temps |
| [MultiLine-Presc-Sucralfate-Paracetamol](Bundle-MultiLine-Presc-Sucralfate-Paracetamol.md) | Paracetamol 2h après Sucralfate |
| [Presc-BISOPROLOL-SANDOZ-DosesRationnelles](Bundle-Presc-BISOPROLOL-SANDOZ-DosesRationnelles.md) | BISOPROLOL® 7.5 mg SANDOZ, 1/3cpr à 7h et 2/3 à 18h per os, pendant 1 semaine |
| [Presc-Betamethasone-ApplCut](Bundle-Presc-Betamethasone-ApplCut.md) | bêtaméthasone 0.05%, 1 application cutanée à 8h, pendant 5j |
| [Presc-CLARADOL-DoseDiffParHoraire](Bundle-Presc-CLARADOL-DoseDiffParHoraire.md) | CLARADOL® 500 mg, 2 cpr à 7h et 1 cpr à 18h per os, pendant 5j |
| [Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin.md) | CLARADOL® 500 mg, 1 cpr si douleur, 2 cpr max par prise, 6 cpr max par 24h, 4h délais min entre deux prises, pendant 5j |
| [Presc-CLARADOL-TL6h-MedCodeableConcept](Bundle-Presc-CLARADOL-TL6h-MedCodeableConcept.md) | CLARADOL® 500 mg, 1 cpr toutes les 6h per os, pendant 5j |
| [Presc-CLARADOL-TLMardisVendredis](Bundle-Presc-CLARADOL-TLMardisVendredis.md) | CLARADOL® 500 mg, 1 cpr à 18h tous les mardis et vendredis, per os, pendant 3 mois |
| [Presc-CODOLIPRANE-MedCodeableConcept](Bundle-Presc-CODOLIPRANE-MedCodeableConcept.md) | CODOLIPRANE® 500 mg/30 mg, cpr, 1 à 7h et 18h per os, pendant 5j |
| [Presc-Capecitabine-Dose-Calculee](Bundle-Presc-Capecitabine-Dose-Calculee.md) | capécitabine 1800 mg (1000 mg/m²), 7h et 18h per os, pendant 14j |
| [Presc-DIPROSONE-AppCut](Bundle-Presc-DIPROSONE-AppCut.md) | DIPROSONE® 0.05%, 1 application cutanée à 8h, pendant 5j |
| [Presc-DOLIPRANE-20DoseParKG](Bundle-Presc-DOLIPRANE-20DoseParKG.md) | DOLIPRANE® 2.4% ss sucre, 20 dose-kg à 7h et 18h per os, pendant 5j |
| [Presc-EFFERALGAN](Bundle-Presc-EFFERALGAN.md) | EFFERALGAN® 1 000 mg, cpr, 1 à 7h, 12h et 18h per os, pendant 5j |
| [Presc-Fentanyl-patch72h-TL3j](Bundle-Presc-Fentanyl-patch72h-TL3j.md) | fentanyl 75 µg/h, patch 72h, 1 à 7h, tous les 3j, pendant 8j |
| [Presc-MATRIFEN-patch-TL72h](Bundle-Presc-MATRIFEN-patch-TL72h.md) | MATRIFEN® 75 µg/h, patch, 1 à 7h, toutes les 72h, pendant 8j |
| [Presc-MV-PerfGl-NaCl-KCl](Bundle-Presc-MV-PerfGl-NaCl-KCl.md) | MV - glucose 5%+sodium chlorure 2g+potassium chlorure 1g x 500mL, 1 à 10h et 22h sur 12h, pendant 5j |
| [Presc-Methylpredinosolone-DosesEvolutives](Bundle-Presc-Methylpredinosolone-DosesEvolutives.md) | méthylpredinosolone, 6 mg pendant 2j, puis 4 mg pendant 2j, puis 2 mg pendant 2j |
| [Presc-MiniperfCefotaxime-En20min-Pdt3j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt3j.md) | céfotaxine dans miniperf G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j |
| [Presc-MiniperfCefotaxime-En20min-Pdt4j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt4j.md) | céfotaxine dans G5 100 mL, 4g (céfotaxine) en 20 min toutes les 6h pendant 4j |
| [Presc-NICORETTESKIN-patch](Bundle-Presc-NICORETTESKIN-patch.md) | NICORETTESKIN® 15 mg/16h, patch, 1 à 7h, pendant 2 semaines |
| [Presc-Nicotine-15mgPar16h](Bundle-Presc-Nicotine-15mgPar16h.md) | nicotine 15 mg/16h, patch, 1 à 7h, pendant 2 semaines |
| [Presc-Paracetamol](Bundle-Presc-Paracetamol.md) | paracétamol, 1 g à 7h, 12h et 18h per os, pendant 5j |
| [Presc-Paracetamol-DoseEvolutive](Bundle-Presc-Paracetamol-DoseEvolutive.md) | paracétamol, 1 g à 7h et 500 mg à 18h per os, pendant 5j |
| [Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin.md) | paracétamol, 500 mg per os si douleur, 1 g max par prise, 3 g max par 24h, 4h délais min entre deux prises, pendant 5j |
| [Presc-Paracetamol-TL6h](Bundle-Presc-Paracetamol-TL6h.md) | paracétamol, 500 mg toutes les 6 h per os, pendant 5j |
| [Presc-ParacetamolCodeine-500mg30mg](Bundle-Presc-ParacetamolCodeine-500mg30mg.md) | paracétamol+codéine 500 mg+30 mg, 1 à 7h et 18h per os, pendant 5j |
| [Presc-PerfDobutamine-Qsp40mL](Bundle-Presc-PerfDobutamine-Qsp40mL.md) | dobutamine 200 mg dans soluté=G5 qsp 40 mL, 400 µg/min pendant 1j |
| [Presc-PerfGl-NaCl-KCl-1l](Bundle-Presc-PerfGl-NaCl-KCl-1l.md) | Perfusion Glucose 5% 1L avec Sodium chlorure 3g et Potassium chlorure 2g, à 10h et 22h sur 12h, pendant 5j |
| [Presc-PerfGl-NaCl-KCl-500ml](Bundle-Presc-PerfGl-NaCl-KCl-500ml.md) | Perfusion Glucose 5% 500 mL avec Sodium chlorure 2g et Potassium chlorure 1g, à 10h et 22h sur 12h, pendant 5j |
| [Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h](Bundle-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h.md) | BIONOLYTE® G5, sol pr perf,poche 500 mL, 1 à 10h et 22h sur 12h, pendant 5j |
| [TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE](Bundle-TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE.md) | METFORMINE® ou GLICLAZIDE® en cas d’intolérance digestive à la METFORMINE - Traduction de PN13 |
| [TradPN13FHIR-Presc-DOLIPRANE](Bundle-TradPN13FHIR-Presc-DOLIPRANE.md) | DOLIPRANE® 1000mg 3x/j pdt 2j - Traduction de PN13 sans interpretation du code de fréquence |
| [TradPN13FHIR-Presc-DOLIPRANE-Interpret](Bundle-TradPN13FHIR-Presc-DOLIPRANE-Interpret.md) | DOLIPRANE® 1000mg 3x/j pdt 2j - Traduction de PN13 en interprétant le code de fréquence |
| [TradPN13FHIR-Presc-Morphine-PCA](Bundle-TradPN13FHIR-Presc-Morphine-PCA.md) | PCA Morphine 120 mg/24h Bolus 10 mg Période refractaire 2h – À partir du 07/05/2025 à 17:30 jusqu’au 11/05/2025 à 17h30 - Traduction de PN13 |
| [TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md) | PARACETAMOL MYLAN CONSEIL 1000 MG, COMPRIME (Voie orale) - Si douleur : 1000 mg /prise, 4000 mg max/j, respecter 6h entre 2 prises pendant 2 jours - Traduction de PN13 |
| [TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md) | PARACETAMOL (Voie orale) si douleur: 1000 mg /prise, 4000 mg max/j, respecter 6h entre 2 prises pendant 2 jours - Traduction de PN13 |
| [TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md) | Perf 6composants en UCD en continu sur 12h00 par jour - Traduction de PN13 |

