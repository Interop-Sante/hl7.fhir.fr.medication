
### Introduction

{% if site.data.info.releaselabel == 'ci-build' %}
  <div style="width: 65%">
      <blockquote class="stu-note">
      <p>
      <b>Attention !</b> Cet Implementation Guide n'est pas la version courante. La version courante sera accessible via l'URL canonique (https://hl7.fr/ig/fhir/medication) lorsque celui-ci sera publié.
      </p>
      </blockquote>
  </div>
{% endif %}

Ce guide d'implémentation (IG) est une version historique en mode draft sur les deux cas d'usage:

1. [La dispensation](dispensation-Intro.html)
1. [La concilation](conciliation-Intro.html)

Ces domaines sont pris en charge par le GT Pharmacie d'HL7 France au sein de l'association [Interop’Santé](https://www.interopsante.org/) après une première version développée au sein de la communauté SIPh. L'historique des versions et des travaux est détaillé dans la page de [suivi des travaux](suivitravaux.html).

Cet IG a pour vocation à faire l'objet de travaux complémentaires d'alignement sur les profils européens et de traduction de flux PN13 en FHIR. Ces travaux déboucheront notamment sur deux IG à jour, un pour chaque domaine conciliation et dispensation.

#### Dépendances

{% include dependency-table.xhtml %}

#### Propriété intellectuelle

{% include ip-statements.xhtml %}
