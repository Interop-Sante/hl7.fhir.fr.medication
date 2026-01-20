# FR Prescription Bundle For Example - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FR Prescription Bundle For Example**

## Resource Profile: FR Prescription Bundle For Example 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example | *Version*:0.1.0 |
| Draft as of 2026-01-20 | *Computable Name*:FRPrescriptionBundleForExample |

 
Profil de la ressource Bundle pour la constitution d’exemples de prescription. 

 
Ce profil est utilisé pour la constitution d’exemples de prescription en FHIR. Toutes les prescriptions en FHIR ne sont pas forcément présentées sous la forme de ressource Bundle suivant ce profil, la représentation dépend de l’architecture du (ou des) serveur(s) FHIR interrogé(s). Cf. section 21 de la page sur la transformation PN13 vers FHIR pour plus de détail. 

**Utilisations:**

* Exemples pour ce Profil: [Bundle/HAS-01-Presc-Pantoprazole-DC](Bundle-HAS-01-Presc-Pantoprazole-DC.md), [Bundle/HAS-01-Presc-Pantoprazole-MV](Bundle-HAS-01-Presc-Pantoprazole-MV.md), [Bundle/HAS-02-Presc-Fluindione](Bundle-HAS-02-Presc-Fluindione.md), [Bundle/HAS-03-Presc-INNOHEP](Bundle-HAS-03-Presc-INNOHEP.md)...Show 46 more,[Bundle/HAS-04a-Presc-Paracetamol](Bundle-HAS-04a-Presc-Paracetamol.md),[Bundle/HAS-04b-Presc-DAFALGANCODEINE](Bundle-HAS-04b-Presc-DAFALGANCODEINE.md),[Bundle/HAS-05a-Presc-Fluindione](Bundle-HAS-05a-Presc-Fluindione.md),[Bundle/HAS-05b-Presc-ACTISKENAN](Bundle-HAS-05b-Presc-ACTISKENAN.md),[Bundle/HAS-06-1-Presc-Methotrexate](Bundle-HAS-06-1-Presc-Methotrexate.md),[Bundle/HAS-06-2-Presc-Methotrexate](Bundle-HAS-06-2-Presc-Methotrexate.md),[Bundle/HAS-07-Presc-Paracetamol](Bundle-HAS-07-Presc-Paracetamol.md),[Bundle/HAS-08-1-Presc-Betamethasone](Bundle-HAS-08-1-Presc-Betamethasone.md),[Bundle/HAS-08-2-Presc-Paracetamol](Bundle-HAS-08-2-Presc-Paracetamol.md),[Bundle/HAS-09-Presc-Ropinirole](Bundle-HAS-09-Presc-Ropinirole.md),[Bundle/HAS-10-Presc-Methotrexate](Bundle-HAS-10-Presc-Methotrexate.md),[Bundle/HAS-11-1-Presc-VitamineD](Bundle-HAS-11-1-Presc-VitamineD.md),[Bundle/HAS-11-2-Presc-EVRA](Bundle-HAS-11-2-Presc-EVRA.md),[Bundle/HAS-12-1-Presc-BEPANTHEN](Bundle-HAS-12-1-Presc-BEPANTHEN.md),[Bundle/HAS-12-2-Presc-Methotrexate](Bundle-HAS-12-2-Presc-Methotrexate.md),[Bundle/HAS-12-3-Presc-Enoxaparine](Bundle-HAS-12-3-Presc-Enoxaparine.md),[Bundle/HAS-13-Presc-Desloratadine](Bundle-HAS-13-Presc-Desloratadine.md),[Bundle/HAS-14-1-Presc-CODOLIPRANE](Bundle-HAS-14-1-Presc-CODOLIPRANE.md),[Bundle/HAS-14-2-Presc-Betamethasone](Bundle-HAS-14-2-Presc-Betamethasone.md),[Bundle/HAS-15-Presc-Morphine](Bundle-HAS-15-Presc-Morphine.md),[Bundle/HAS-16-Presc-Racecadotril](Bundle-HAS-16-Presc-Racecadotril.md),[Bundle/HAS-17-Presc-Budesonide](Bundle-HAS-17-Presc-Budesonide.md),[Bundle/HAS-18-Presc-Budesonide-MV](Bundle-HAS-18-Presc-Budesonide-MV.md),[Bundle/HAS-19-Presc-Paracetamol](Bundle-HAS-19-Presc-Paracetamol.md),[Bundle/HAS-20-Presc-Hydrocortisone](Bundle-HAS-20-Presc-Hydrocortisone.md),[Bundle/HAS-21-Presc-Prednisolone](Bundle-HAS-21-Presc-Prednisolone.md),[Bundle/HAS-22-Presc-Prednisolone](Bundle-HAS-22-Presc-Prednisolone.md),[Bundle/HAS-23-1-Presc-Fluindione](Bundle-HAS-23-1-Presc-Fluindione.md),[Bundle/HAS-23-2-Presc-Amiodarone](Bundle-HAS-23-2-Presc-Amiodarone.md),[Bundle/HAS-24-1-presc-Doxycyline](Bundle-HAS-24-1-presc-Doxycyline.md),[Bundle/HAS-24-1-presc-Topiramate](Bundle-HAS-24-1-presc-Topiramate.md),[Bundle/HAS-25-NOVORAPID](Bundle-HAS-25-NOVORAPID.md),[Bundle/HAS-26-Diazepam](Bundle-HAS-26-Diazepam.md),[Bundle/HAS-27-1-presc-GLUCOPHAGE](Bundle-HAS-27-1-presc-GLUCOPHAGE.md),[Bundle/HAS-27-2-presc-Rifampicine](Bundle-HAS-27-2-presc-Rifampicine.md),[Bundle/HAS-28-Presc-LOVENOX](Bundle-HAS-28-Presc-LOVENOX.md),[Bundle/HAS-29-Presc-LOVENOX](Bundle-HAS-29-Presc-LOVENOX.md),[Bundle/HAS-30-1-Presc-Hydrocortisone](Bundle-HAS-30-1-Presc-Hydrocortisone.md),[Bundle/HAS-30-2-Presc-Cetirizine](Bundle-HAS-30-2-Presc-Cetirizine.md),[Bundle/HAS-31-Presc-DUROGESIC](Bundle-HAS-31-Presc-DUROGESIC.md),[Bundle/HAS-32-1-Presc-LOVENOX](Bundle-HAS-32-1-Presc-LOVENOX.md),[Bundle/HAS-32-2-Presc-ULTIBRO-BREES](Bundle-HAS-32-2-Presc-ULTIBRO-BREES.md),[Bundle/HAS-33-Presc-VERSATIS](Bundle-HAS-33-Presc-VERSATIS.md),[Bundle/MultiLine-Presc-METFORMINE-GLICLAZIDE](Bundle-MultiLine-Presc-METFORMINE-GLICLAZIDE.md),[Bundle/MultiLine-Presc-METHOTREXATE-LEDERFOLINE](Bundle-MultiLine-Presc-METHOTREXATE-LEDERFOLINE.md)and[Bundle/MultiLine-Presc-Sucralfate-Paracetamol](Bundle-MultiLine-Presc-Sucralfate-Paracetamol.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.medication|current/StructureDefinition/fr-prescription-bundle-for-example)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-fr-prescription-bundle-for-example.csv), [Excel](StructureDefinition-fr-prescription-bundle-for-example.xlsx), [Schematron](StructureDefinition-fr-prescription-bundle-for-example.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-prescription-bundle-for-example",
  "url" : "https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-prescription-bundle-for-example",
  "version" : "0.1.0",
  "name" : "FRPrescriptionBundleForExample",
  "title" : "FR Prescription Bundle For Example",
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
  "description" : "Profil de la ressource Bundle pour la constitution d'exemples de prescription.",
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
  "purpose" : "Ce profil est utilisé pour la constitution d'exemples de prescription en FHIR. Toutes les prescriptions en FHIR ne sont pas forcément présentées sous la forme de ressource Bundle suivant ce profil, la représentation dépend de l'architecture du (ou des) serveur(s) FHIR interrogé(s). Cf. section 21 de la page sur la transformation PN13 vers FHIR pour plus de détail.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle",
        "short" : "Bundle exemple de prescription",
        "definition" : "Exemple de prescription contenant l'ensemble des ressources issus d'une traduction d'un message PN13 de prescription en FHIR"
      },
      {
        "id" : "Bundle.implicitRules",
        "path" : "Bundle.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Bundle.language",
        "path" : "Bundle.language",
        "defaultValueCode" : "fr-FR"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "defaultValueCode" : "searchset"
      }
    ]
  }
}

```
