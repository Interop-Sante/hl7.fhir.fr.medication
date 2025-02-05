### Vue d’ensemble

### Implémentation

Les 3 documents de la conciliation sont implémentés chacun sous forme d'une ressource *Bundle* de type `document`.

Selon le document, la composition du *Bundle* est

- pour le **Bilan Médicamenteux**, une ressource [FrMedicationHistoryComposition](StructureDefinition-FrMedicationHistoryComposition.html)
- pour le **Traitement Médicamenteux courant**, une ressource [FrCurrentMedicationComposition](StructureDefinition-FrCurrentMedicationComposition.html)
- pour la **Fiche de Conciliation des Traitements (FCT)**, une ressource [FrMedicationReconciliationComposition](StructureDefinition-FrMedicationReconciliationComposition.html)

Pour la conciliation rétroactive d'admission,

- Le **Traitement Médicamenteux courant** est l'**Ordonnance Médicamenteuse d'Admission** représentée par la composition [FrOnAdmissionMedicationComposition](StructureDefinition-FrOnAdmissionMedicationComposition.html)
- La **Fiche de Conciliation des Traitements (FCT)** est la **Fiche de Conciliation rétroactive des Traitements à l'admission** représentée par la composition [FrOnAdmissionRetroactiveMedicationReconciliationComposition](StructureDefinition-FrOnAdmissionRetroactiveMedicationReconciliationComposition.html)

#### Les 3 documents supports de la conciliation

![DocumentsSupportsConciliation](Conciliation1.jpg)

#### Les ressources profilée par Interop'Santé

