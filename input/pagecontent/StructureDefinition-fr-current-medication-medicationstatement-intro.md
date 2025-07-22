### Usage

Chaque ressource *MedicationStatement* y représente une ligne de médicament du traitement médicamenteux courant.

When interpreting a medicationStatement, the value of the status and NotTaken needed to be considered:

* 1. MedicationStatement.status + MedicationStatement.wasNotTaken
* 2. Status=Active + NotTaken=T = Not currently taking
* 3. Status=Completed + NotTaken=T = Not taken in the past
* 4. Status=Intended + NotTaken=T = No intention of taking
* 5. Status=Active + NotTaken=F = Taking, but not as prescribed
* 6. Status=Active + NotTaken=F = Taking
* 7. Status=Intended +NotTaken= F = Will be taking (not started)
* 8. Status=Completed + NotTaken=F = Taken in past
* 9. Status=In Error + NotTaken=N/A = In Error.
