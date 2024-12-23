Invariant: frmed-med-2
Description: "If fr-medication is an othter-medication, its code SHALL NOT be UCD"
Severity: #error
// Expression: "coding.system != 'http://phast.fr/fhir/ValueSet/Pharmacy/CIOdc/SIPh-CIO_UCD'" //A remplacer avec le code officiel d'ucd