Le profilage de ces ressources répond aux recommandations du [guide méthodologique de mise en œuvre de la conciliation médicamenteuse](https://www.has-sante.fr/jcms/c_2736453/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante) publié par la Haute Autorité de Santé.

- bilan médicamenteux : voir profil [FrMedicationHistoryComposition](StructureDefinition-FrMedicationHistoryComposition.html)
- fiche de conciliation des traitements médicamenteux (FCT) : voir profil [FrMedicationReconciliationComposition](StructureDefinition-FrMedicationReconciliationComposition.html)

La FCT fait référence au *bilan médicamenteux* (le traitement médicamenteux du patient avant hospitalisation) et au *traitement médicamenteux courant* (le traitement médicamenteux en cours lors de l'hospitalisation). De ce fait, le profil [FrCurrentMedicationComposition](StructureDefinition-FrCurrentMedicationComposition.html) a été défini pour rendre compte de ce *traitement médicamenteux courant*.

#### Dépendance des ressources profilés par Interop'Santé

![IGMedicationDependanceRessourcesProfileesConciliation](Conciliation2.jpg)

Le profil [FrOnAdmissionRetroactiveMedicationReconciliationComposition](StructureDefinition-FrOnAdmissionRetroactiveMedicationReconciliationComposition.html) contraint le profil général [FrMedicationReconciliationComposition](StructureDefinition-FrMedicationReconciliationComposition.html) pour répondre au cas particulier de la **conciliation rétroactive d'admission**. Il référence un cas particulier de *traitement médicamenteux courant*, l'**ordonnance médicale d'admission (OMA)**, ordonnance adressée par le profil [FrOnAdmissionMedicationComposition](StructureDefinition-FrOnAdmissionMedicationComposition.html) qui contraint le profil général [FrCurrentMedicationComposition](StructureDefinition-FrCurrentMedicationComposition.html).

![Conciliation-ConciliationRetroactiveALAdmissiones](Conciliation3.jpg)

### Ressources

<div class="figure" style="width:100%;">
    <p>{% include conciliation-overview.svg %}</p>
</div>

#### Profils

<!-- A retravailler, inutle car doublon difficile à maintenir, rediriger vers la page artifact ou un plantuml -->

- [*FrMedicationHistoryComposition*](StructureDefinition-FrMedicationHistoryComposition.html)
  - Type: *Composition*
  - Composition du *Bundle* portant le document FHIR **Bilan Médicamenteux**
  - Référence
    - l'extension *FrMedicationHistorySource* pour décrire le sourcing du bilan
    - la ressource *FrMedicationHistoryMedicationStatement* pour décrire chaque ligne du bilan
  - Est référencé par le *Bundle* du type *document* portant **le Bilan Médicamenteux**
- [*FrMedicationHistoryMedicationStatement*](StructureDefinition-FrMedicationHistoryMedicationStatement.html)
  - Type: *MedicationStatement*
  - Ligne du **Bilan Médicamenteux**
  - Référence
    - l'extension *FrMedicationHistorySource* pour décrire le sourcing de la ligne
    - la ressource *FrMedication* pour décrire le médicament impliqué dans la ligne
  - Est référence par
    - *FrMedicationHistoryComposition*
    - *FrMedicationReconciliationMedicationStatement*
- [*FrCurrentMedicationComposition*](StructureDefinition-FrCurrentMedicationComposition.html)
  - Type : *Composition*
  - *Composition* du *Bundle* portant le document FHIR **Traitement Médicamenteux** courant (traitement hospitalier)
  - Référence la ressource *FrCurrentMedicationMedicationStatement*
  - Est référencé par le *Bundle* du type *document* portant le **Traitement Médicamenteux** courant (traitement hospitalier)
- [*FrCurrentMedicationMedicationStatement*](StructureDefinition-FrCurrentMedicationMedicationStatement.html)
  - Type: *MedicationStatement*
  - Ligne du **Traitement Médicamenteux courant** (traitement hospitalier)
  - Référence la ressource *FrMedication* pour décrire le médicament impliqué dans la ligne
  - Est référence par
    - *FrCurrentMedicationComposition*
    - *FrMedicationReconciliationMedicationStatement*
- [*FrMedicationReconciliationComposition*](StructureDefinition-FrMedicationReconciliationComposition.html)
  - Type: *Composition*
  - *Composition* du *Bundle* portant le document FHIR Fiche de **Conciliation des Traitements (FCT)**
  - Référence
    - la ressource *FrMedicationReconciliationMedicationStatement* pour décrire chaque ligne de la fiche
    - la ressource *FrMedicationHistoryComposition* pour décrire le bilan médicamenteux objet de la conciliation
    - la ressource *FrCurrentMedicationComposition* pour décrire pour décrire le traitement médicamenteux hospitalier courant objet de la conciliation
  - Est référencé par le *Bundle* du type *document* portant la **FCT**
- [*FrMedicationReconciliationMedicationStatement*](StructureDefinition-FrMedicationReconciliationComposition.html)
  - Type: *MedicationStatement*
  - Ligne de traitement médicamenteux de la **Fiche de Conciliation des Traitements (FCT)**
  - Référence
    - l'extension *FrMedicationStatementReconciliationProperties* pour décrire les propriétés de conciliation de la ligne
    - la ressource *FrMedication* pour décrire le médicament impliqué dans la ligne
- [*FrMedication*](StructureDefinition-FrMedication.html)
  - Type: *Medication*
  - Le médicament d'une ligne du **Bilan Médicamenteux** ou du **Traitement Médicamenteux** courant ou de la **FCT**
  - Est référencée par
    - FrMedicationHistoryMedicationStatement
    - FrCurrentMedicationMedicationStatement
    - FrMedicationReconciliationMedicationStatement
- [*FrOnAdmissionMedicationComposition*](StructureDefinition-FrOnAdmissionMedicationComposition.html)
  - Type: *Composition*
  - Composition du *Bundle* portant le document FHIR **Ordonnance Médicamenteuse d'Admission (OMA)**
  - C'est un cas particulier de Traitement Médicamenteux Courant, qui fixe le type du document à : à l'admission
- [*FrOnAdmissionRetroactiveMedicationReconciliationComposition*](StructureDefinition-FrOnAdmissionRetroactiveMedicationReconciliationComposition.html)
  - Type: *Composition*
  - Composition du *Bundle* portant le document FHIR **Fiche de Conciliation rétroactive des Traitements à l'admission**
  - C'est un cas particulier de FCT, qui fixe le type du document à : rétroactvie à l'admission

#### Extensions

- [*FrMedicationHistorySources*](StructureDefinition-fr-medication-history-sources.html)
  - Type: *complex*
  - Sourcing du **Bilan Médicamenteux** et de la **ligne du Bilan Médicamenteux**
    - Nombre de sources (quel que soit leur nombre)
    - ET la liste de ces sources définies par leur type
    - et, éventuellement,
      - leur auteur identifié ès qualités
      - et, de préférence, également nominativement.
  - Figure dans
    - l'élément section de la ressource *FrMedicationHistoryComposition*, elle y est dénommée *compositionSourcing*
    - la ressource *FrMedicationHistoryMedicationStatement*, elle y est dénommée *statementSourcing*
- [*FrMedicationStatementReconciliationProperties*](StructureDefinition-FrMedicationStatementReconciliationProperties.html)
  - Type: *complex*
  - Propriétés de conciliation d'une ligne de traitement médicamenteux dans une Fiche de Conciliation des Traitements médicamenteux (FCT)
    - statut de divergence sur la ligne de traitement
    - identification oui/non d'une divergence sur la ligne de traitement
    - qualification de la divergence identifiée sur la ligne de traitement
    - commentaires libres (documentation) de la ligne de traitement
    - type de l'écart/erreur entre Bilan et Traitement Courant pour la ligne de traitement
    - gravité estimée de la divergence identifiée sur la ligne de traitement
    - résolution de la divergence identifiée sur la ligne de traitement
  - Figure dans la ressource *FrMedicationReconciliationMedicationStatement*, elle y est dénommée reconciliation

#### ValueSets

- [*FrCurrentMedicationDocumentType*](ValueSet-FrCurrentMedicationDocumentType.html)
  Le type de document d'une ressource FrCurrentMedicationComposition (Traitement Médicamenteux Courant)
- [*FrMedicationReconciliationDocumentType*](ValueSet-fr-medication-reconciliation-document-type.html)
  Le type de document d'une ressource FrMedicationReconciliationComposition (FCT)
- [*FrEditorialStatus*](ValueSet-FrEditorialStatus.html)
  Le statut éditorial d'une valeur
- [*FrMedicationHistorySourceType*](ValueSet-FrMedicationHistorySourceType.html)
  La source d'un Bilan Médicamenteux
- [*FrMedicationReconciliationStatus*](ValueSet-FrMedicationReconciliationStatus.html)
  Le statut d'une ligne de traitement d'une FCT
- [*FrMedicationReconciliationQualifiedDiscrepancy*](ValueSet-FrMedicationReconciliationQualifiedDiscrepancy.html)
  La qualification de la divergence identifiée sur une ligne de traitement d'une FCT
- [*FrMedicationReconciliationOutcome*](ValueSet-FrMedicationReconciliationOutcome.html)
  La gravité de l'erreur sur une ligne de traitement d'une FCT
- [*FrMedicationReconciliationResolution*](ValueSet-FrMedicationReconciliationResolution.html)
  La résolution d'une divergence sur une ligne de traitement d'une FCT

#### CodeSystems

- [*FrDocumentType*](CodeSystem-fr-document-type.html)
  Le type de document, avec leur catégorie
- [*FrEditorialStatus*](CodeSystems-FrEditorialStatus.html)
  Le statut éditorial d'une valeur
- [*FrMedicationHistorySourceType*](CodeSystem-FrMedicationHistorySourceType.html)
  La source d'un Bilan Médicamenteux
- [*FrMedicationReconciliationStatus*](CodeSystem-FrMedicationReconciliationStatus.html)
  Le statut d'une ligne de traitement d'une FCT
- [*FrMedicationReconciliationDiscrepancy*](CodeSystem-FrMedicationReconciliationDiscrepancy.html)
  La qualification de la divergence identifiée sur une ligne de traitement d'une FCT
- [*FrMedicationReconciliationType*](CodeSystem-FrMedicationReconciliationType.html)
  Le type d'écart/erreur sur une ligne de traitement d'une FCT
- [*FrMedicationReconciliationOutcome*](CodeSystem-FrMedicationReconciliationOutcome.html)
  La gravité de l'erreur sur une ligne de traitement d'une FCT
- [*FrMedicationReconciliationResolution*](CodeSystem-FrMedicationReconciliationResolution.html)
  La résolution d'une divergence sur une ligne de traitement d'une FCT


