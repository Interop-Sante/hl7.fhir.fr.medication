Instance: Disp-group01-1
InstanceOf: FrInpatientMedicationDispense
Usage: #example
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/event-basedOn"
* extension[=].valueReference.reference = "MedicationDispense/Disp-DOLIPRANE-Refill-presc-DC"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/event-basedOn"
* extension[=].valueReference.reference = "MedicationDispense/Disp-DOLIPRANE-Refill-Compl-presc-DC"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/event-basedOn"
* extension[=].valueReference.reference = "MedicationDispense/Disp-DOLIPRANE-Refill-Substit"
* status = #completed
* medicationReference.reference = "Medication/InLine-med-DOLIPRANE"
* subject.reference = "Group/InLine-patient-group01"
* performer.actor.reference = "Practitioner/smart-Practitioner-7148xxxx"
* authorizingPrescription[0].reference = "MedicationRequest/InLine-presc-Paracetamol1"
* authorizingPrescription[+].reference = "MedicationRequest/InLine-presc-Paracetamol2"
* authorizingPrescription[+].reference = "MedicationRequest/InLine-presc-EFFERALGAN2"
* type = $v3-ActCode#RFP "Refill - Part"
* quantity = 14 '1'
* daysSupply = 2 'd' "jours"
* whenPrepared = "2021-07-16T10:10:00Z"
* whenHandedOver = "2021-07-16T10:24:00Z"