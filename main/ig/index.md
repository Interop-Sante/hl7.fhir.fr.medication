# Accueil - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* **Accueil**

## Accueil

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ImplementationGuide/hl7.fhir.fr.medication | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:MED |

### Introduction

> **Attention !**Cet Implementation Guide n'est pas la version courante. La version courante sera accessible via l'URL canonique (https://hl7.fr/ig/fhir/medication) lorsque celui-ci sera publié.

Ce guide d’implémentation (IG) a pour vocation à spécifier les flux d’information autour du médicament pour un patient dans un contexte hospitalier dans un premier temps. Trois cas d’usage sont pris en compte dans la version actuelle de cet IG:

1. [La prescription](prescription-Intro.md)
1. [La dispensation](dispensation-Intro.md)
1. [La concilation](conciliation-Intro.md)

Ce domaine est pris en charge par le GT Pharmacie d’HL7 France au sein de l’association [Interop’Santé](https://www.interopsante.org/) après une première version développée au sein de la communauté SIPh. L’historique des versions et des travaux est détaillé dans la page de [suivi des travaux](suivitravaux.md).

Cet IG est en développement continu. Certaines sections n’ont pas encore été complètement développées dans cette version. Ces sections sont néanmoins identifiées pour référence.

L’IG intègre également une partie indiquant [comment passer de flux PN13 à des ressources FHIR](transformation-PN13-vers-FHIR.md) et inversement.

#### Dépendances





#### Propriété intellectuelle

Certaines ressources sémantiques de ce guide sont protégées par des droits de propriété intellectuelle couverte par les déclarations ci-dessous. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.0.2/CodeSystem-ISO3166Part1.html): [FRCurrentMedicationComposition](StructureDefinition-fr-current-medication-composition.md), [FRCurrentMedicationMedicationStatement](StructureDefinition-fr-current-medication-medicationstatement.md)...Show 75 more,[FRInpatientMedicationDispense](StructureDefinition-fr-inpatient-medication-dispense.md),[FRInpatientMedicationRequest](StructureDefinition-fr-inpatient-medicationrequest.md),[FRMPSubstance](StructureDefinition-fr-mp-substance.md),[FRMedication](StructureDefinition-fr-medication.md),[FRMedicationCodes](ValueSet-fr-medication-code.md),[FRMedicationHistoryComposition](StructureDefinition-fr-medication-history-composition.md),[FRMedicationHistoryMedicationStatement](StructureDefinition-fr-medication-history-medicationstatement.md),[FRMedicationHistorySourceType](ValueSet-fr-medication-history-source-type.md),[FRMedicationHistorySources](StructureDefinition-fr-medication-history-sources.md),[FRMedicationNonCompound](StructureDefinition-fr-medication-noncompound.md),[FRMedicationReconciliationComposition](StructureDefinition-fr-medication-reconciliation-composition.md),[FRMedicationReconciliationDiscrepancy](CodeSystem-fr-medication-reconciliation-discrepancy.md),[FRMedicationReconciliationDocumentType](ValueSet-fr-medication-reconciliation-document-type.md),[FRMedicationReconciliationMedicationStatement](StructureDefinition-fr-medication-reconciliation-statement.md),[FRMedicationReconciliationOutcome](ValueSet-fr-medication-reconciliation-outcome.md),[FRMedicationReconciliationQualifiedDiscrepancy](ValueSet-fr-medication-reconciliation-qualified-discrepancy.md),[FRMedicationReconciliationResolution](ValueSet-fr-medication-reconciliation-resolution.md),[FRMedicationReconciliationStatus](ValueSet-fr-medication-reconciliation-status.md),[FRMedicationReconciliationType](ValueSet-fr-medication-reconciliation-type.md),[FRMedicationRequest](StructureDefinition-fr-medicationrequest.md),[FRMedicationRequestNoteScope](StructureDefinition-fr-medicationrequest-note-scope.md),[FRMedicationStatementReconciliationProperties](StructureDefinition-fr-medicationstatement-reconciliation-properties.md),[FRMedicationVirtual](StructureDefinition-fr-medication-virtual.md),[FRObservationForPrescription](StructureDefinition-fr-observation-for-prescription.md),[FROnAdmissionMedicationComposition](StructureDefinition-fr-on-admission-medication-composition.md),[FROnAdmissionRetroactiveReconciliationComposition](StructureDefinition-fr-on-admission-retroactive-reconciliation-composition.md),[FRPrescriptionBundleForExample](StructureDefinition-fr-prescription-bundle-for-example.md),[FRRequestGroupForPrescription](StructureDefinition-fr-requestgroup-for-prescription.md),[FrAdditionalActionRelationship](StructureDefinition-fr-additional-action-relationship.md),[FrAdditionalActionRelationshipType](CodeSystem-fr-additional-action-relationship-type.md),[FrAdditionalRequestGroupRelationshipValueSet](ValueSet-fr-additional-action-relationship-type-value-set.md),[FrAdditionalWhenCodes](ValueSet-fr-additional-when-codes.md),[FrAdditionalWhenValues](StructureDefinition-fr-additional-when-values.md),[FrBasisOfDoseComponent](StructureDefinition-fr-basis-of-dose-component.md),[FrCurrentMedicationDocumentType](ValueSet-fr-current-medication-document-type.md),[FrDocumentType](CodeSystem-fr-document-type.md),[FrDrugCharacteristic](StructureDefinition-fr-drug-characteristic.md),[FrEditorialStatus](ValueSet-fr-editorial-status.md),[FrIsVehicle](StructureDefinition-fr-is-vehicle.md),[FrMethodOfAdministration](ValueSet-FrMethodOfAdministration.md),[FrMpDoseForm](ValueSet-fr-mp-dose-form.md),[FrNoteScopeCodeValueSet](ValueSet-fr-note-scope-codes-vs.md),[FrNoteScopeCodes](CodeSystem-fr-note-scope-codes.md),[FrPN13FHIRFreeSetCIODCFormeConceptMap](ConceptMap-PN13-FHIR-FreeSetCIODC-Forme-ConceptMap.md),[FrPN13FHIRFreeSetCIODCUniteConceptMap](ConceptMap-PN13-FHIR-FreeSetCIODC-Unite-ConceptMap.md),[FrPN13FHIRFreeSetCIODCVoieConceptMap](ConceptMap-PN13-FHIR-FreeSetCIODC-Voie-ConceptMap.md),[FrPN13FHIRGenderConceptMap](ConceptMap-PN13-FHIR-gender-conceptmap.md),[FrPN13FHIRMedicationNonCompoundConceptMap](ConceptMap-PN13-FHIR-prescmed-medicationnoncompound-conceptmap.md),[FrPN13FHIRMedicationPrescriptionDosageInstructiontConceptMap](ConceptMap-PN13-FHIR-prescmed-dosageinstruction-conceptmap.md),[FrPN13FHIRMedicationPrescriptionEncounterConceptMap](ConceptMap-PN13-FHIR-prescmed-encounter-conceptmap.md),[FrPN13FHIRMedicationPrescriptionMedicationCompConceptMap](ConceptMap-PN13-FHIR-prescmed-medicationcomp-conceptmap.md),[FrPN13FHIRMedicationPrescriptionMedicationRequestConceptMap](ConceptMap-PN13-FHIR-prescmed-medicationrequest-conceptmap.md),[FrPN13FHIRMedicationPrescriptionPatientINSConceptMap](ConceptMap-PN13-FHIR-prescmed-patient-avec-INS-conceptmap.md),[FrPN13FHIRMedicationPrescriptionPatientIdSeulConceptMap](ConceptMap-PN13-FHIR-prescmed-patient-id-seul-conceptmap.md),[FrPN13FHIRMedicationPrescriptionPatientSansINSConceptMap](ConceptMap-PN13-FHIR-prescmed-patient-sans-INS-conceptmap.md),[FrPN13FHIRMedicationPrescriptionPractitionerIdSeulConceptMap](ConceptMap-PN13-FHIR-prescmed-practitioner-id-seul-conceptmap.md),[FrPN13FHIRMedicationPrescriptionPractitionerIdentiteConceptMap](ConceptMap-PN13-FHIR-prescmed-practitioner-identite-conceptmap.md),[FrPN13FHIRObservationConceptMap](ConceptMap-PN13-FHIR-observation-conceptmap.md),[FrRangeMedication](StructureDefinition-FrRangeMedication.md),[FrRatioMedication](StructureDefinition-FrRatioMedication.md),[FrRedicationCompound](StructureDefinition-fr-medication-compound.md),[FrRouteOfAdministration](ValueSet-fr-route-of-administration.md),[FrSimpleQuantityMedication](StructureDefinition-FrSimpleQuantityMedication.md),[FrStrengthCodeableConcept](StructureDefinition-fr-strength-codeableconcept.md),[FrSubstanceCode](ValueSet-fr-substance-code.md),[FrTeatmentIntent](StructureDefinition-fr-treatment-intent.md),[FrTreatmentIntent](ValueSet-fr-treatment-intent.md),[FrUFRole](StructureDefinition-fr-uf-role.md),[FrUFRoleCodes](CodeSystem-fr-uf-role-codes.md),[FrUfRoleCodesForPrescriptionValueSet](ValueSet-fr-uf-role-code-for-prescription.md),[LignePrescription](StructureDefinition-fr-ligne-prescription.md),[MED](index.md),[MedicationIngredientStrengthCodes](ValueSet-medication-ingredient-strength-codes.md),[Medication_Ingredient_Strength_Codes](CodeSystem-medication-ingredient-strength-codes.md)and[Posologie](StructureDefinition-fr-posologie.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://terminology.hl7.org/6.0.2/CodeSystem-v3-ucum.html): [Bundle/HAS-01-Presc-Pantoprazole-DC](Bundle-HAS-01-Presc-Pantoprazole-DC.md), [Bundle/HAS-01-Presc-Pantoprazole-MV](Bundle-HAS-01-Presc-Pantoprazole-MV.md)...Show 55 more,[Bundle/HAS-04b-Presc-DAFALGANCODEINE](Bundle-HAS-04b-Presc-DAFALGANCODEINE.md),[Bundle/HAS-05b-Presc-ACTISKENAN](Bundle-HAS-05b-Presc-ACTISKENAN.md),[Bundle/HAS-06-2-Presc-Methotrexate](Bundle-HAS-06-2-Presc-Methotrexate.md),[Bundle/HAS-07-Presc-Paracetamol](Bundle-HAS-07-Presc-Paracetamol.md),[Bundle/HAS-12-2-Presc-Methotrexate](Bundle-HAS-12-2-Presc-Methotrexate.md),[Bundle/HAS-12-3-Presc-Enoxaparine](Bundle-HAS-12-3-Presc-Enoxaparine.md),[Bundle/HAS-14-1-Presc-CODOLIPRANE](Bundle-HAS-14-1-Presc-CODOLIPRANE.md),[Bundle/HAS-14-2-Presc-Betamethasone](Bundle-HAS-14-2-Presc-Betamethasone.md),[Bundle/HAS-17-Presc-Budesonide](Bundle-HAS-17-Presc-Budesonide.md),[Bundle/HAS-18-Presc-Budesonide-MV](Bundle-HAS-18-Presc-Budesonide-MV.md),[Bundle/HAS-19-Presc-Paracetamol](Bundle-HAS-19-Presc-Paracetamol.md),[Bundle/HAS-20-Presc-Hydrocortisone](Bundle-HAS-20-Presc-Hydrocortisone.md),[Bundle/HAS-21-Presc-Prednisolone](Bundle-HAS-21-Presc-Prednisolone.md),[Bundle/HAS-22-Presc-Prednisolone](Bundle-HAS-22-Presc-Prednisolone.md),[Bundle/HAS-30-1-Presc-Hydrocortisone](Bundle-HAS-30-1-Presc-Hydrocortisone.md),[Bundle/MultiLine-Presc-Sucralfate-Paracetamol](Bundle-MultiLine-Presc-Sucralfate-Paracetamol.md),[Bundle/Presc-Betamethasone-ApplCut](Bundle-Presc-Betamethasone-ApplCut.md),[Bundle/Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin.md),[Bundle/Presc-Capecitabine-Dose-Calculee](Bundle-Presc-Capecitabine-Dose-Calculee.md),[Bundle/Presc-DIPROSONE-AppCut](Bundle-Presc-DIPROSONE-AppCut.md),[Bundle/Presc-DOLIPRANE-20DoseParKG](Bundle-Presc-DOLIPRANE-20DoseParKG.md),[Bundle/Presc-EFFERALGAN](Bundle-Presc-EFFERALGAN.md),[Bundle/Presc-Fentanyl-patch72h-TL3j](Bundle-Presc-Fentanyl-patch72h-TL3j.md),[Bundle/Presc-MATRIFEN-patch-TL72h](Bundle-Presc-MATRIFEN-patch-TL72h.md),[Bundle/Presc-MV-PerfGl-NaCl-KCl](Bundle-Presc-MV-PerfGl-NaCl-KCl.md),[Bundle/Presc-Methylpredinosolone-DosesEvolutives](Bundle-Presc-Methylpredinosolone-DosesEvolutives.md),[Bundle/Presc-MiniperfCefotaxime-En20min-Pdt3j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt3j.md),[Bundle/Presc-MiniperfCefotaxime-En20min-Pdt4j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt4j.md),[Bundle/Presc-NICORETTESKIN-patch](Bundle-Presc-NICORETTESKIN-patch.md),[Bundle/Presc-Nicotine-15mgPar16h](Bundle-Presc-Nicotine-15mgPar16h.md),[Bundle/Presc-Paracetamol](Bundle-Presc-Paracetamol.md),[Bundle/Presc-Paracetamol-DoseEvolutive](Bundle-Presc-Paracetamol-DoseEvolutive.md),[Bundle/Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin.md),[Bundle/Presc-Paracetamol-TL6h](Bundle-Presc-Paracetamol-TL6h.md),[Bundle/Presc-ParacetamolCodeine-500mg30mg](Bundle-Presc-ParacetamolCodeine-500mg30mg.md),[Bundle/Presc-PerfDobutamine-Qsp40mL](Bundle-Presc-PerfDobutamine-Qsp40mL.md),[Bundle/Presc-PerfGl-NaCl-KCl-1l](Bundle-Presc-PerfGl-NaCl-KCl-1l.md),[Bundle/Presc-PerfGl-NaCl-KCl-500ml](Bundle-Presc-PerfGl-NaCl-KCl-500ml.md),[Bundle/Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h](Bundle-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h.md),[Bundle/TradPN13FHIR-Presc-Morphine-PCA](Bundle-TradPN13FHIR-Presc-Morphine-PCA.md),[Bundle/TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md),[Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md),[Bundle/TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md),[Medication/InLine-DOLIPRANE](Medication-InLine-DOLIPRANE.md),[Medication/InLine-med-EFFERALGAN](Medication-InLine-med-EFFERALGAN.md),[MedicationDispense/Disp-DOLIPRANE-Refill-Compl-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-Compl-presc-DC.md),[MedicationDispense/Disp-DOLIPRANE-Refill-Substit](MedicationDispense-Disp-DOLIPRANE-Refill-Substit.md),[MedicationDispense/Disp-DOLIPRANE-Refill-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-presc-DC.md),[MedicationDispense/Disp-EFFERALGAN](MedicationDispense-Disp-EFFERALGAN.md),[MedicationDispense/Disp-EFFERALGAN-presc-DC](MedicationDispense-Disp-EFFERALGAN-presc-DC.md),[MedicationDispense/Disp-group01-1](MedicationDispense-Disp-group01-1.md),[MedicationDispense/Disp-group01-2](MedicationDispense-Disp-group01-2.md),[MedicationRequest/InLine-presc-Paracetamol1](MedicationRequest-InLine-presc-Paracetamol1.md),[MedicationRequest/InLine-presc-Paracetamol2](MedicationRequest-InLine-presc-Paracetamol2.md)and[Posologie](StructureDefinition-fr-posologie.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.0.2/CodeSystem-v3-loinc.html): [Bundle/TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md), [Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md)...Show 4 more,[Bundle/TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md),[FRMedicationHistoryComposition](StructureDefinition-fr-medication-history-composition.md),[FRMedicationReconciliationComposition](StructureDefinition-fr-medication-reconciliation-composition.md)and[FROnAdmissionRetroactiveReconciliationComposition](StructureDefinition-fr-on-admission-retroactive-reconciliation-composition.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [Bundle/HAS-04a-Presc-Paracetamol](Bundle-HAS-04a-Presc-Paracetamol.md), [Bundle/HAS-07-Presc-Paracetamol](Bundle-HAS-07-Presc-Paracetamol.md)...Show 7 more,[Bundle/HAS-14-1-Presc-CODOLIPRANE](Bundle-HAS-14-1-Presc-CODOLIPRANE.md),[Bundle/HAS-26-Diazepam](Bundle-HAS-26-Diazepam.md),[Bundle/Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin.md),[Bundle/Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin.md),[Bundle/Presc-PerfGl-NaCl-KCl-1l](Bundle-Presc-PerfGl-NaCl-KCl-1l.md),[FrTeatmentIntent](StructureDefinition-fr-treatment-intent.md)and[FrTreatmentIntent](ValueSet-fr-treatment-intent.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [DoseAndRateType](http://terminology.hl7.org/7.0.1/CodeSystem-dose-rate-type.html): [Bundle/Presc-CODOLIPRANE-MedCodeableConcept](Bundle-Presc-CODOLIPRANE-MedCodeableConcept.md), [Bundle/Presc-Capecitabine-Dose-Calculee](Bundle-Presc-Capecitabine-Dose-Calculee.md)...Show 14 more,[Bundle/Presc-DIPROSONE-AppCut](Bundle-Presc-DIPROSONE-AppCut.md),[Bundle/Presc-DOLIPRANE-20DoseParKG](Bundle-Presc-DOLIPRANE-20DoseParKG.md),[Bundle/Presc-EFFERALGAN](Bundle-Presc-EFFERALGAN.md),[Bundle/Presc-NICORETTESKIN-patch](Bundle-Presc-NICORETTESKIN-patch.md),[Bundle/Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h](Bundle-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h.md),[MedicationDispense/Disp-DOLIPRANE-Refill-Compl-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-Compl-presc-DC.md),[MedicationDispense/Disp-DOLIPRANE-Refill-Substit](MedicationDispense-Disp-DOLIPRANE-Refill-Substit.md),[MedicationDispense/Disp-DOLIPRANE-Refill-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-presc-DC.md),[MedicationDispense/Disp-EFFERALGAN](MedicationDispense-Disp-EFFERALGAN.md),[MedicationDispense/Disp-EFFERALGAN-presc-DC](MedicationDispense-Disp-EFFERALGAN-presc-DC.md),[MedicationRequest/InLine-Presc-EFFERALGAN](MedicationRequest-InLine-Presc-EFFERALGAN.md),[MedicationRequest/InLine-presc-EFFERALGAN2](MedicationRequest-InLine-presc-EFFERALGAN2.md),[MedicationRequest/InLine-presc-Paracetamol1](MedicationRequest-InLine-presc-Paracetamol1.md)and[MedicationRequest/InLine-presc-Paracetamol2](MedicationRequest-InLine-presc-Paracetamol2.md)
* [MedicationKnowledge Characteristic Codes](http://terminology.hl7.org/7.0.1/CodeSystem-medicationknowledge-characteristic.html): [FrDrugCharacteristic](StructureDefinition-fr-drug-characteristic.md)
* [Observation Category Codes](http://terminology.hl7.org/7.0.1/CodeSystem-observation-category.html): [Bundle/TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md), [Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md) and [Bundle/TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md)
* [identifierType](http://terminology.hl7.org/7.0.1/CodeSystem-v2-0203.html): [Bundle/TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md), [Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md) and [Bundle/TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md)
* [ActCode](http://terminology.hl7.org/7.0.1/CodeSystem-v3-ActCode.html): [MedicationDispense/Disp-DOLIPRANE-Refill-Compl-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-Compl-presc-DC.md), [MedicationDispense/Disp-DOLIPRANE-Refill-Substit](MedicationDispense-Disp-DOLIPRANE-Refill-Substit.md)...Show 5 more,[MedicationDispense/Disp-DOLIPRANE-Refill-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-presc-DC.md),[MedicationDispense/Disp-EFFERALGAN](MedicationDispense-Disp-EFFERALGAN.md),[MedicationDispense/Disp-EFFERALGAN-presc-DC](MedicationDispense-Disp-EFFERALGAN-presc-DC.md),[MedicationDispense/Disp-group01-1](MedicationDispense-Disp-group01-1.md)and[MedicationDispense/Disp-group01-2](MedicationDispense-Disp-group01-2.md)


* Unless otherwise indicated, reproduction of material posted on Council of Europe websites, and reproduction of photographs for which the Council of Europe holds copyright – see legal notice \“photo credits\” – is authorised for private use and for informational and educational uses relating to the Council of Europe’s work. This authorisation is subject to the condition that the source be indicated and no charge made for reproduction. Persons wishing to make some other use than those specified above, including commercial use, of information and text posted on these sites are asked to apply for prior written authorisation to the Council of Europe, Directorate of Communication.

* [EDQM Standard Terms](http://tx.fhir.org/r4/ValueSet/edqm): [Bundle/HAS-01-Presc-Pantoprazole-DC](Bundle-HAS-01-Presc-Pantoprazole-DC.md), [Bundle/HAS-02-Presc-Fluindione](Bundle-HAS-02-Presc-Fluindione.md)...Show 87 more,[Bundle/HAS-03-Presc-INNOHEP](Bundle-HAS-03-Presc-INNOHEP.md),[Bundle/HAS-04a-Presc-Paracetamol](Bundle-HAS-04a-Presc-Paracetamol.md),[Bundle/HAS-04b-Presc-DAFALGANCODEINE](Bundle-HAS-04b-Presc-DAFALGANCODEINE.md),[Bundle/HAS-05a-Presc-Fluindione](Bundle-HAS-05a-Presc-Fluindione.md),[Bundle/HAS-06-1-Presc-Methotrexate](Bundle-HAS-06-1-Presc-Methotrexate.md),[Bundle/HAS-09-Presc-Ropinirole](Bundle-HAS-09-Presc-Ropinirole.md),[Bundle/HAS-10-Presc-Methotrexate](Bundle-HAS-10-Presc-Methotrexate.md),[Bundle/HAS-11-1-Presc-VitamineD](Bundle-HAS-11-1-Presc-VitamineD.md),[Bundle/HAS-11-2-Presc-EVRA](Bundle-HAS-11-2-Presc-EVRA.md),[Bundle/HAS-12-3-Presc-Enoxaparine](Bundle-HAS-12-3-Presc-Enoxaparine.md),[Bundle/HAS-13-Presc-Desloratadine](Bundle-HAS-13-Presc-Desloratadine.md),[Bundle/HAS-14-1-Presc-CODOLIPRANE](Bundle-HAS-14-1-Presc-CODOLIPRANE.md),[Bundle/HAS-15-Presc-Morphine](Bundle-HAS-15-Presc-Morphine.md),[Bundle/HAS-16-Presc-Racecadotril](Bundle-HAS-16-Presc-Racecadotril.md),[Bundle/HAS-19-Presc-Paracetamol](Bundle-HAS-19-Presc-Paracetamol.md),[Bundle/HAS-23-1-Presc-Fluindione](Bundle-HAS-23-1-Presc-Fluindione.md),[Bundle/HAS-23-2-Presc-Amiodarone](Bundle-HAS-23-2-Presc-Amiodarone.md),[Bundle/HAS-24-1-presc-Doxycyline](Bundle-HAS-24-1-presc-Doxycyline.md),[Bundle/HAS-24-1-presc-Topiramate](Bundle-HAS-24-1-presc-Topiramate.md),[Bundle/HAS-26-Diazepam](Bundle-HAS-26-Diazepam.md),[Bundle/HAS-27-1-presc-GLUCOPHAGE](Bundle-HAS-27-1-presc-GLUCOPHAGE.md),[Bundle/HAS-27-2-presc-Rifampicine](Bundle-HAS-27-2-presc-Rifampicine.md),[Bundle/HAS-28-Presc-LOVENOX](Bundle-HAS-28-Presc-LOVENOX.md),[Bundle/HAS-29-Presc-LOVENOX](Bundle-HAS-29-Presc-LOVENOX.md),[Bundle/HAS-30-1-Presc-Hydrocortisone](Bundle-HAS-30-1-Presc-Hydrocortisone.md),[Bundle/HAS-30-2-Presc-Cetirizine](Bundle-HAS-30-2-Presc-Cetirizine.md),[Bundle/HAS-31-Presc-DUROGESIC](Bundle-HAS-31-Presc-DUROGESIC.md),[Bundle/HAS-32-1-Presc-LOVENOX](Bundle-HAS-32-1-Presc-LOVENOX.md),[Bundle/HAS-32-2-Presc-ULTIBRO-BREES](Bundle-HAS-32-2-Presc-ULTIBRO-BREES.md),[Bundle/HAS-33-Presc-VERSATIS](Bundle-HAS-33-Presc-VERSATIS.md),[Bundle/MultiLine-Presc-METFORMINE-GLICLAZIDE](Bundle-MultiLine-Presc-METFORMINE-GLICLAZIDE.md),[Bundle/MultiLine-Presc-METHOTREXATE-LEDERFOLINE](Bundle-MultiLine-Presc-METHOTREXATE-LEDERFOLINE.md),[Bundle/MultiLine-Presc-Sucralfate-Paracetamol](Bundle-MultiLine-Presc-Sucralfate-Paracetamol.md),[Bundle/Presc-BISOPROLOL-SANDOZ-DosesRationnelles](Bundle-Presc-BISOPROLOL-SANDOZ-DosesRationnelles.md),[Bundle/Presc-Betamethasone-ApplCut](Bundle-Presc-Betamethasone-ApplCut.md),[Bundle/Presc-CLARADOL-DoseDiffParHoraire](Bundle-Presc-CLARADOL-DoseDiffParHoraire.md),[Bundle/Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin.md),[Bundle/Presc-CLARADOL-TL6h-MedCodeableConcept](Bundle-Presc-CLARADOL-TL6h-MedCodeableConcept.md),[Bundle/Presc-CLARADOL-TLMardisVendredis](Bundle-Presc-CLARADOL-TLMardisVendredis.md),[Bundle/Presc-CODOLIPRANE-MedCodeableConcept](Bundle-Presc-CODOLIPRANE-MedCodeableConcept.md),[Bundle/Presc-Capecitabine-Dose-Calculee](Bundle-Presc-Capecitabine-Dose-Calculee.md),[Bundle/Presc-DIPROSONE-AppCut](Bundle-Presc-DIPROSONE-AppCut.md),[Bundle/Presc-DOLIPRANE-20DoseParKG](Bundle-Presc-DOLIPRANE-20DoseParKG.md),[Bundle/Presc-EFFERALGAN](Bundle-Presc-EFFERALGAN.md),[Bundle/Presc-Fentanyl-patch72h-TL3j](Bundle-Presc-Fentanyl-patch72h-TL3j.md),[Bundle/Presc-MATRIFEN-patch-TL72h](Bundle-Presc-MATRIFEN-patch-TL72h.md),[Bundle/Presc-MV-PerfGl-NaCl-KCl](Bundle-Presc-MV-PerfGl-NaCl-KCl.md),[Bundle/Presc-Methylpredinosolone-DosesEvolutives](Bundle-Presc-Methylpredinosolone-DosesEvolutives.md),[Bundle/Presc-MiniperfCefotaxime-En20min-Pdt3j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt3j.md),[Bundle/Presc-MiniperfCefotaxime-En20min-Pdt4j](Bundle-Presc-MiniperfCefotaxime-En20min-Pdt4j.md),[Bundle/Presc-NICORETTESKIN-patch](Bundle-Presc-NICORETTESKIN-patch.md),[Bundle/Presc-Nicotine-15mgPar16h](Bundle-Presc-Nicotine-15mgPar16h.md),[Bundle/Presc-Paracetamol](Bundle-Presc-Paracetamol.md),[Bundle/Presc-Paracetamol-DoseEvolutive](Bundle-Presc-Paracetamol-DoseEvolutive.md),[Bundle/Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin](Bundle-Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin.md),[Bundle/Presc-Paracetamol-TL6h](Bundle-Presc-Paracetamol-TL6h.md),[Bundle/Presc-ParacetamolCodeine-500mg30mg](Bundle-Presc-ParacetamolCodeine-500mg30mg.md),[Bundle/Presc-PerfDobutamine-Qsp40mL](Bundle-Presc-PerfDobutamine-Qsp40mL.md),[Bundle/Presc-PerfGl-NaCl-KCl-1l](Bundle-Presc-PerfGl-NaCl-KCl-1l.md),[Bundle/Presc-PerfGl-NaCl-KCl-500ml](Bundle-Presc-PerfGl-NaCl-KCl-500ml.md),[Bundle/Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h](Bundle-Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h.md),[Bundle/TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE](Bundle-TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE.md),[Bundle/TradPN13FHIR-Presc-DOLIPRANE](Bundle-TradPN13FHIR-Presc-DOLIPRANE.md),[Bundle/TradPN13FHIR-Presc-DOLIPRANE-Interpret](Bundle-TradPN13FHIR-Presc-DOLIPRANE-Interpret.md),[Bundle/TradPN13FHIR-Presc-Morphine-PCA](Bundle-TradPN13FHIR-Presc-Morphine-PCA.md),[Bundle/TradPN13FHIR-Presc-Paracetamol](Bundle-TradPN13FHIR-Presc-Paracetamol.md),[Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur](Bundle-TradPN13FHIR-Presc-Paracetamol-SiDouleur.md),[Bundle/TradPN13FHIR-Presc-perfusion-6-composants](Bundle-TradPN13FHIR-Presc-perfusion-6-composants.md),[FRMedicationNonCompound](StructureDefinition-fr-medication-noncompound.md),[FRMedicationRequest](StructureDefinition-fr-medicationrequest.md),[FRMedicationVirtual](StructureDefinition-fr-medication-virtual.md),[FrMethodOfAdministration](ValueSet-FrMethodOfAdministration.md),[FrMpDoseForm](ValueSet-fr-mp-dose-form.md),[FrRedicationCompound](StructureDefinition-fr-medication-compound.md),[FrRouteOfAdministration](ValueSet-fr-route-of-administration.md),[Medication/InLine-DOLIPRANE](Medication-InLine-DOLIPRANE.md),[Medication/InLine-med-EFFERALGAN](Medication-InLine-med-EFFERALGAN.md),[MedicationDispense/Disp-DOLIPRANE-Refill-Compl-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-Compl-presc-DC.md),[MedicationDispense/Disp-DOLIPRANE-Refill-Substit](MedicationDispense-Disp-DOLIPRANE-Refill-Substit.md),[MedicationDispense/Disp-DOLIPRANE-Refill-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-presc-DC.md),[MedicationDispense/Disp-EFFERALGAN](MedicationDispense-Disp-EFFERALGAN.md),[MedicationDispense/Disp-EFFERALGAN-presc-DC](MedicationDispense-Disp-EFFERALGAN-presc-DC.md),[MedicationRequest/InLine-Presc-EFFERALGAN](MedicationRequest-InLine-Presc-EFFERALGAN.md),[MedicationRequest/InLine-presc-EFFERALGAN2](MedicationRequest-InLine-presc-EFFERALGAN2.md),[MedicationRequest/InLine-presc-Paracetamol1](MedicationRequest-InLine-presc-Paracetamol1.md),[MedicationRequest/InLine-presc-Paracetamol2](MedicationRequest-InLine-presc-Paracetamol2.md)and[Posologie](StructureDefinition-fr-posologie.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.fr.medication",
  "url" : "https://hl7.fr/ig/fhir/medication/ImplementationGuide/hl7.fhir.fr.medication",
  "version" : "0.1.0",
  "name" : "MED",
  "title" : "Guide d'implémentation du médicament",
  "status" : "draft",
  "date" : "2026-01-20T09:44:19+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [
    {
      "name" : "Interop'Santé",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://interopsante.org/"
        }
      ]
    }
  ],
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "FR",
          "display" : "FRANCE"
        }
      ]
    }
  ],
  "packageId" : "hl7.fhir.fr.medication",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "7.0.1"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "hl7_fhir_fr_core",
      "uri" : "https://hl7.fr/ig/fhir/core/ImplementationGuide/hl7.fhir.fr.core",
      "packageId" : "hl7.fhir.fr.core",
      "version" : "2.1.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2020+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-expansion-params"
          },
          {
            "url" : "value",
            "valueString" : "../../expansion-params.json"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "pin-canonicals"
          },
          {
            "url" : "value",
            "valueString" : "pin-multiples"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://hl7.fr/ig/fhir/medication/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
        "valueReference" : {
          "reference" : "Parameters/expansion-parameters"
        }
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.9.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2020+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "shownav"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-expansion-params"
          },
          {
            "url" : "value",
            "valueString" : "../../expansion-params.json"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "pin-canonicals"
          },
          {
            "url" : "value",
            "valueString" : "pin-multiples"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "https://hl7.fr/ig/fhir/medication/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-additional-action-relationship"
        },
        "name" : "Additional relatedAction relationship",
        "description" : "Extension to specify relationship between action in a RequestGroup",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-additional-when-values"
        },
        "name" : "Additional values for when element",
        "description" : "Additional values for Timing.repeat.when",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-additional-when-codes"
        },
        "name" : "code system Interop'Santé - Codes additionnels pour l'élément when",
        "description" : "Le système de codage pour des périodes d'occurrence qui ne sont pas définies dans FHIR.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-note-scope-codes"
        },
        "name" : "code system Interop'Santé - Codes pour le périmètre des notes",
        "description" : "Le système de codage pour la qualification du périmètre des notes en FHIR.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-uf-role-codes"
        },
        "name" : "code system Interop'Santé - Codes pour typer le rôle des UF par rapport à un séjour patient",
        "description" : "Le système de codage pour les types de rôle qu'une UF peut avoir par rapport à un séjour patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-medication-reconciliation-discrepancy"
        },
        "name" : "code system Interop'Santé - divergence identifiée sur une ligne de traitement d'une FCT",
        "description" : "Le système de codage de la divergence identifiée sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-medication-reconciliation-outcome"
        },
        "name" : "code system Interop'Santé - Gravité de l'erreur sur une ligne de traitement d'une FCT",
        "description" : "Le système de codage de la gravité de l'erreur sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-medication-history-source-type"
        },
        "name" : "code system Interop'Santé - Nature des sources d'un Bilan Médicamenteux",
        "description" : "Le système de codage des sources d'un Bilan Médicamenteux.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-medication-reconciliation-resolution"
        },
        "name" : "code system Interop'Santé - Résolution d'une divergence sur une ligne de traitement d'une FCT",
        "description" : "Le système de codage de la résolution d'une divergence sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-medication-reconciliation-status"
        },
        "name" : "code system Interop'Santé - Statut d'une ligne de traitement d'une FCT",
        "description" : "Le système de codage du statut d'une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-editorial-status"
        },
        "name" : "code system Interop'Santé - Statut éditorial d'une valeur",
        "description" : "Le système de codage du statut éditorial d'une valeur.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-medication-reconciliation-type"
        },
        "name" : "code system Interop'Santé - Type d'écart/erreur sur une ligne de traitement d'une FCT",
        "description" : "Le système de codage du type d'écart/erreur sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-document-type"
        },
        "name" : "code system Interop'Santé - Type de document d'une ressource Composition du domaine Pharmacy",
        "description" : "Le système de codage SIPh du type de document d'une ressource *Composition* du domaine Pharmacy",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-gender-conceptmap"
        },
        "name" : "Conversion PN13 FHIR des code de sexe administratif",
        "description" : "ConceptMap pour la conversion des codes de sexe administratif entre PN13 et FHIR",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-prescmed-medicationrequest-conceptmap"
        },
        "name" : "Conversion PN13 vers FHIR pour la ligne de prescription d'une prescription de médicaments",
        "description" : "ConceptMap pour la conversion PN13 vers FHIR d'une ligne de prescription d'une prescritpion de médicament",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-prescmed-dosageinstruction-conceptmap"
        },
        "name" : "Conversion PN13 vers FHIR pour la posologie d'une prescription de médicaments",
        "description" : "ConceptMap pour la conversion PN13 vers FHIR d'une posologie d'une prescritpion de médicament",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-prescmed-patient-id-seul-conceptmap"
        },
        "name" : "Conversion PN13 vers FHIR pour le patient d'une prescription de médicaments avec uniquement un identifiant fourni",
        "description" : "ConceptMap pour la conversion PN13 vers FHIR du patient d'une prescritpion de médicament avec uniquement un identifiant fourni",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-prescmed-practitioner-identite-conceptmap"
        },
        "name" : "Conversion PN13 vers FHIR pour le professionnel prescripteur d'une prescription de médicaments avec d'autres éléments qu'uniquement l'identifiant",
        "description" : "ConceptMap pour la conversion PN13 vers FHIR du professionnel prescripteur d'une prescritpion de médicament avec d'autres éléments qu'uniquement l'identifiant",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-prescmed-practitioner-id-seul-conceptmap"
        },
        "name" : "Conversion PN13 vers FHIR pour le professionnel prescripteur d'une prescription de médicaments avec uniquement un identifiant fourni",
        "description" : "ConceptMap pour la conversion PN13 vers FHIR du professionnel prescripteur d'une prescritpion de médicament avec uniquement un identifiant fourni",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-observation-conceptmap"
        },
        "name" : "Conversion PN13 vers FHIR pour les renseignements complémentaires d'une prescription de médicaments",
        "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un renseignement complémentare d'une prescritpion de médicament",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-prescmed-medicationcomp-conceptmap"
        },
        "name" : "Conversion PN13 vers FHIR pour un médicament composé d'une prescription de médicaments",
        "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un médicament composé d'une prescritpion de médicament",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-prescmed-medicationnoncompound-conceptmap"
        },
        "name" : "Conversion PN13 vers FHIR pour un médicament non composé d'une prescription de médicaments",
        "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un médicament non composé d'une prescritpion de médicament",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-prescmed-patient-avec-INS-conceptmap"
        },
        "name" : "Conversion PN13 vers FHIR pour un patient avec INS qualifiée d'une prescription de médicaments",
        "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un patient avec INS qualifiée d'une prescritpion de médicament",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-prescmed-patient-sans-INS-conceptmap"
        },
        "name" : "Conversion PN13 vers FHIR pour un patient sans INS qualifiée d'une prescription de médicaments",
        "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un patient sans INS qualifiée d'une prescritpion de médicament",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-prescmed-encounter-conceptmap"
        },
        "name" : "Conversion PN13 vers FHIR pour un séjour d'une prescription de médicaments",
        "description" : "ConceptMap pour la conversion PN13 vers FHIR d'un séjour d'une prescritpion de médicament",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationDispense"
          }
        ],
        "reference" : {
          "reference" : "MedicationDispense/Disp-DOLIPRANE-Refill-Compl-presc-DC"
        },
        "name" : "Disp-DOLIPRANE-Refill-Compl-presc-DC",
        "description" : "Prescription complémentaire et finale de DOLIPRANE sur une prescription de Paracétamol",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationDispense"
          }
        ],
        "reference" : {
          "reference" : "MedicationDispense/Disp-DOLIPRANE-Refill-presc-DC"
        },
        "name" : "Disp-DOLIPRANE-Refill-presc-DC",
        "description" : "Dispensation complémentaire et partielle de DOLIPRANE sur une prescription de Paracétamol",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationDispense"
          }
        ],
        "reference" : {
          "reference" : "MedicationDispense/Disp-DOLIPRANE-Refill-Substit"
        },
        "name" : "Disp-DOLIPRANE-Refill-Substit",
        "description" : "Dispensation complémentaire et partielle de DOLIPRANE sur une prescription d'EFFERALGAN",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationDispense"
          }
        ],
        "reference" : {
          "reference" : "MedicationDispense/Disp-EFFERALGAN"
        },
        "name" : "Disp-EFFERALGAN",
        "description" : "Dispensation complète d'EFFERALGANT sur une prescription d'EFFERALGAN",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationDispense"
          }
        ],
        "reference" : {
          "reference" : "MedicationDispense/Disp-EFFERALGAN-presc-DC"
        },
        "name" : "Disp-EFFERALGAN-presc-DC",
        "description" : "Dispensation complète de Paracétamol sur une prescription d'EFFERALGAN",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationDispense"
          }
        ],
        "reference" : {
          "reference" : "MedicationDispense/Disp-group01-1"
        },
        "name" : "Disp-group01-1",
        "description" : "Délivrance reglobalisée, cumulant 3 dispensations nominatives",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationDispense"
          }
        ],
        "reference" : {
          "reference" : "MedicationDispense/Disp-group01-2"
        },
        "name" : "Disp-group01-2",
        "description" : "Délivrance reglobalisée, cumulant 3 dispensations nominatives - Option 2",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-current-medication-composition"
        },
        "name" : "FR Current Medication Composition",
        "description" : "Profil de la ressource Composition du traitement médicamenteux courant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-current-medication-medicationstatement"
        },
        "name" : "FR Current Medication MedicationStatement",
        "description" : "Profil de la ressource *MedicationStatement* du traitement médicamenteux courant.\nCurrent Medication MedicationStatement resource profile",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-inpatient-medication-dispense"
        },
        "name" : "FR Inpatient MedicationDispense",
        "description" : "French medication dispense profile",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-inpatient-medicationrequest"
        },
        "name" : "FR Inpatient MedicationRequest",
        "description" : "French inpatient medication request profile",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-medication"
        },
        "name" : "FR Medication",
        "description" : "profil de la ressource Medication décrivant le médicament dans une ressource MedicationRequest ou MedicationStatement profilée par InterOp'Santé",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-medication-compound"
        },
        "name" : "FR Medication Compound",
        "description" : "A complex medication composed of two to many simple medication. The simple medications component are described in as many ingredient.itemReference referencing a Medication resource profiled fr-medication-non-compound.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-medication-history-composition"
        },
        "name" : "FR Medication History Composition",
        "description" : "Profil de la ressource Composition du Bilan Médicamenteux.\nMedication Assessment Composition resource profile.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-medication-history-medicationstatement"
        },
        "name" : "FR Medication History MedicationStatement",
        "description" : "Profil de la ressource *MedicationStatement* du Bilan médicamenteux.\nMedication History MedicationStatement resource profile",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-medication-noncompound"
        },
        "name" : "FR Medication Non Compound",
        "description" : "Simple prescribed, dispensed, administered or used medication composed of one to many substances. If composed of many substance, the strengh SHALL be defined.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-medication-reconciliation-composition"
        },
        "name" : "FR Medication Reconciliation Composition",
        "description" : "Profil de la ressource *Composition* la Fiche de Conciliation des Traitements médicamenteux (FCT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-medication-reconciliation-statement"
        },
        "name" : "FR Medication Reconciliation MedicationStatement",
        "description" : "Profil de la ressource *MedicationStatement* référencée dans la ressource *Composition* de la Fiche de Conciliation des Traitements médicamenteux (FCT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-medicationrequest"
        },
        "name" : "FR Medication Request",
        "description" : "French medication request profile",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-medication-virtual"
        },
        "name" : "FR Medication Virtual",
        "description" : "Virtual medication composed of one to many substances.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-mp-substance"
        },
        "name" : "FR Meditinal Product Substance",
        "description" : "code for the medicinal product substance",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-observation-for-prescription"
        },
        "name" : "FR Observation For Prescription",
        "description" : "Observation provided as context of the prescription (ex. weight, height...)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-on-admission-medication-composition"
        },
        "name" : "FR On Admission Medication Composition",
        "description" : "Profil de la ressource *Composition* du traitement médicamenteux prescrit à l'admission.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-on-admission-retroactive-reconciliation-composition"
        },
        "name" : "FR On Admission Retroactive Reconciliation Composition",
        "description" : "Profil de la ressource *Composition* de la Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d'admission.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-prescription-bundle-for-example"
        },
        "name" : "FR Prescription Bundle For Example",
        "description" : "Profil de la ressource Bundle pour la constitution d'exemples de prescription.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-requestgroup-for-prescription"
        },
        "name" : "FR RequestGroup For Prescription",
        "description" : "RequestGroup for expressing links between lines of a prescription",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-mp-dose-form"
        },
        "name" : "French Medicinal product Dose form",
        "description" : "Le jeu de valeurs à utiliser pour coder l'élément *doseForm* des ressources *FrMedication*.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/FrMethodOfAdministration"
        },
        "name" : "French Method Of Administration",
        "description" : "Le jeu de valeurs à utiliser pour coder l'élément *dosageInstruction.method* de la ressource *FRMedicationRequest*.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-treatment-intent"
        },
        "name" : "French overall intention of the treatment",
        "description" : "Le jeu de valeurs à utiliser pour coder l'élément *treatmentIntent* de la ressource *FRInpatientMedicationRequest*.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-route-of-administration"
        },
        "name" : "French Route of Administration",
        "description" : "Le jeu de valeurs à utiliser pour coder l'élément *dosageInstruction.route* de la ressource *FRMedicationRequest*.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-medication-history-sources"
        },
        "name" : "FRMedicationHistorySources",
        "description" : "Sources des lignes du Bilan Médicamenteux que représente la ressource *Composition* ou de chacune de ses lignes que représente la ressource *MedicationStatement* référencée par l'élément *entry* de la ressource *Composition* (nombre de sources ET le type de source, défini codé avec, si possible, son auteur, défini ès qualités et, si possible, nominativement)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-medicationstatement-reconciliation-properties"
        },
        "name" : "FRMedicationStatementReconciliationProperties",
        "description" : "Propiétés spécifiques de la ligne de médicament, ajoutée à la ressource MedicationStatement dans la Fiche de Conciliation des Traitements médicamenteux (FCT)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-01-Presc-Pantoprazole-DC"
        },
        "name" : "HAS-01-Presc-Pantoprazole-DC",
        "description" : "PANTOPRAZOLE 40 mg comprimé: 40 mg le soir en DC",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-01-Presc-Pantoprazole-MV"
        },
        "name" : "HAS-01-Presc-Pantoprazole-MV",
        "description" : "PANTOPRAZOLE 40 mg comprimé: 40 mg le soir en MV",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-02-Presc-Fluindione"
        },
        "name" : "HAS-02-Presc-Fluindione",
        "description" : "FLUINDIONE 20 mg comprimé : 0,5 comprimé par jour",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-03-Presc-INNOHEP"
        },
        "name" : "HAS-03-Presc-INNOHEP",
        "description" : "INNOHEP® 14 000 UI anti-Xa/0,7 ml (tinzaparine sodique) solution injectable : 12 000UI anti-Xa (soit 170 UI anti-Xa /kg) , 1 fois/jour - voie sous-cutanée",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-04a-Presc-Paracetamol"
        },
        "name" : "HAS-04a-Presc-Paracetamol",
        "description" : "PARACETAMOL 500mg gélule - 2 gélules toutes les 6 h pendant 10 jours si douleurs",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-04b-Presc-DAFALGANCODEINE"
        },
        "name" : "HAS-04b-Presc-DAFALGANCODEINE",
        "description" : "DAFALGAN CODEINE®, comprimé un à deux comprimés toutes les 12 h pendant 10 jours, selon l’intensité de la douleur, avec un maximum à 2 comprimés par prise et de 4 comprimés par jour. STOP SI NAUSEES",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-05a-Presc-Fluindione"
        },
        "name" : "HAS-05a-Presc-Fluindione",
        "description" : "FLUINDIONE 20 mg comprimé quadrisécable : 3/4 cpr par jour (trois-quart de comprimé)",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-05b-Presc-ACTISKENAN"
        },
        "name" : "HAS-05b-Presc-ACTISKENAN",
        "description" : "ACTISKENAN® 10 mg gélule : dix milligrammes par jour pendant sept jours",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-06-1-Presc-Methotrexate"
        },
        "name" : "HAS-06-1-Presc-Methotrexate",
        "description" : "METHOTREXATE 10 mg comprimé (sécable) : 2 comprimés, 1 fois par semaine, le mardi",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-06-2-Presc-Methotrexate"
        },
        "name" : "HAS-06-2-Presc-Methotrexate",
        "description" : "METHOTREXATE 10 mg comprimé (sécable) : 20 mg, 1 fois par semaine, le mardi",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-07-Presc-Paracetamol"
        },
        "name" : "HAS-07-Presc-Paracetamol",
        "description" : "PARACETAMOL 500 mg gélule : Si douleur -dose max/prise de 1000 mg (soit 2 gélules) -4000 mg maximum par jour (soit 8 gélules)",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-08-1-Presc-Betamethasone"
        },
        "name" : "HAS-08-1-Presc-Betamethasone",
        "description" : "BETHAMETHASONE 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-08-2-Presc-Paracetamol"
        },
        "name" : "HAS-08-2-Presc-Paracetamol",
        "description" : "PARACETAMOL 24 mg/mL (DOLIPRANE 2.4%), susp buv, flac 100 mL : 1 dose correspondant à la graduation de 7 kg, toutes les 6 heures - Si température supérieure ou égale à 38,5°C.",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-09-Presc-Ropinirole"
        },
        "name" : "HAS-09-Presc-Ropinirole",
        "description" : "ROPINIROLE comprimé 1mg : 1 comprimé à 7h, 12h 18h",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-10-Presc-Methotrexate"
        },
        "name" : "HAS-10-Presc-Methotrexate",
        "description" : "METHOTREXATE 10 mg comprimé : 1 comprimé 1 fois par semaine, le mardi",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-11-1-Presc-VitamineD"
        },
        "name" : "HAS-11-1-Presc-VitamineD",
        "description" : "VITAMINE D 100 000 UI solution buvable : 1 ampoule, le premier jour de chaque mois",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-11-2-Presc-EVRA"
        },
        "name" : "HAS-11-2-Presc-EVRA",
        "description" : "EVRA® 203 µg/24h + 33,9µg/24h dispositif transdermique : Pendant 6 mois poser/remplacer un dispositif aux 1er, 8e et 15e jours du cycle ; La quatrième semaine à partir du 22ème jour est un intervalle libre sans dispositif transdermique",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-12-1-Presc-BEPANTHEN"
        },
        "name" : "HAS-12-1-Presc-BEPANTHEN",
        "description" : "BEPANTHEN®5% crème : 1 application, 2 fois par jour, en couche mince",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-12-2-Presc-Methotrexate"
        },
        "name" : "HAS-12-2-Presc-Methotrexate",
        "description" : "METHOTREXATE cp 10 mg :  20 mg, 1 fois par semaine, le mardi",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-12-3-Presc-Enoxaparine"
        },
        "name" : "HAS-12-3-Presc-Enoxaparine",
        "description" : "ENOXAPARINE  4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie : 1 seringue, 1 fois toutes les 12 heures - voie sous-cutanée",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-13-Presc-Desloratadine"
        },
        "name" : "HAS-13-Presc-Desloratadine",
        "description" : "DESLORATADINE 5 mg comprimé 1 comprimé « 1 à  2 fois par jour » en fonction de la gêne allergique",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-14-1-Presc-CODOLIPRANE"
        },
        "name" : "HAS-14-1-Presc-CODOLIPRANE",
        "description" : "CODOLIPRANE®: 1 comprimé si douleur, avec un maximum de 2 cp/prise, avec un maximum de 8 cp/jour, en respectant 4 heures minimales entre 2 prises",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-14-2-Presc-Betamethasone"
        },
        "name" : "HAS-14-2-Presc-Betamethasone",
        "description" : "BETHAMETHASONE 0,05% - 1 à 2 applications par jour en couche mince et uniforme sur la zone à traiter. Ne pas dépasser 2 applications par jour",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-15-Presc-Morphine"
        },
        "name" : "HAS-15-Presc-Morphine",
        "description" : "MORPHINE SULFATE LP 10 mg gélule microgranule à libération prolongée: une gélule le soir (à 20h) pendant huit jours",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-16-Presc-Racecadotril"
        },
        "name" : "HAS-16-Presc-Racecadotril",
        "description" : "RACECADOTRIL 100 mg gélule: 1 gélule 3 fois par jour au début de chaque repas. A poursuivre tant que la diarrhée persiste avec un maximum de 7 jours",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-17-Presc-Budesonide"
        },
        "name" : "HAS-17-Presc-Budesonide",
        "description" : "BUDESONIDE  1mg/2mL, suspension pour inhalation par nébuliseur en récipient unidose \n1 récipient unidose de 1 mg 4 fois par jour selon les modalités d'administration  suivantes : \n\nPréparation pour nébuliseur ultrasonique : \n     - 3 mL Eau Pour Préparation Injectable \n     - 1 récipient unidose (soit 2 mL) de BUDESONIDE  1mg/2mL) suspension pour inhalation par nébuliseur\n\nA administrer en 20 min à 8h, 14h, 18h, et 22h à partir du 16/03/2023",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-18-Presc-Budesonide-MV"
        },
        "name" : "HAS-18-Presc-Budesonide-MV",
        "description" : "BUDESONIDE  1mg/2mL, suspension pour inhalation par nébuliseur en récipient unidose \n1 récipient unidose de 1 mg 4 fois par jour selon les modalités d'administration  suivantes : \n\nPréparation pour nébuliseur ultrasonique : \n     - 3 mL Eau Pour Préparation Injectable \n     - 1 récipient unidose (soit 2 mL) de BUDESONIDE  1mg/2mL) suspension pour inhalation par nébuliseur\n\nA administrer en 20 min à 8h, 14h, 18h, et 22h  jusqu'au 26/03/2023",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-19-Presc-Paracetamol"
        },
        "name" : "HAS-19-Presc-Paracetamol",
        "description" : "PARACETAMOL 1000 mg comprimé: 1 comprimé,  3 prises par jour, espacés d’au moins 4 heures",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-20-Presc-Hydrocortisone"
        },
        "name" : "HAS-20-Presc-Hydrocortisone",
        "description" : "HYDROCORTISONE 10 mg comprimé: 20 mg à 8h et 10 mg à 12h",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-21-Presc-Prednisolone"
        },
        "name" : "HAS-21-Presc-Prednisolone",
        "description" : "PREDNISOLONE 20 mg comprimé (sécable) : en une prise le matin 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-22-Presc-Prednisolone"
        },
        "name" : "HAS-22-Presc-Prednisolone",
        "description" : "PREDNISOLONE 20 mg comprimé (sécable) : en une prise le matin 60 mg jusqu'à obtenir 3 bandelettes urinaires négatives, puis 50 mg pendant 1 semaine, puis 40 mg pendant 1 semaine, puis 30 mg pendant 1 semaine, puis 20 mg pendant 1 semaine, puis 10 mg pendant 1 semaine, puis revoir pour l'arrêt selon évolution",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-23-1-Presc-Fluindione"
        },
        "name" : "HAS-23-1-Presc-Fluindione",
        "description" : "FLUINDIONE 20 mg comprimé quadrisécable: 0,5 comprimé au jour 1, et puis 0,75 comprimé au jour 2. Recommencer le cycle de 2 jours, à répéter sur le mois",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-23-2-Presc-Amiodarone"
        },
        "name" : "HAS-23-2-Presc-Amiodarone",
        "description" : "AMIODARONE 200 mg comprimé: 1 comprimé pendant 5 jours (du lundi au vendredi), et puis arrêt 2 jours (samedi, dimanche). Recommencer le cycle de 7 jours, à répéter sur le mois",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-24-1-presc-Doxycyline"
        },
        "name" : "HAS-24-1-presc-Doxycyline",
        "description" : "DOXYCYCLINE 100 mg comprime : 1 comprimé le soir. Ne pas s’allonger dans l’heure qui suit la prise, utiliser une protection solaire adaptée",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-24-1-presc-Topiramate"
        },
        "name" : "HAS-24-1-presc-Topiramate",
        "description" : "TOPIRAMATE 15 mg gélule: 1 gélule par jour. Si difficulté à prendre la gélule, l'ouvrir et en administrer le contenu avec un peu de compote",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-25-NOVORAPID"
        },
        "name" : "HAS-25-NOVORAPID",
        "description" : "NOVORAPID Flexpen® 100 UI / mL : A administrer avant chaque repas en fonction de la glycémie 6 U si glycémie entre 1,5 et 2 g/L​ 8 U si glycémie entre 2 et 2,5 g/L 10 U si glycémie supérieure à 2,5 g/L",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-26-Diazepam"
        },
        "name" : "HAS-26-Diazepam",
        "description" : "DIAZEPAM 10 mg comprimé bisécable (VALIUM®): 1 comprimé toutes les 6 heures - si agitation",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-27-1-presc-GLUCOPHAGE"
        },
        "name" : "HAS-27-1-presc-GLUCOPHAGE",
        "description" : "GLUCOPHAGE® 500 mg comprimé : 1 comprimé matin et 1 comprimé soir, au cours ou à la fin des repas",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-27-2-presc-Rifampicine"
        },
        "name" : "HAS-27-2-presc-Rifampicine",
        "description" : "RIFAMPICINE 300 mg en gélule 2 gélules le matin 30 minutes avant le petit-déjeuner",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-28-Presc-LOVENOX"
        },
        "name" : "HAS-28-Presc-LOVENOX",
        "description" : "ENOXAPARINE sodique 4 000 UI (40 mg)/0,4 mL (LOVENOX®), solution injectable en seringue préremplie: 1 seringue, 1 fois par jour en sous-cutanée, à débuter 12 heures avant l'intervention chirurgicale. à poursuivre pendant 10 jours après l'intervention.",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-29-Presc-LOVENOX"
        },
        "name" : "HAS-29-Presc-LOVENOX",
        "description" : "ENOXAPARINE sodique 6000 UI (LOVENOX®), solution injectable en seringue préremplie : 1 injection en SC par jour jusqu’à ce que l’INR de l'AVK soit dans la zone thérapeutique cible",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-30-1-Presc-Hydrocortisone"
        },
        "name" : "HAS-30-1-Presc-Hydrocortisone",
        "description" : "HYDROCORTISONE 10 mg : 1 comprimé matin et 1 comprimé midi \nEn cas de fièvre, de forte chaleur, d'infection, de diarrhée, de stress important, augmenter la quantité pour passer à : 2 comprimés matin et 2 comprimés midi. En cas de fièvre > 40°C passer à : 2 comprimés matin, 2 comprimés midi et 2 comprimés à 16h.\nAvec un maximum de 6 comprimés par jour. QSP 6 mois.",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-30-2-Presc-Cetirizine"
        },
        "name" : "HAS-30-2-Presc-Cetirizine",
        "description" : "CETIRIZINE 10 mg : 1 à 4 comprimés par jour selon les symptômes (urticaire)",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-31-Presc-DUROGESIC"
        },
        "name" : "HAS-31-Presc-DUROGESIC",
        "description" : "DUROGESIC® dispositif transdermique 25 μg : un dispositif transdermique de vingt-cinq microgrammes à changer toutes les soixante-douze heures, pendant deux semaines.",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-32-1-Presc-LOVENOX"
        },
        "name" : "HAS-32-1-Presc-LOVENOX",
        "description" : "ENOXAPARINE sodique 4 000 UI (40 mg)/0,4 mL, solution injectable en seringue préremplie (LOVENOX®): 1 injection en sous-cutanée par jour pendant 1 semaine.",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-32-2-Presc-ULTIBRO-BREES"
        },
        "name" : "HAS-32-2-Presc-ULTIBRO-BREES",
        "description" : "ULTIBRO BREEZ® 85/43 µg gélule : 1 gélule à administrer par voie inhalée à la même heure chaque jour pendant 1 mois.",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/HAS-33-Presc-VERSATIS"
        },
        "name" : "HAS-33-Presc-VERSATIS",
        "description" : "VERSATIS® 700 mg emplâtre médicamenteux: 1 emplâtre par jour à 20 h, à laisser pendant 12h sur la peau",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Medication"
          }
        ],
        "reference" : {
          "reference" : "Medication/InLine-DOLIPRANE"
        },
        "name" : "InLine-DOLIPRANE",
        "description" : "Medication DOLIPRANE® pour exemple de dispensation",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Medication"
          }
        ],
        "reference" : {
          "reference" : "Medication/InLine-med-EFFERALGAN"
        },
        "name" : "InLine-med-EFFERALGAN",
        "description" : "Medication EFFERALGAN® pour exemple de dispensation",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Medication"
          }
        ],
        "reference" : {
          "reference" : "Medication/InLine-med-Paracetamol"
        },
        "name" : "InLine-med-Paracetamol",
        "description" : "Medication Paracétamol pour exemple de dispensation",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Group"
          }
        ],
        "reference" : {
          "reference" : "Group/InLine-patient-group-01"
        },
        "name" : "InLine-patient-group-01",
        "description" : "Groupe de patient pour exemple de délivrance reglobalisée",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationRequest"
          }
        ],
        "reference" : {
          "reference" : "MedicationRequest/InLine-Presc-EFFERALGAN"
        },
        "name" : "InLine-Presc-EFFERALGAN",
        "description" : "Prescription d'EFFERALGAN® pour exemple de dispensation",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationRequest"
          }
        ],
        "reference" : {
          "reference" : "MedicationRequest/InLine-presc-EFFERALGAN2"
        },
        "name" : "InLine-presc-EFFERALGAN2",
        "description" : "Prescription d'EFFERALGAN® pour exemple de dispensation",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationRequest"
          }
        ],
        "reference" : {
          "reference" : "MedicationRequest/InLine-presc-Paracetamol1"
        },
        "name" : "InLine-presc-Paracetamol1",
        "description" : "Prescription de Paracétamol pour exemple de dispensation",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationRequest"
          }
        ],
        "reference" : {
          "reference" : "MedicationRequest/InLine-presc-Paracetamol2"
        },
        "name" : "InLine-presc-Paracetamol2",
        "description" : "Prescription de Paracétamol pour exemple de dispensation",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medicationrequest"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/fr-additional-action-relationship-type"
        },
        "name" : "Interop'Santé code system - Additional codes for relationship between action",
        "description" : "Codes to specify relationship between action in a RequestGroup that are not in the valueSet http://hl7.org/fhir/ValueSet/action-relationship-type.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-additional-action-relationship-type-value-set"
        },
        "name" : "Interop'Santé value set - Additional codes for relationship between action",
        "description" : "Codes to specify relationship between action in a RequestGroup that are not in the valueSet http://hl7.org/fhir/ValueSet/action-relationship-type.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-ligne-prescription"
        },
        "name" : "Ligne de prescription",
        "description" : "Structuration d'une ligne de prescription [WIP - à compléter].",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-FreeSetCIODC-Forme-ConceptMap"
        },
        "name" : "Mapping Free Set CIO-DC FORME",
        "description" : "Conversion des codes CIO de forme de médicament en codes des terminologies EQDM Standard Terms et SNOMED-CT",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-FreeSetCIODC-Unite-ConceptMap"
        },
        "name" : "Mapping Free Set CIO-DC UNITE",
        "description" : "Conversion des codes CIO d'unité d'administration de médicaments en codes du référentiel UCUM et du référentiel EDQM",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ConceptMap"
          }
        ],
        "reference" : {
          "reference" : "ConceptMap/PN13-FHIR-FreeSetCIODC-Voie-ConceptMap"
        },
        "name" : "Mapping Free Set CIO-DC VOIE",
        "description" : "Conversion des codes CIO de voie d'administration des médicaments en codes des terminologies EQDM Standard Terms et SNOMED-CT",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-basis-of-dose-component"
        },
        "name" : "Medication component Basis of dose",
        "description" : "When the medication element of the resource in which a dose applies is compound, this extension references the Medication resource component of the medication element which is the Basis of the dose quantity or volume.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-is-vehicle"
        },
        "name" : "Medication component which is the vehicle of the compound Medication",
        "description" : "Medication component which is the vehicle of the compound Medication",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-drug-characteristic"
        },
        "name" : "Medication descriptive properties",
        "description" : "Specifies descriptive properties of the medicine",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/medication-ingredient-strength-codes"
        },
        "name" : "MedicationIngredientStrengthCodes",
        "description" : "Medication Ingredient Strength Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-treatment-intent"
        },
        "name" : "MedicationRequest overall treatment intent",
        "description" : "The overall intention of the treatment",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/medication-ingredient-strength-codes"
        },
        "name" : "Medication_Ingredient_Strength_Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MultiLine-Presc-METFORMINE-GLICLAZIDE"
        },
        "name" : "MultiLine-Presc-METFORMINE-GLICLAZIDE",
        "description" : "METFORMINE® ou GLICLAZIDE® en cas d'intolérance digestive à la METFORMINE",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MultiLine-Presc-METHOTREXATE-LEDERFOLINE"
        },
        "name" : "MultiLine-Presc-METHOTREXATE-LEDERFOLINE",
        "description" : "METHOTREX® et LEDERFOLINE® à prendre en même temps",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MultiLine-Presc-Sucralfate-Paracetamol"
        },
        "name" : "MultiLine-Presc-Sucralfate-Paracetamol",
        "description" : "Paracetamol 2h après Sucralfate",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-posologie"
        },
        "name" : "Posologie",
        "description" : "Structuration d'une posologie en fonction des critères de la HAS. Cette structuration a pour objectif de tendre au plus proche du modèle européen [Xt-EHR](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common/StructureDefinition-EHDSDosaging.html) (CI-BUILD)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-Betamethasone-ApplCut"
        },
        "name" : "Presc-Betamethasone-ApplCut",
        "description" : "bêtaméthasone 0.05%, 1 application cutanée à 8h, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-BISOPROLOL-SANDOZ-DosesRationnelles"
        },
        "name" : "Presc-BISOPROLOL-SANDOZ-DosesRationnelles",
        "description" : "BISOPROLOL® 7.5 mg SANDOZ, 1/3cpr à 7h et 2/3 à 18h per os, pendant 1 semaine",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-Capecitabine-Dose-Calculee"
        },
        "name" : "Presc-Capecitabine-Dose-Calculee",
        "description" : "capécitabine 1800 mg (1000 mg/m²), 7h et 18h per os, pendant 14j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-CLARADOL-DoseDiffParHoraire"
        },
        "name" : "Presc-CLARADOL-DoseDiffParHoraire",
        "description" : "CLARADOL® 500 mg, 2 cpr à 7h et 1 cpr à 18h per os, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin"
        },
        "name" : "Presc-CLARADOL-SiDouleur-MaxPrise-DelaisMin",
        "description" : "CLARADOL® 500 mg, 1 cpr si douleur, 2 cpr max par prise, 6 cpr max par 24h, 4h délais min entre deux prises, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-CLARADOL-TL6h-MedCodeableConcept"
        },
        "name" : "Presc-CLARADOL-TL6h-MedCodeableConcept",
        "description" : "CLARADOL® 500 mg, 1 cpr toutes les 6h per os, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-CLARADOL-TLMardisVendredis"
        },
        "name" : "Presc-CLARADOL-TLMardisVendredis",
        "description" : "CLARADOL® 500 mg, 1 cpr à 18h tous les mardis et vendredis, per os, pendant 3 mois",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-CODOLIPRANE-MedCodeableConcept"
        },
        "name" : "Presc-CODOLIPRANE-MedCodeableConcept",
        "description" : "CODOLIPRANE® 500 mg/30 mg, cpr, 1 à 7h et 18h per os, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-DIPROSONE-AppCut"
        },
        "name" : "Presc-DIPROSONE-AppCut",
        "description" : "DIPROSONE® 0.05%, 1 application cutanée à 8h, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-DOLIPRANE-20DoseParKG"
        },
        "name" : "Presc-DOLIPRANE-20DoseParKG",
        "description" : "DOLIPRANE® 2.4% ss sucre, 20 dose-kg à 7h et 18h per os, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-EFFERALGAN"
        },
        "name" : "Presc-EFFERALGAN",
        "description" : "EFFERALGAN® 1 000 mg, cpr, 1 à 7h, 12h et 18h per os, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-Fentanyl-patch72h-TL3j"
        },
        "name" : "Presc-Fentanyl-patch72h-TL3j",
        "description" : "fentanyl 75 µg/h, patch 72h, 1 à 7h, tous les 3j, pendant 8j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-MATRIFEN-patch-TL72h"
        },
        "name" : "Presc-MATRIFEN-patch-TL72h",
        "description" : "MATRIFEN® 75 µg/h, patch, 1 à 7h, toutes les 72h, pendant 8j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-Methylpredinosolone-DosesEvolutives"
        },
        "name" : "Presc-Methylpredinosolone-DosesEvolutives",
        "description" : "méthylpredinosolone, 6 mg pendant 2j, puis 4 mg pendant 2j, puis 2 mg pendant 2j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-MiniperfCefotaxime-En20min-Pdt3j"
        },
        "name" : "Presc-MiniperfCefotaxime-En20min-Pdt3j",
        "description" : "céfotaxine dans miniperf G5 100 mL, 4g céfotaxine en 20 min toutes les 6h pendant 3j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-MiniperfCefotaxime-En20min-Pdt4j"
        },
        "name" : "Presc-MiniperfCefotaxime-En20min-Pdt4j",
        "description" : "céfotaxine dans G5 100 mL, 4g (céfotaxine) en 20 min toutes les 6h pendant 4j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-MV-PerfGl-NaCl-KCl"
        },
        "name" : "Presc-MV-PerfGl-NaCl-KCl",
        "description" : "MV - glucose 5%+sodium chlorure 2g+potassium chlorure 1g x 500mL, 1 à 10h et 22h sur 12h, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-NICORETTESKIN-patch"
        },
        "name" : "Presc-NICORETTESKIN-patch",
        "description" : "NICORETTESKIN® 15 mg/16h, patch, 1 à 7h, pendant 2 semaines",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-Nicotine-15mgPar16h"
        },
        "name" : "Presc-Nicotine-15mgPar16h",
        "description" : "nicotine 15 mg/16h, patch, 1 à 7h, pendant 2 semaines",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-Paracetamol"
        },
        "name" : "Presc-Paracetamol",
        "description" : "paracétamol, 1 g à 7h, 12h et 18h per os, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-Paracetamol-DoseEvolutive"
        },
        "name" : "Presc-Paracetamol-DoseEvolutive",
        "description" : "paracétamol, 1 g à 7h et 500 mg à 18h per os, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin"
        },
        "name" : "Presc-Paracetamol-SiDouleur-MaxPrise-DelaisMin",
        "description" : "paracétamol, 500 mg per os si douleur, 1 g max par prise, 3 g max par 24h, 4h délais min entre deux prises, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-Paracetamol-TL6h"
        },
        "name" : "Presc-Paracetamol-TL6h",
        "description" : "paracétamol, 500 mg toutes les 6 h per os, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-ParacetamolCodeine-500mg30mg"
        },
        "name" : "Presc-ParacetamolCodeine-500mg30mg",
        "description" : "paracétamol+codéine 500 mg+30 mg, 1 à 7h et 18h per os, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-PerfDobutamine-Qsp40mL"
        },
        "name" : "Presc-PerfDobutamine-Qsp40mL",
        "description" : "dobutamine 200 mg dans soluté=G5 qsp 40 mL, 400 µg/min pendant 1j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-PerfGl-NaCl-KCl-1l"
        },
        "name" : "Presc-PerfGl-NaCl-KCl-1l",
        "description" : "Perfusion Glucose 5% 1L avec Sodium chlorure 3g et Potassium chlorure 2g, à 10h et 22h sur 12h, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-PerfGl-NaCl-KCl-500ml"
        },
        "name" : "Presc-PerfGl-NaCl-KCl-500ml",
        "description" : "Perfusion Glucose 5% 500 mL avec Sodium chlorure 2g et Potassium chlorure 1g, à 10h et 22h sur 12h, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h"
        },
        "name" : "Presc-SolPrPerf-BIONOLYTE-G5-500mL-Sur12h",
        "description" : "BIONOLYTE® G5, sol pr perf,poche 500 mL, 1 à 10h et 22h sur 12h, pendant 5j",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/FrRangeMedication"
        },
        "name" : "Range with UCUM or EDQM codes if code is used",
        "description" : "Range with low and high unit UCUM or EDQM codes if code is used",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/FrRatioMedication"
        },
        "name" : "Ratio with UCUM or EDQM codes if code is used",
        "description" : "Ratio with numerator and denominator unit UCUM or EDQM encoded if code is used",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-medicationrequest-note-scope"
        },
        "name" : "Scope for note element in MedicationRequest",
        "description" : "Scope of a note associated in a MedicationRequest resource",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/FrSimpleQuantityMedication"
        },
        "name" : "SimpleQuantity with UCUM or EDQM codes or code not used",
        "description" : "simple quantity datatype requiring a UCUM or EDQM code or no code (only unti)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-strength-codeableconcept"
        },
        "name" : "Strength CodeableConcept",
        "description" : "Additional non unit value for strength",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE"
        },
        "name" : "TradPN13FHIR-MultiLine-Presc-Alt-METFORMINE-GLICLAZIDE",
        "description" : "METFORMINE® ou GLICLAZIDE® en cas d'intolérance digestive à la METFORMINE - Traduction de PN13",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/TradPN13FHIR-Presc-DOLIPRANE"
        },
        "name" : "TradPN13FHIR-Presc-DOLIPRANE",
        "description" : "DOLIPRANE® 1000mg 3x/j pdt 2j - Traduction de PN13 sans interpretation du code de fréquence",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/TradPN13FHIR-Presc-DOLIPRANE-Interpret"
        },
        "name" : "TradPN13FHIR-Presc-DOLIPRANE-Interpret",
        "description" : "DOLIPRANE® 1000mg 3x/j pdt 2j - Traduction de PN13 en interprétant le code de fréquence",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/TradPN13FHIR-Presc-Morphine-PCA"
        },
        "name" : "TradPN13FHIR-Presc-Morphine-PCA",
        "description" : "PCA Morphine 120 mg/24h Bolus 10 mg Période refractaire 2h -- À partir du 07/05/2025 à 17:30 jusqu'au 11/05/2025 à 17h30 - Traduction de PN13",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/TradPN13FHIR-Presc-Paracetamol"
        },
        "name" : "TradPN13FHIR-Presc-Paracetamol",
        "description" : "PARACETAMOL MYLAN CONSEIL 1000 MG, COMPRIME  (Voie orale) - Si douleur :  1000 mg /prise,  4000 mg max/j,  respecter 6h entre 2 prises pendant 2 jours - Traduction de PN13",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/TradPN13FHIR-Presc-Paracetamol-SiDouleur"
        },
        "name" : "TradPN13FHIR-Presc-Paracetamol-SiDouleur",
        "description" : "PARACETAMOL (Voie orale) si douleur:  1000 mg /prise,  4000 mg max/j,  respecter 6h entre 2 prises pendant 2 jours - Traduction de PN13",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/TradPN13FHIR-Presc-perfusion-6-composants"
        },
        "name" : "TradPN13FHIR-Presc-perfusion-6-composants",
        "description" : "Perf  6composants en UCD en continu sur 12h00 par jour - Traduction de PN13",
        "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/fr-uf-role"
        },
        "name" : "UF Role",
        "description" : "Caracterization of the role of a functionnal unit for the patient encounter",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-additional-when-codes"
        },
        "name" : "value set Interop'Santé - Codes additionnels pour l'élément when",
        "description" : "Le jeu de valeurs à utiliser pour coder des périodes d'occurrence qui ne sont pas dans le jeu de valeurs http://hl7.org/fhir/ValueSet/event-timing.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-medication-code"
        },
        "name" : "value set Interop'Santé - Codes identifiant les médicaments",
        "description" : "Le jeu de valeurs à utiliser pour indiquer le médicament dans Medication.code.coding.code",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-substance-code"
        },
        "name" : "value set Interop'Santé - Codes identifiant les substances",
        "description" : "Le jeu de valeurs à utiliser pour indiquer un ingrédient composant un médicament dans Medication.ingredient.itemCodeableConcept.coding.code",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-note-scope-codes-vs"
        },
        "name" : "value set Interop'Santé - Codes pour le périmètre des notes",
        "description" : "Le jeu de valeurs à utiliser pour coder le périmètre des notes par exemple lors de la transformation de message PN13 en ressources FHIR",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-medication-reconciliation-outcome"
        },
        "name" : "value set Interop'Santé - Gravité de l'erreur sur une ligne de traitement d'une FCT",
        "description" : "Le jeu de valeurs à utiliser pour coder la gravité de l'erreur sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-medication-reconciliation-qualified-discrepancy"
        },
        "name" : "value set Interop'Santé - qualification de la divergence identifiée sur une ligne de traitement d'une FCT",
        "description" : "Le jeu de valeurs à utiliser pour coder la qualification de la divergence identifiée sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-medication-reconciliation-resolution"
        },
        "name" : "value set Interop'Santé - Résolution d'une divergence sur une ligne de traitement d'une FCT",
        "description" : "Un jeu de valeurs à utiliser pour coder la résolution d'une divergence sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-medication-reconciliation-status"
        },
        "name" : "value set Interop'Santé - Statut d'une ligne de traitement d'une FCT",
        "description" : "Le jeu de valeurs à utiliser pour coder le statut d'une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-editorial-status"
        },
        "name" : "value set Interop'Santé - Statut éditorial d'une valeur",
        "description" : "Le jeu de valeurs à utiliser pour coder le statut éditorial d'une valeur.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-medication-reconciliation-type"
        },
        "name" : "value set Interop'Santé - Type d'écart/erreur sur une ligne de traitement d'une FCT",
        "description" : "Le jeu de valeurs à utiliser pour coder le type d'écart/erreur sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-current-medication-document-type"
        },
        "name" : "value set Interop'Santé - type de document de la ressource Composition d'une FCT",
        "description" : "Le jeu de valeurs à utiliser pour coder le type de document de la ressource *Composition* d'une liste des Traitements Médicamenteux Courants.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-medication-reconciliation-document-type"
        },
        "name" : "value set Interop'Santé - type de document de la ressource Composition d'une FCT",
        "description" : "Le jeu de valeurs à utiliser pour coder le type de document de la ressource *Composition* d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-uf-role-code-for-prescription"
        },
        "name" : "value set Interop'Santé - Types de rôle d’une UF par rapport à un séjour patient dans une prescription",
        "description" : "Le jeu de valeurs à utiliser dans l'extension pour indiquer le type d'UF référencée dans Medication.supportingInfo",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/fr-medication-history-source-type"
        },
        "name" : "value set SIPh - Nature des sources d'un Bilan Médicamenteux",
        "description" : "Un jeu de valeurs à utiliser pour coder les sources d'un Bilan Médicamenteux.",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Accueil",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "conciliation-Intro.html"
            }
          ],
          "nameUrl" : "conciliation-Intro.html",
          "title" : "La conciliation - Introduction",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "conciliation-VueEnsemble.html"
            }
          ],
          "nameUrl" : "conciliation-VueEnsemble.html",
          "title" : "La conciliation - Vue d'ensemble",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "conciliation-CasUsage.html"
            }
          ],
          "nameUrl" : "conciliation-CasUsage.html",
          "title" : "La conciliation - Cas d'usage",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "conciliation-Implementation.html"
            }
          ],
          "nameUrl" : "conciliation-Implementation.html",
          "title" : "La conciliation - Implémentation",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "conciliation-Exemples.html"
            }
          ],
          "nameUrl" : "conciliation-Exemples.html",
          "title" : "La conciliation - Exemples",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "prescription-Intro.html"
            }
          ],
          "nameUrl" : "prescription-Intro.html",
          "title" : "La prescription - Introduction",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "prescription-VueEnsemble.html"
            }
          ],
          "nameUrl" : "prescription-VueEnsemble.html",
          "title" : "La prescription - Vue d'ensemble",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "prescription-CasUsage.html"
            }
          ],
          "nameUrl" : "prescription-CasUsage.html",
          "title" : "La prescription - Cas d'usage",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "prescription-Exemples.html"
            }
          ],
          "nameUrl" : "prescription-Exemples.html",
          "title" : "La prescription - Exemples",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "dispensation-Intro.html"
            }
          ],
          "nameUrl" : "dispensation-Intro.html",
          "title" : "La dispensation - Introduction",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "dispensation-RessourceMedicationDispense.html"
            }
          ],
          "nameUrl" : "dispensation-RessourceMedicationDispense.html",
          "title" : "La dispensation - Ressource MedicationDispense",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "dispensation-DelivrancePlusSimple.html"
            }
          ],
          "nameUrl" : "dispensation-DelivrancePlusSimple.html",
          "title" : "La dispensation - La délivrance la plus simple",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "dispensation-DispensationNominativeDelivranceReglobalisee.html"
            }
          ],
          "nameUrl" : "dispensation-DispensationNominativeDelivranceReglobalisee.html",
          "title" : "La dispensation - La dispensation nominative à délivrance reglobalisée",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "dispensation-Discussion.html"
            }
          ],
          "nameUrl" : "dispensation-Discussion.html",
          "title" : "La dispensation - Discussion",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "transformationPN13-FHIR-Intro.html"
            }
          ],
          "nameUrl" : "transformationPN13-FHIR-Intro.html",
          "title" : "Transformation de PN13 en FHIR",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "transformation-PN13-vers-FHIR.html"
            }
          ],
          "nameUrl" : "transformation-PN13-vers-FHIR.html",
          "title" : "Transformation de PN13 vers FHIR",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "transformation-FHIR-vers-PN13.html"
            }
          ],
          "nameUrl" : "transformation-FHIR-vers-PN13.html",
          "title" : "Transformation de FHIR vers PN13",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "PN13-exemples-intro.html"
            }
          ],
          "nameUrl" : "PN13-exemples-intro.html",
          "title" : "Exemples PN13 - Introduction",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "PN13-prescription-DC.html"
            }
          ],
          "nameUrl" : "PN13-prescription-DC.html",
          "title" : "Prescription PN13 médicament simple en DC",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "PN13-prescription-specialite.html"
            }
          ],
          "nameUrl" : "PN13-prescription-specialite.html",
          "title" : "Prescription PN13 médicament simple en spécialité",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "PN13-prescription-compound.html"
            }
          ],
          "nameUrl" : "PN13-prescription-compound.html",
          "title" : "Prescription PN13 médicament composite",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "PN13-prescription-MV.html"
            }
          ],
          "nameUrl" : "PN13-prescription-MV.html",
          "title" : "Prescription PN13 médicament virtuel",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "downloads.html"
            }
          ],
          "nameUrl" : "downloads.html",
          "title" : "Téléchargements et usages",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "suivitravaux.html"
            }
          ],
          "nameUrl" : "suivitravaux.html",
          "title" : "Historique des travaux",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
