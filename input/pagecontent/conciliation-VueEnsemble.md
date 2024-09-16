# Vue d’ensemble

## Le contexte de réalisation de la conciliation

Le contexte est défini selon 2 axes:

- la situation par rapport à la prescription que l'on réconcilie
  - proactive : la conciliation est réalisée en amont de la prescription, qui de ce fait, la prend en compte
  - rétroactive : la conciliation est réalisée après que la prescription ait été formulée voire exécutée en tout ou partie. Elle implique alors d'éventuelles actions correctives dont la nature est noté dans la FCT mais dont l'exécution proprement dite relève du domaine de la prescription.
- l'événement présentant un risque de rupture de la continuité de la prise en charge médicamenteuse du patient
  - admission
  - sortie
  - transfert
  - mutation
  - etc.

Ainsi, par exemple, la combinaison de la situation *rétroactive* et de l'événement *admission* définit la **conciliation rétroactive d'admission**.

## Les 3 documents supports de la conciliation

![DocumentsSupportsConciliation](Conciliation1.jpg)

## Les ressources profilée par Interop'Santé

Le profilage de ces ressources répond aux recommandations du [guide méthodologique de mise en œuvre de la conciliation médicamenteuse](https://www.has-sante.fr/jcms/c_2736453/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante) publié par la Haute Autorité de Santé.

- bilan médicamenteux : voir profil [FrMedicationHistoryComposition](StructureDefinition-FrMedicationHistoryComposition.html)
- fiche de conciliation des traitements médicamenteux (FCT) : voir profil [FrMedicationReconciliationComposition](StructureDefinition-FrMedicationReconciliationComposition.html)

La FCT fait référence au *bilan médicamenteux* (le traitement médicamenteux du patient avant hospitalisation) et au *traitement médicamenteux courant* (le traitement médicamenteux en cours lors de l'hospitalisation). De ce fait, le profil [FrCurrentMedicationComposition](StructureDefinition-FrCurrentMedicationComposition.html) a été défini pour rendre compte de ce *traitement médicamenteux courant*.

## Dépendance des ressources profilés par Interop'Santé

![IGMedicationDependanceRessourcesProfileesConciliation](Conciliation2.jpg)

Le profil [FrOnAdmissionRetroactiveMedicationReconciliationComposition](StructureDefinition-FrOnAdmissionRetroactiveMedicationReconciliationComposition.html) contraint le profil général [FrMedicationReconciliationComposition](StructureDefinition-FrMedicationReconciliationComposition.html) pour répondre au cas particulier de la **conciliation rétroactive d'admission**. Il référence un cas particulier de *traitement médicamenteux courant*, l'**ordonnance médicale d'admission (OMA)**, ordonnance adressée par le profil [FrOnAdmissionMedicationComposition](StructureDefinition-FrOnAdmissionMedicationComposition.html) qui contraint le profil général [FrCurrentMedicationComposition](StructureDefinition-FrCurrentMedicationComposition.html).

![Conciliation-ConciliationRetroactiveALAdmissiones](Conciliation3.jpg)
