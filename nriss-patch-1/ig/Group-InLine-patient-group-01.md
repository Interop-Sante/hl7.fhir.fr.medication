# InLine-patient-group-01 - Guide d'implémentation du médicament v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **InLine-patient-group-01**

## Example Group: InLine-patient-group-01

**type**: Person

**actual**: true

> **member****entity**:[Patient/14602](Patient/14602)

> **member****entity**:[Patient/14603](Patient/14603)

> **member****entity**:[Patient/14604](Patient/14604)



## Resource Content

```json
{
  "resourceType" : "Group",
  "id" : "InLine-patient-group-01",
  "type" : "person",
  "actual" : true,
  "member" : [
    {
      "entity" : {
        "reference" : "Patient/14602"
      }
    },
    {
      "entity" : {
        "reference" : "Patient/14603"
      }
    },
    {
      "entity" : {
        "reference" : "Patient/14604"
      }
    }
  ]
}

```
