<div style="width: 65%">
    <blockquote class="stu-note">
    <p>
    <b>Attention !</b> la partie conciliation est en draft et n'a pas été éprouvé, un groupe de travail dédié doit être lancé afin de faire évoluer le besoin.
    </p>
    </blockquote>
</div>

### Implémentation

Les 3 documents de la conciliation sont implémentés chacun sous forme d'une ressource *Bundle* de type `document`.

Selon le document, la composition du *Bundle* est

- pour le **Bilan Médicamenteux**, une ressource [FrMedicationHistoryComposition](StructureDefinition-fr-medication-history-composition.html)
- pour le **Traitement Médicamenteux courant**, une ressource [FrCurrentMedicationComposition](StructureDefinition-fr-current-medication-composition.html)
- pour la **Fiche de Conciliation des Traitements (FCT)**, une ressource [FrMedicationReconciliationComposition](StructureDefinition-fr-medication-reconciliation-composition.html)

Pour la conciliation rétroactive d'admission,

- Le **Traitement Médicamenteux courant** est l'**Ordonnance Médicamenteuse d'Admission** représentée par la composition [FrOnAdmissionMedicationComposition](StructureDefinition-fr-on-admission-medication-composition.html)
- La **Fiche de Conciliation des Traitements (FCT)** est la **Fiche de Conciliation rétroactive des Traitements à l'admission** représentée par la composition [FrOnAdmissionRetroactiveMedicationReconciliationComposition](StructureDefinition-fr-on-admission-retroactive-reconciliation-composition.html)
