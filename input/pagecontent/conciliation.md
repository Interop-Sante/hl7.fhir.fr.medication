# La conciliation

Le domaine couvert est le partage des documents informatisés supportant la conciliation des traitements médicamenteux, conformément aux recommandations du [guide méthodologique de mise en oeuvre de la conciliation médicamenteuse](https://www.has-sante.fr/jcms/c_2736453/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante) publié par la Haute Autorité de Santé.

## Vue d’ensemble

### Le contexte de réalisation de la conciliation

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

### Les 3 documents supports de la conciliation

![DocumentsSupportsConciliation](/input/images-source/Conciliation1.jpg)

### Les ressources profilée par Interop'Santé

Le profilage de ces ressources répond aux recommandations du [guide méthodologique de mise en œuvre de la conciliation médicamenteuse](https://www.has-sante.fr/jcms/c_2736453/fr/mettre-en-oeuvre-la-conciliation-des-traitements-medicamenteux-en-etablissement-de-sante) publié par la Haute Autorité de Santé.

- bilan médicamenteux : voir profil [FrMedicationHistoryComposition](/input/fsh/profiles/FrMedicationHistoryComposition.fsh)
- fiche de conciliation des traitements médicamenteux (FCT) : voir profil [FrMedicationReconciliationComposition](https://interop-sante.github.io/hl7.fhir.fr.medication/main/ig/StructureDefinition-FrMedicationReconciliationComposition.html)

La FCT fait référence au *bilan médicamenteux* (le traitement médicamenteux du patient avant hospitalisation) et au *traitement médicamenteux courant* (le traitement médicamenteux en cours lors de l'hospitalisation). De ce fait, le profil [FrCurrentMedicationComposition](https://github.com/Interop-Sante/hl7.fhir.fr.medication/blob/main/input/fsh/profiles/FrCurrentMedicationComposition.fsh) a été défini pour rendre compte de ce *traitement médicamenteux courant*.

### Dépendance des ressources profilés par Interop'Santé

![IGMedicationDependanceRessourcesProfilees](/input/images-source/Conciliation2.jpg)

Le profil [FrOnAdmissionRetroactiveMedicationReconciliationComposition](https://github.com/Interop-Sante/hl7.fhir.fr.medication/blob/main/input/fsh/profiles/FrOnAdmissionRetroactiveMedicationReconciliationComposition.fsh) contraint le profil général [FrMedicationReconciliationComposition](https://github.com/Interop-Sante/hl7.fhir.fr.medication/blob/main/input/fsh/profiles/FrMedicationReconciliationComposition.fsh) pour répondre au cas particulier de la **conciliation rétroactive d'admission**. Il référence un cas particulier de *traitement médicamenteux courant*, l'**ordonnance médicale d'admission (OMA)**, ordonnance adressée par le profil [FrOnAdmissionMedicationComposition](https://github.com/Interop-Sante/hl7.fhir.fr.medication/blob/main/input/fsh/profiles/FrOnAdmissionMedicationComposition.fsh) qui contraint le profil général [FrCurrentMedicationComposition](https://github.com/Interop-Sante/hl7.fhir.fr.medication/blob/main/input/fsh/profiles/FrCurrentMedicationComposition.fsh).

![Conciliation-ConciliationRetroactiveALAdmissiones](/input/images-source/Conciliation3.jpg)

## Cas d’usage

Aucun cas d'usage
Le cas d'usage qui a servi de fil conducteur n'est pas (encore) finalisé dans ce guide.
C'est un non-choix par défaut de temps disponible …

## Ressources

***A mettre à jour avec un tableau de ressource si possible généré par commande sql***

## Implémentation

Les 3 documents de la conciliation sont implémentés chacun sous forme d'une ressource *Bundle* de type *document*.

Selon le document, la composition du *Bundle* est

- pour le **Bilan Médicamenteux**, une ressource [FrMedicationHistoryComposition](https://github.com/Interop-Sante/hl7.fhir.fr.medication/blob/main/input/fsh/profiles/FrMedicationHistoryComposition.fsh)
- pour le **Traitement Médicamenteux courant**, une ressource [FrCurrentMedicationComposition](https://github.com/Interop-Sante/hl7.fhir.fr.medication/blob/main/input/fsh/profiles/FrCurrentMedicationComposition.fsh)
- pour la **Fiche de Conciliation des Traitements (FCT)**, une ressource [FrMedicationReconciliationComposition](https://github.com/Interop-Sante/hl7.fhir.fr.medication/blob/main/input/fsh/profiles/FrMedicationReconciliationComposition.fsh)

Pour la conciliation rétroactive d'admission,

- Le **Traitement Médicamenteux courant** est l'**Ordonnance Médicamenteuse d'Admission** représentée par la composition [FrOnAdmissionMedicationComposition](https://github.com/Interop-Sante/hl7.fhir.fr.medication/blob/main/input/fsh/profiles/FrOnAdmissionMedicationComposition.fsh)
- La **Fiche de Conciliation des Traitements (FCT)** est la **Fiche de Conciliation rétroactive des Traitements à l'admission** représentée par la composition [FrOnAdmissionRetroactiveMedicationReconciliationComposition](https://github.com/Interop-Sante/hl7.fhir.fr.medication/blob/main/input/fsh/profiles/FrOnAdmissionRetroactiveMedicationReconciliationComposition.fsh)

## Exemples

Aucun exemple

- Les exemples de ressources tirés du cas d'usage conducteur ne sont pas (encore) publiés dans ce guide.
- C'est un non-choix par défaut de temps disponible pour les finaliser ...