Instance: Disp-group01-2
InstanceOf: FrInpatientMedicationDispense
Usage: #example
* status = #completed
* medicationReference.reference = "Medication/InLine-med-DOLIPRANE"
* subject.reference = "Group/InLine-patient-group01"
* supportingInformation[0].reference = "MedicationDispense/Disp-DOLIPRANE-Refill-presc-DC"
* supportingInformation[+].reference = "MedicationDispense/Disp-DOLIPRANE-Refill-Compl-presc-DC"
* supportingInformation[+].reference = "MedicationDispense/Disp-DOLIPRANE-Refill-Substit"
* performer.actor.reference = "Practitioner/smart-Practitioner-7148xxxx"
* authorizingPrescription[0].reference = "MedicationRequest/InLine-presc-Paracetamol1"
* authorizingPrescription[+].reference = "MedicationRequest/InLine-presc-Paracetamol2"
* authorizingPrescription[+].reference = "MedicationRequest/InLine-presc-EFFERALGAN2"
* type = $v3-ActCode#RFP "Refill - Part"
* quantity = 14 '1'
* daysSupply = 2 'd' "jours"
* whenPrepared = "2021-07-16T10:10:00Z"
* whenHandedOver = "2021-07-16T10:24:00Z"