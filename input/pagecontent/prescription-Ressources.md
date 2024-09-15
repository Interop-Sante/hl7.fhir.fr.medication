# Ressources

## Profiles

- [*FrInpationtMedicationRequest*](StructureDefinition-FrInpationtMedicationRequest.html)
  - Type: *MedicationRequest*
  - Une ligne de prescription
  - En fonction de la nature du médicament prescrit, référence
    - soit une ressource *FrMedicationUCD*,
    - soit une ressource *FrMedicationNonProprietaryName*,
    - soit une ressource *FrMedicationCompound*
- [*FrMedicationUcd](StructureDefinition-FrMedicationUcd.html)
  - Type: *Medication*
  - Un médicatment prescrit en spécialité (UCD)
  - Référence un à plusieurs éléments *ingredient* qui peuvent être
    - soit une ressource *FrSnomedMPSubstanceActive*
    - soit, exceptionnellement, une ressource *FrMedicationUcdPart* pour les UCD comportant des unités de composition différentes
- [*FrMedicationUcdPart](StructureDefinition-FrMedicationUcdPart.html)
  - Type: *Medication*
  - Une partie de l'UCD (ex. *comprimé bleu*)
  - Ces parties discriminant des unités de composition différentes d'une même UCD, n'ont pas de code propre. Elles sont donc dépendantes de l'UCD à laquelle elles sont rattachées.
  - Pour cette raison, cette ressource **ne peut être utilisée seule**. Elle doit être explicitement rattachée à une ressource *FrMedicationUcd*.
- [*FrMedicationNonProprietaryName*](StructureDefinition-FrMedicationNonProprietaryName.html)
  - Type: *Medication*
  - Un médicament prescrit en DC
  - Référence un à plusieurs éléments *ingredient* qui ne peuvent pas être que des ressources *FrSnomedMPSubstanceActive*
- [*FrMedicationCompound](StructureDefinition-FrMedicationCompound.html)
  - Type: *Medication*
  - Un médicament prescrit composé de spécialités et/ou de médicament en DC
  - Référence un à plusieurs composants qui peuvent être, indépendamment,
    - soit une ressource *FrMedicationUCD*,
    - soit une ressource *FrMedicationNonProprietaryName*.
- [*FrMPSubstanceActive](StructureDefinition-FrMPSubstanceActive.html)
  - Type: *CodeableConcept*
  - Une substance active des *Medical Product* SNOMED CT

## Extensions

- [*FrTreatmentIntent*](StructureDefinition-FrTreatmentIntent.html)
  - L'intention général du traitement (préventif, curatif, palliatif, ...)
  - Type: element *CodeableConcept*
  - Cible: ressource *MedicationRequest*
  - Binding: jeu valeurs *FrTreatmentIntent* (extensible)
- [*FrDrugCharacteristic*](StructureDefinition-FrDrugCharacteristic.html)
  - Une propriété caractéristique de médicament prescrit.
  - Par exemple, à libération prolongée
  - Type: element *complex type*
  - Cible: ressource *Medication*
  - Cette extension préfigure une évolution de la ressource *Medication* en R5.
- [*FrBasisOfDoseComponent*](StructureDefinition-FrBasisOfDoseComponent.html)
  - Le médicament composant référencé par la quantité de la dose d'un médicament composé
  - Type: element *complex type*
  - Cible: élément *doseAndRate* d'une ressource *Dosage*
- [*FrIsVehicle*](StructureDefinition-FrIsVehicle.html)
  - Le médicament composant assumant le rôle de soluté
  - Type: element *complex type*
  - Cible: ressource *Medication* ou élément *ingredient* d'une ressouce *Medication*

## ValueSets

- [*SIPh-CIO_UCD*](http://siph.phast.fr/free-set-ciodc/)
  - Les codes UCD valides pour identifier les spécialités
- [*FrMedicinalProductOnly*](ValueSet-FrMedicinalProductOnly.html)
  - Les codes SNOMED CT des DC
- [*FrMpSubstanceActive*](ValueSet-FrMpSubstanceActive.html)
  - Les codes SNOMED CT des substances actives des *Medicinal Product*
- [*FrRouteOfAdministration*](ValueSet-FrRouteOfAdministration.html)
  - Les codes SNOMED CT des voies d'administration
- [*FrMethodOfAdministration*](ValueSet-FrMethodOfAdministration.html)
  - Les codes SNOMED CT des méthodes d'administration
- [*FrMpDoseForm*](ValueSet-FrMpDoseForm.html)
  - Les codes SNOMED CT des formes des *Medicinal Product*
- [*FrMpUnitOfPresentation*](ValueSet-FrMpUnitOfPresentation.html)
  - Les codes SNOMED CT des unités de présentation des *Medicinal Product*
- [*FrTreatmentIntent*](ValueSet-FrTreatmentIntent.html)
  - Les codes SNOMED de l'intention général du traitement (préventif, curatif, palliatif, ...)

## CodeSystems

- [*SIPh-CIO_UCD*](https://siph.phast.fr/free-set-ciodc/)
  - Le code system sur lequel est construit le value set SIPh-CIO_UCD des codes UCD valides.
  - CIOdc est Copyright © 2003-2021 PHAST - France. All rights reserved.
  - Ce code system fait partie de [FreeSet CIOdc](https://siph.phast.fr/free-set-ciodc/) disponible sous licence libre.
- *SNOMED_CT* ***Lien à mettre à jour***
  - Le code system de l'ontologie sur laquelle sont construits les jeux de valeurs des propriétés des médicaments et de la clinique.
  - SNOMED CT est Copyright © 2002 International Health Terminology Standards Development Organisation (SNOMED International). All rights reserved.
- [*UCUM*](https://ucum.org/)
  - Le code system des unités de mesures.
  - UCUM est Copyright © 1999-2013 Regenstrief Institute, Inc. et The UCUM Organization, Indianapolis, US-IN. All rights reserved.
