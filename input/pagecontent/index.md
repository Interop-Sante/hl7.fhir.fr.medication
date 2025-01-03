
# Introduction


<blockquote class="stu-note">
  <p>
    <b>Note</b>
    <br>
    Dans un futur proche, le référentiel unique d'interopérabilité du médicament (RUIM) remplacera les terminologies non standard présentes dans ce guide d'implémentation.
  </p>
</blockquote>


```xml
{{include includes/pn13-example.xml}}
```



```xml
<person>
  <name>John Doe</name>
  <age>30</age>
  <isMarried>false</isMarried>
  <children>
    <child>Alice</child>
    <child>Bob</child>
  </children>
</person>
```

Ce guide d'implémentation (IG) a pour vocation à spécifier les flux d'information autour du médicament pour un patient dans un contexte hospitalier dans un premier temps.
Trois cas d'usage sont pris en compte dans la version actuelle de cet IG:

1. [La concilation](conciliation-Intro.html)
1. [La prescription](prescription-Intro.html)
1. [La dispensation](dispensation-Intro.html)

Ce domaine est pris en charge par le GT Pharmacie d'HL7 France au sein de l'association [Interop’Santé](https://www.interopsante.org/) après une première version développée au sein de la communauté SIPh. L'historique des versions et des travaux est détaillé dans la page de [suivi des travaux](suivitravaux.html).

Cet IG est en développement continu. Certaines sections n’ont pas encore été complètement développées dans cette version. Ces sections sont néanmoins identifiées pour référence.

L'IG intègre également une partie indiquant [comment passer de flux PN13 à des ressources FHIR](transformationPN13-FHIR.html) et inversement.

### Dépendances

{% include dependency-table.xhtml %}

### Propriété intellectuelle

{% include ip-statements.xhtml %}