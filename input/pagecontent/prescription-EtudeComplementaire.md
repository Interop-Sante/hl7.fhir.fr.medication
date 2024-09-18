# Etude complémentaire

Cette étude faite suite aux deux critiques majeures formulées à l'issue de la consultation du 21 octobre 2021 :

- Le binding 'exclusive' à SNOMED CT
- L'usage de profils multiples de la ressource Medication plutôt qu'un seul profil avec des `slice` par type de médicament (spécialité, DC, coumpound)

## Objectif

Remplacer les 3 profils de la ressource Medication

- *frMedicationUCD*,
- *frMedicationNonProprietaryName* et
- *frMedicationCompound*

par un seul profil slicé.

## Ressources

[*FrInpatientMedicationRequest2*](StructureDefinition-FrInpatientMedicationRequest2.html)

- Type: *MedicationRequest*
- Une ligne de prescription
- Quelle que soit la nature du médicament prescrit, référence une ressource *FrMedication2Unique*

Ce profil diffère de *FrInpatientMedicationRequest* par le fait qu'il ne référence que *FrMedication2Unique* et non pas *frMedicationUCD*, *frMedicationNonProprietaryName* ou *frMedicationCompound* selon que le médicament prescrit est une spécialité, un médicament simple en DC ou un médicament composé extemporané.

[*FrMedication2unique*](StructureDefinition-FrMedication2unique.html)

- Type: *Medication*
- Un médicament prescrit en spécialité (UCD), en DC ou en composé extemporané
- Référence un à plusieurs éléments ingredient qui peuvent être
  - soit une ressource *FrMPSubstance2Active* (pour les substances d'un médicament simple)
  - soit une ressource *FrMedication2unique* (pour les médicaments composants des médicaments composés extemporané)

Le `code` est slicé, `discriminant` sur le système de codage

- `ucdCode`
  - `discriminant`:`coding.codesystem` = [http://phast.fr/fhir/ValueSet/Pharmacy/CIOdc/SIPh-CIO_UCD]
  - binding requis sur le jeu de valeurs des codes UCD (SIPh-CIO_UCD)
- `snomedMedicinalProductCode`
  - `discriminant`:`coding.codesystem` = [http://snomed.info/sct]
  - avec binding requis sur le jeu de valeurs des codes *Medicinal Product* SNOMED CT ([FrMedicinalProductOnly](ValueSet-FrMedicinalProductOnly.html))
- `otherMedicationCode` : pour tout système de codage autre que SIPh-CIO_UCD et SNOMED CT
  - `discriminant`: `coding.codesystem` != [http://phast.fr/fhir/ValueSet/Pharmacy/CIOdc/SIPh-CIO_UCD] | [http://snomed.info/sct]

[*FrMPSubstance2Active*](StructureDefinition-FrMPSubstance2Active.html)

- Type: *CodeableConcept*
- Une substance active des Medical Product SNOMED CT

Le slicing du `coding` permet le codage de la substance selon

- le jeu de valeurs requis des substances de Medicinal Product SNOMED CT
  et/ou
- plusieurs systèmes de codage alternatifs non controlés.

## Analyse

Le slicing du `code` du médicament (profil *FrMedication2unique* de la ressource *Medication*) en trois tranches, une par type de médicament, est fait sur son système de codage. Pour que ces alternatives soient exclusives, deux doivent être fixées et différentes et la troisième ouverte à l'exclusion des deux précédentes.

Ainsi, les médicaments définis en tant que spécialité ont un `code` exclusivement dans le `codesystem` UCD. Ça tombe plutôt bien.
Mais les médicaments simples définis en DC ont leur `codesystem` exclusivement SNOMED CT. Ce qui est contraire à la demande des éditeurs de relâcher la contrainte de `binding` 'exclusive' sur SNOMED CT.

Laisser ouvert le `codesystem` du médicament simple en DC, quand bien même SNOMED serait *préferé*, ne permet pas de le discriminer d'un éventuel `codesystem` utilisé pour les médicaments composites. Cette situation de slicing sur un `discriminant` ambigu n'est pas valide (elle ne passe pas le [validateur HL7](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator#UsingtheFHIRValidator-Runningthevalidator)).

Néanmoins, en maintenant ces contraintes de binding exclusif pour les tranches spécialité et DC, les messages d'erreur retournés sur la validation de [MD_0003noExt_ (doliprane 500mg gél 16_2j)](MedicationDispense-14665.html) stipule que le slicing est incongru (donc interdit) sur an element that does not repeat. Il s'agit de l'élément `Medication.code`. Ce `coding` est effectivement unique pour une instance de *Medication*. La multiplicité est ailleurs, dans le type de médicament que représente cette *Medication*, une spécialité, un médicament simple en DC ou un médicament composé.

## Conclusion

Le slicing n'adresse pas cette multiplicité des saveurs exclusives que peut prendre un élément.
