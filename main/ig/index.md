# Accueil - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* **Accueil**

## Accueil

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/ImplementationGuide/hl7.fhir.fr.medication | *Version*:0.1.0 |
| Draft as of 2026-05-27 | *Computable Name*:MED |

### Introduction

>  **Attention !** Cet Implementation Guide n'est pas la version courante. La version courante sera accessible via l'URL canonique (https://hl7.fr/ig/fhir/medication) lorsque celui-ci sera publié. 

Ce guide d’implémentation (IG) est une version historique en mode draft sur les deux cas d’usage:

1. [La dispensation](dispensation-Intro.md)
1. [La concilation](conciliation-Intro.md)

Ces domaines sont pris en charge par le GT Pharmacie d’HL7 France au sein de l’association [Interop’Santé](https://www.interopsante.org/) après une première version développée au sein de la communauté SIPh. L’historique des versions et des travaux est détaillé dans la page de [suivi des travaux](suivitravaux.md).

Cet IG a pour vocation à faire l’objet de travaux complémentaires d’alignement sur les profils européens et de traduction de flux PN13 en FHIR. Ces travaux déboucheront notamment sur deux IG à jour, un pour chaque domaine conciliation et dispensation.

#### Dépendances







#### Propriété intellectuelle

Certaines ressources sémantiques de ce guide sont protégées par des droits de propriété intellectuelle couverte par les déclarations ci-dessous. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.0.2/CodeSystem-ISO3166Part1.html): [FRCurrentMedicationComposition](StructureDefinition-fr-current-medication-composition.md), [FRCurrentMedicationMedicationStatement](StructureDefinition-fr-current-medication-medicationstatement.md)... Show 37 more, [FRInpatientMedicationDispense](StructureDefinition-fr-inpatient-medication-dispense.md), [FRMPSubstance](StructureDefinition-fr-mp-substance.md), [FRMedication](StructureDefinition-fr-medication.md), [FRMedicationCodes](ValueSet-fr-medication-code.md), [FRMedicationHistoryComposition](StructureDefinition-fr-medication-history-composition.md), [FRMedicationHistoryMedicationStatement](StructureDefinition-fr-medication-history-medicationstatement.md), [FRMedicationHistorySourceType](ValueSet-fr-medication-history-source-type.md), [FRMedicationHistorySources](StructureDefinition-fr-medication-history-sources.md), [FRMedicationReconciliationComposition](StructureDefinition-fr-medication-reconciliation-composition.md), [FRMedicationReconciliationDiscrepancy](CodeSystem-fr-medication-reconciliation-discrepancy.md), [FRMedicationReconciliationDocumentType](ValueSet-fr-medication-reconciliation-document-type.md), [FRMedicationReconciliationMedicationStatement](StructureDefinition-fr-medication-reconciliation-statement.md), [FRMedicationReconciliationOutcome](ValueSet-fr-medication-reconciliation-outcome.md), [FRMedicationReconciliationQualifiedDiscrepancy](ValueSet-fr-medication-reconciliation-qualified-discrepancy.md), [FRMedicationReconciliationResolution](ValueSet-fr-medication-reconciliation-resolution.md), [FRMedicationReconciliationStatus](ValueSet-fr-medication-reconciliation-status.md), [FRMedicationReconciliationType](ValueSet-fr-medication-reconciliation-type.md), [FRMedicationStatementReconciliationProperties](StructureDefinition-fr-medicationstatement-reconciliation-properties.md), [FROnAdmissionMedicationComposition](StructureDefinition-fr-on-admission-medication-composition.md), [FROnAdmissionRetroactiveReconciliationComposition](StructureDefinition-fr-on-admission-retroactive-reconciliation-composition.md), [FrCurrentMedicationDocumentType](ValueSet-fr-current-medication-document-type.md), [FrDocumentType](CodeSystem-fr-document-type.md), [FrDrugCharacteristic](StructureDefinition-fr-drug-characteristic.md), [FrEditorialStatus](ValueSet-fr-editorial-status.md), [FrMethodOfAdministration](ValueSet-FrMethodOfAdministration.md), [FrMpDoseForm](ValueSet-fr-mp-dose-form.md), [FrRangeMedication](StructureDefinition-FrRangeMedication.md), [FrRatioMedication](StructureDefinition-FrRatioMedication.md), [FrRouteOfAdministration](ValueSet-fr-route-of-administration.md), [FrSimpleQuantityMedication](StructureDefinition-FrSimpleQuantityMedication.md), [FrStrengthCodeableConcept](StructureDefinition-fr-strength-codeableconcept.md), [FrSubstanceCode](ValueSet-fr-substance-code.md), [FrTeatmentIntent](StructureDefinition-fr-treatment-intent.md), [FrTreatmentIntent](ValueSet-fr-treatment-intent.md), [MED](index.md), [MedicationIngredientStrengthCodes](ValueSet-medication-ingredient-strength-codes.md) and [Medication_Ingredient_Strength_Codes](CodeSystem-medication-ingredient-strength-codes.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [Medication/InLine-DOLIPRANE](Medication-InLine-DOLIPRANE.md), [Medication/InLine-med-EFFERALGAN](Medication-InLine-med-EFFERALGAN.md)... Show 11 more, [MedicationDispense/Disp-DOLIPRANE-Refill-Compl-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-Compl-presc-DC.md), [MedicationDispense/Disp-DOLIPRANE-Refill-Substit](MedicationDispense-Disp-DOLIPRANE-Refill-Substit.md), [MedicationDispense/Disp-DOLIPRANE-Refill-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-presc-DC.md), [MedicationDispense/Disp-EFFERALGAN](MedicationDispense-Disp-EFFERALGAN.md), [MedicationDispense/Disp-EFFERALGAN-presc-DC](MedicationDispense-Disp-EFFERALGAN-presc-DC.md), [MedicationDispense/Disp-group01-1](MedicationDispense-Disp-group01-1.md), [MedicationDispense/Disp-group01-2](MedicationDispense-Disp-group01-2.md), [MedicationRequest/InLine-presc-Paracetamol1](MedicationRequest-InLine-presc-Paracetamol1.md), [MedicationRequest/InLine-presc-Paracetamol2](MedicationRequest-InLine-presc-Paracetamol2.md), [Observation/InLine-Observation-poids-Avion](Observation-InLine-Observation-poids-Avion.md) and [Observation/InLine-observation-taille-Avion](Observation-InLine-observation-taille-Avion.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.0.2/CodeSystem-v3-loinc.html): [FRMedicationHistoryComposition](StructureDefinition-fr-medication-history-composition.md), [FRMedicationReconciliationComposition](StructureDefinition-fr-medication-reconciliation-composition.md), [FROnAdmissionRetroactiveReconciliationComposition](StructureDefinition-fr-on-admission-retroactive-reconciliation-composition.md), [Observation/InLine-Observation-poids-Avion](Observation-InLine-Observation-poids-Avion.md) and [Observation/InLine-observation-taille-Avion](Observation-InLine-observation-taille-Avion.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [FrTeatmentIntent](StructureDefinition-fr-treatment-intent.md) and [FrTreatmentIntent](ValueSet-fr-treatment-intent.md)


* Unless otherwise indicated, reproduction of material posted on Council of Europe websites, and reproduction of photographs for which the Council of Europe holds copyright – see legal notice \“photo credits\” – is authorised for private use and for informational and educational uses relating to the Council of Europe’s work. This authorisation is subject to the condition that the source be indicated and no charge made for reproduction. Persons wishing to make some other use than those specified above, including commercial use, of information and text posted on these sites are asked to apply for prior written authorisation to the Council of Europe, Directorate of Communication.

* [EDQM Standard Terms](http://tx.fhir.org/r4/ValueSet/edqm): [FrMethodOfAdministration](ValueSet-FrMethodOfAdministration.md), [FrMpDoseForm](ValueSet-fr-mp-dose-form.md)... Show 12 more, [FrRouteOfAdministration](ValueSet-fr-route-of-administration.md), [Medication/InLine-DOLIPRANE](Medication-InLine-DOLIPRANE.md), [Medication/InLine-med-EFFERALGAN](Medication-InLine-med-EFFERALGAN.md), [MedicationDispense/Disp-DOLIPRANE-Refill-Compl-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-Compl-presc-DC.md), [MedicationDispense/Disp-DOLIPRANE-Refill-Substit](MedicationDispense-Disp-DOLIPRANE-Refill-Substit.md), [MedicationDispense/Disp-DOLIPRANE-Refill-presc-DC](MedicationDispense-Disp-DOLIPRANE-Refill-presc-DC.md), [MedicationDispense/Disp-EFFERALGAN](MedicationDispense-Disp-EFFERALGAN.md), [MedicationDispense/Disp-EFFERALGAN-presc-DC](MedicationDispense-Disp-EFFERALGAN-presc-DC.md), [MedicationRequest/InLine-Presc-EFFERALGAN](MedicationRequest-InLine-Presc-EFFERALGAN.md), [MedicationRequest/InLine-presc-EFFERALGAN2](MedicationRequest-InLine-presc-EFFERALGAN2.md), [MedicationRequest/InLine-presc-Paracetamol1](MedicationRequest-InLine-presc-Paracetamol1.md) and [MedicationRequest/InLine-presc-Paracetamol2](MedicationRequest-InLine-presc-Paracetamol2.md)




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
  "date" : "2026-05-27T13:03:41+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org/"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "packageId" : "hl7.fhir.fr.medication",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "hl7_fhir_fr_core",
    "uri" : "https://hl7.fr/ig/fhir/core/ImplementationGuide/hl7.fhir.fr.core",
    "packageId" : "hl7.fhir.fr.core",
    "version" : "2.1.0"
  },
  {
    "id" : "hl7_fhir_uv_xver_r5_r4",
    "uri" : "http://hl7.org/fhir/uv/xver/ImplementationGuide/hl7.fhir.uv.xver-r5.r4",
    "packageId" : "hl7.fhir.uv.xver-r5.r4",
    "version" : "0.1.0"
  },
  {
    "id" : "ans_fhir_fr_eprescription",
    "uri" : "https://interop.esante.gouv.fr/ig/fhir/eprescription/ImplementationGuide/ans.fhir.fr.eprescription",
    "packageId" : "ans.fhir.fr.eprescription",
    "version" : "current"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2020+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../expansion-params.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-multiples"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://hl7.fr/ig/fhir/medication/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
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
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2020+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "shownav"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../expansion-params.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-multiples"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://hl7.fr/ig/fhir/medication/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/fr-medication-reconciliation-discrepancy"
      },
      "name" : "code system Interop'Santé - divergence identifiée sur une ligne de traitement d'une FCT",
      "description" : "Le système de codage de la divergence identifiée sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/fr-medication-reconciliation-outcome"
      },
      "name" : "code system Interop'Santé - Gravité de l'erreur sur une ligne de traitement d'une FCT",
      "description" : "Le système de codage de la gravité de l'erreur sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/fr-medication-history-source-type"
      },
      "name" : "code system Interop'Santé - Nature des sources d'un Bilan Médicamenteux",
      "description" : "Le système de codage des sources d'un Bilan Médicamenteux.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/fr-medication-reconciliation-resolution"
      },
      "name" : "code system Interop'Santé - Résolution d'une divergence sur une ligne de traitement d'une FCT",
      "description" : "Le système de codage de la résolution d'une divergence sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/fr-medication-reconciliation-status"
      },
      "name" : "code system Interop'Santé - Statut d'une ligne de traitement d'une FCT",
      "description" : "Le système de codage du statut d'une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/fr-editorial-status"
      },
      "name" : "code system Interop'Santé - Statut éditorial d'une valeur",
      "description" : "Le système de codage du statut éditorial d'une valeur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/fr-medication-reconciliation-type"
      },
      "name" : "code system Interop'Santé - Type d'écart/erreur sur une ligne de traitement d'une FCT",
      "description" : "Le système de codage du type d'écart/erreur sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/fr-document-type"
      },
      "name" : "code system Interop'Santé - Type de document d'une ressource Composition du domaine Pharmacy",
      "description" : "Le système de codage SIPh du type de document d'une ressource *Composition* du domaine Pharmacy",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/Disp-DOLIPRANE-Refill-Compl-presc-DC"
      },
      "name" : "Disp-DOLIPRANE-Refill-Compl-presc-DC",
      "description" : "Prescription complémentaire et finale de DOLIPRANE sur une prescription de Paracétamol",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/Disp-DOLIPRANE-Refill-presc-DC"
      },
      "name" : "Disp-DOLIPRANE-Refill-presc-DC",
      "description" : "Dispensation complémentaire et partielle de DOLIPRANE sur une prescription de Paracétamol",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/Disp-DOLIPRANE-Refill-Substit"
      },
      "name" : "Disp-DOLIPRANE-Refill-Substit",
      "description" : "Dispensation complémentaire et partielle de DOLIPRANE sur une prescription d'EFFERALGAN",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/Disp-EFFERALGAN"
      },
      "name" : "Disp-EFFERALGAN",
      "description" : "Dispensation complète d'EFFERALGANT sur une prescription d'EFFERALGAN",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/Disp-EFFERALGAN-presc-DC"
      },
      "name" : "Disp-EFFERALGAN-presc-DC",
      "description" : "Dispensation complète de Paracétamol sur une prescription d'EFFERALGAN",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/Disp-group01-1"
      },
      "name" : "Disp-group01-1",
      "description" : "Délivrance reglobalisée, cumulant 3 dispensations nominatives",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/Disp-group01-2"
      },
      "name" : "Disp-group01-2",
      "description" : "Délivrance reglobalisée, cumulant 3 dispensations nominatives - Option 2",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-inpatient-medication-dispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-current-medication-composition"
      },
      "name" : "FR Current Medication Composition",
      "description" : "Profil de la ressource Composition du traitement médicamenteux courant.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-current-medication-medicationstatement"
      },
      "name" : "FR Current Medication MedicationStatement",
      "description" : "Profil de la ressource *MedicationStatement* du traitement médicamenteux courant.\nCurrent Medication MedicationStatement resource profile",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-inpatient-medication-dispense"
      },
      "name" : "FR Inpatient MedicationDispense",
      "description" : "French medication dispense profile",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-medication"
      },
      "name" : "FR Medication",
      "description" : "profil de la ressource Medication décrivant le médicament dans une ressource MedicationRequest ou MedicationStatement profilée par InterOp'Santé",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-medication-history-composition"
      },
      "name" : "FR Medication History Composition",
      "description" : "Profil de la ressource Composition du Bilan Médicamenteux.\nMedication Assessment Composition resource profile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-medication-history-medicationstatement"
      },
      "name" : "FR Medication History MedicationStatement",
      "description" : "Profil de la ressource *MedicationStatement* du Bilan médicamenteux.\nMedication History MedicationStatement resource profile",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-medication-reconciliation-composition"
      },
      "name" : "FR Medication Reconciliation Composition",
      "description" : "Profil de la ressource *Composition* la Fiche de Conciliation des Traitements médicamenteux (FCT).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-medication-reconciliation-statement"
      },
      "name" : "FR Medication Reconciliation MedicationStatement",
      "description" : "Profil de la ressource *MedicationStatement* référencée dans la ressource *Composition* de la Fiche de Conciliation des Traitements médicamenteux (FCT).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-mp-substance"
      },
      "name" : "FR Meditinal Product Substance",
      "description" : "code for the medicinal product substance",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-on-admission-medication-composition"
      },
      "name" : "FR On Admission Medication Composition",
      "description" : "Profil de la ressource *Composition* du traitement médicamenteux prescrit à l'admission.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-on-admission-retroactive-reconciliation-composition"
      },
      "name" : "FR On Admission Retroactive Reconciliation Composition",
      "description" : "Profil de la ressource *Composition* de la Fiche de Conciliation des Traitements médicamenteux (FCT) rétroactive d'admission.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-mp-dose-form"
      },
      "name" : "French Medicinal product Dose form",
      "description" : "Le jeu de valeurs à utiliser pour coder l'élément *doseForm* des ressources *FrMedication*.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/FrMethodOfAdministration"
      },
      "name" : "French Method Of Administration",
      "description" : "Le jeu de valeurs à utiliser pour coder l'élément *dosageInstruction.method* de la ressource *FRMedicationRequest*.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-treatment-intent"
      },
      "name" : "French overall intention of the treatment",
      "description" : "Le jeu de valeurs à utiliser pour coder l'élément *treatmentIntent* de la ressource *FRInpatientMedicationRequest*.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-route-of-administration"
      },
      "name" : "French Route of Administration",
      "description" : "Le jeu de valeurs à utiliser pour coder l'élément *dosageInstruction.route* de la ressource *FRMedicationRequest*.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-medication-history-sources"
      },
      "name" : "FRMedicationHistorySources",
      "description" : "Sources des lignes du Bilan Médicamenteux que représente la ressource *Composition* ou de chacune de ses lignes que représente la ressource *MedicationStatement* référencée par l'élément *entry* de la ressource *Composition* (nombre de sources ET le type de source, défini codé avec, si possible, son auteur, défini ès qualités et, si possible, nominativement)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-medicationstatement-reconciliation-properties"
      },
      "name" : "FRMedicationStatementReconciliationProperties",
      "description" : "Propiétés spécifiques de la ligne de médicament, ajoutée à la ressource MedicationStatement dans la Fiche de Conciliation des Traitements médicamenteux (FCT)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/InLine-DOLIPRANE"
      },
      "name" : "InLine-DOLIPRANE",
      "description" : "Medication DOLIPRANE® pour exemple de dispensation",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/InLine-med-EFFERALGAN"
      },
      "name" : "InLine-med-EFFERALGAN",
      "description" : "Medication EFFERALGAN® pour exemple de dispensation",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/InLine-med-Paracetamol"
      },
      "name" : "InLine-med-Paracetamol",
      "description" : "Medication Paracétamol pour exemple de dispensation",
      "exampleCanonical" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medication"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/InLine-Observation-poids-Avion"
      },
      "name" : "InLine-Observation-poids-Avion",
      "description" : "Poids du patient pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/InLine-observation-taille-Avion"
      },
      "name" : "InLine-observation-taille-Avion",
      "description" : "Taille du patient pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/InLine-patient-Avion"
      },
      "name" : "InLine-patient-Avion",
      "description" : "Patient pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Group"
      }],
      "reference" : {
        "reference" : "Group/InLine-patient-group-01"
      },
      "name" : "InLine-patient-group-01",
      "description" : "Groupe de patient pour exemple de délivrance reglobalisée",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/InLine-practitioner-Luiggi"
      },
      "name" : "InLine-practitioner-Luiggi",
      "description" : "Practitioner prescripteur pour exemples traduction PN13-FHIR de resultats d'analyse pharmaceutique",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-Presc-EFFERALGAN"
      },
      "name" : "InLine-Presc-EFFERALGAN",
      "description" : "Prescription d'EFFERALGAN® pour exemple de dispensation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-presc-EFFERALGAN2"
      },
      "name" : "InLine-presc-EFFERALGAN2",
      "description" : "Prescription d'EFFERALGAN® pour exemple de dispensation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-presc-Paracetamol1"
      },
      "name" : "InLine-presc-Paracetamol1",
      "description" : "Prescription de Paracétamol pour exemple de dispensation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/InLine-presc-Paracetamol2"
      },
      "name" : "InLine-presc-Paracetamol2",
      "description" : "Prescription de Paracétamol pour exemple de dispensation",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-drug-characteristic"
      },
      "name" : "Medication descriptive properties",
      "description" : "Specifies descriptive properties of the medicine",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/medication-ingredient-strength-codes"
      },
      "name" : "MedicationIngredientStrengthCodes",
      "description" : "Medication Ingredient Strength Codes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-treatment-intent"
      },
      "name" : "MedicationRequest overall treatment intent",
      "description" : "The overall intention of the treatment",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/medication-ingredient-strength-codes"
      },
      "name" : "Medication_Ingredient_Strength_Codes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/FrRangeMedication"
      },
      "name" : "Range with UCUM or EDQM codes if code is used",
      "description" : "Range with low and high unit UCUM or EDQM codes if code is used",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/FrRatioMedication"
      },
      "name" : "Ratio with UCUM or EDQM codes if code is used",
      "description" : "Ratio with numerator and denominator unit UCUM or EDQM encoded if code is used",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:complex-type"
      }],
      "reference" : {
        "reference" : "StructureDefinition/FrSimpleQuantityMedication"
      },
      "name" : "SimpleQuantity with UCUM or EDQM codes or code not used",
      "description" : "simple quantity datatype requiring a UCUM or EDQM code or no code (only unti)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/fr-strength-codeableconcept"
      },
      "name" : "Strength CodeableConcept",
      "description" : "Additional non unit value for strength",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-medication-code"
      },
      "name" : "value set Interop'Santé - Codes identifiant les médicaments",
      "description" : "Le jeu de valeurs à utiliser pour indiquer le médicament dans Medication.code.coding.code",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-substance-code"
      },
      "name" : "value set Interop'Santé - Codes identifiant les substances",
      "description" : "Le jeu de valeurs à utiliser pour indiquer un ingrédient composant un médicament dans Medication.ingredient.itemCodeableConcept.coding.code",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-medication-reconciliation-outcome"
      },
      "name" : "value set Interop'Santé - Gravité de l'erreur sur une ligne de traitement d'une FCT",
      "description" : "Le jeu de valeurs à utiliser pour coder la gravité de l'erreur sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-medication-reconciliation-qualified-discrepancy"
      },
      "name" : "value set Interop'Santé - qualification de la divergence identifiée sur une ligne de traitement d'une FCT",
      "description" : "Le jeu de valeurs à utiliser pour coder la qualification de la divergence identifiée sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-medication-reconciliation-resolution"
      },
      "name" : "value set Interop'Santé - Résolution d'une divergence sur une ligne de traitement d'une FCT",
      "description" : "Un jeu de valeurs à utiliser pour coder la résolution d'une divergence sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-medication-reconciliation-status"
      },
      "name" : "value set Interop'Santé - Statut d'une ligne de traitement d'une FCT",
      "description" : "Le jeu de valeurs à utiliser pour coder le statut d'une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-editorial-status"
      },
      "name" : "value set Interop'Santé - Statut éditorial d'une valeur",
      "description" : "Le jeu de valeurs à utiliser pour coder le statut éditorial d'une valeur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-medication-reconciliation-type"
      },
      "name" : "value set Interop'Santé - Type d'écart/erreur sur une ligne de traitement d'une FCT",
      "description" : "Le jeu de valeurs à utiliser pour coder le type d'écart/erreur sur une ligne de traitement d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-current-medication-document-type"
      },
      "name" : "value set Interop'Santé - type de document de la ressource Composition d'une FCT",
      "description" : "Le jeu de valeurs à utiliser pour coder le type de document de la ressource *Composition* d'une liste des Traitements Médicamenteux Courants.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-medication-reconciliation-document-type"
      },
      "name" : "value set Interop'Santé - type de document de la ressource Composition d'une FCT",
      "description" : "Le jeu de valeurs à utiliser pour coder le type de document de la ressource *Composition* d'une FCT (Fiche de Conciliation des Traitements médicamenteux).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/fr-medication-history-source-type"
      },
      "name" : "value set SIPh - Nature des sources d'un Bilan Médicamenteux",
      "description" : "Un jeu de valeurs à utiliser pour coder les sources d'un Bilan Médicamenteux.",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Accueil",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "conciliation-Intro.html"
        }],
        "nameUrl" : "conciliation-Intro.html",
        "title" : "La conciliation - Introduction",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "conciliation-VueEnsemble.html"
        }],
        "nameUrl" : "conciliation-VueEnsemble.html",
        "title" : "La conciliation - Vue d'ensemble",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "conciliation-CasUsage.html"
        }],
        "nameUrl" : "conciliation-CasUsage.html",
        "title" : "La conciliation - Cas d'usage",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "conciliation-Implementation.html"
        }],
        "nameUrl" : "conciliation-Implementation.html",
        "title" : "La conciliation - Implémentation",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "conciliation-Exemples.html"
        }],
        "nameUrl" : "conciliation-Exemples.html",
        "title" : "La conciliation - Exemples",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "dispensation-Intro.html"
        }],
        "nameUrl" : "dispensation-Intro.html",
        "title" : "La dispensation - Introduction",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "dispensation-RessourceMedicationDispense.html"
        }],
        "nameUrl" : "dispensation-RessourceMedicationDispense.html",
        "title" : "La dispensation - Ressource MedicationDispense",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "dispensation-DelivrancePlusSimple.html"
        }],
        "nameUrl" : "dispensation-DelivrancePlusSimple.html",
        "title" : "La dispensation - La délivrance la plus simple",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "dispensation-DispensationNominativeDelivranceReglobalisee.html"
        }],
        "nameUrl" : "dispensation-DispensationNominativeDelivranceReglobalisee.html",
        "title" : "La dispensation - La dispensation nominative à délivrance reglobalisée",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "dispensation-Discussion.html"
        }],
        "nameUrl" : "dispensation-Discussion.html",
        "title" : "La dispensation - Discussion",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Téléchargements et usages",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "suivitravaux.html"
        }],
        "nameUrl" : "suivitravaux.html",
        "title" : "Historique des travaux",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
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
    }]
  }
}

```
