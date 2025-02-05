Profile: FrMedication
Parent: Medication
Id: fr-medication
Description: "Profil de la ressource Medication décrivant le médicament dans une ressource MedicationStatement (Bilan Médicamenteux, Conciliation) ou MedicationRequest (prescription)."
* ^status = #draft

* meta.profile MS
* meta.profile ^label = "Medication"
* meta.profile ^requirements = "description du médicament figurant dans un InterOp'Santé (fr) MedicationStatement ou MedicationRequest"
* implicitRules ..0
* code ..0
* amount ..0 MS
* amount ^requirements = "Le médicament d'une MedicationRequest ou MedicationStatement n'est pas une boite contenant plusieurs unités"

* ingredient 1..
* ingredient.item[x] only CodeableConcept
* ingredient.item[x] ^definition = "L'ingrédient doit être un concept codé de Medicament réréfençant un système de codage à partir duquelle la description de cet ingredient-médicament peut être connue.\r\nContraint l'application qui consomme la ressource à savoir ce que représente ce concept : une spécialité (DOLIPRANE 500 mg comprimé), une DC (PARACETAMOL), un MV (médicament virtuel, PARACETAMOL 500 mg comprimé) en interrogeant le référentiel ad hoc.\r\nDans PN13, ce niveau d'information est convoyé par l'attribut ComposantPrescrit.TypeComposant qui prend ses valeurs dans la nomenclature SIPh-TypeComposant.\r\nCes éléments d'interopérabilité sémantique ne sont pas adressés par FHIR, pas directement dans MedicationRequest en tout cas. Le système de codage doit fournir le type de médicament que représente le concept codé."

* ingredient.strength only FrRatioUcum
* ingredient.strength ^short = "Quantity of ingredient present with UCUM unit"
* ingredient.strength ^definition = "Specifies how many (or how much) of the item there are in this Medication. No use of element 'comparator' in the simpleQuantity definitions.\r\n1. Si l'item est une UCD, alors la quantité doit être un nombre de cette UCD (ex: 3 [ampoules] d'une UCD ampoule de 1 g de Chlorure de sodium).\r\n2. Si l'item est une unité de médicament en DC quantifiée en quantité (ex. PARACETAMOL 500 mg), alors la quantité doit être un nombre d'unité de ce médicament en DC qantifiée (ex: 2 [unités]). \r\n3. Si l'item est un médicament en DC quantifié en concentration (ex: PARACETAMOL 2,4%) , alors la quantité est exprimée en volume (ex: 5 mL).\r\n4. Si l'item est un médicament en DC non quantifié (ex: PARACETAMOL), alors la quantité est exprimée en quantité (ex: 225 mg)."

* batch ..0