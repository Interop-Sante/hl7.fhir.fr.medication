<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile FRMedicationRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MedicationRequest</sch:title>
    <sch:rule context="f:MedicationRequest">
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-treatment-intent']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-treatment-intent': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:supportingInformation</sch:title>
    <sch:rule context="f:MedicationRequest/f:supportingInformation">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-uf-role']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-uf-role': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:note</sch:title>
    <sch:rule context="f:MedicationRequest/f:note">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-medicationrequest-note-scope': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:author[x]) &lt;= 1">author[x]: maximum cardinality of 'author[x]' is 1</sch:assert>
      <sch:assert test="count(f:time) &lt;= 1">time: maximum cardinality of 'time' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dosageInstruction/f:timing/f:repeat</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:timing/f:repeat">
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-additional-when-values']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-additional-when-values': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dosageInstruction/f:doseAndRate</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:doseAndRate">
      <sch:assert test="count(f:extension[@url = 'https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-basis-of-dose-component']) &lt;= 1">extension with URL = 'https://hl7.fr/ig/fhir/medication/StructureDefinition/fr-basis-of-dose-component': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dispenseRequest</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest">
      <sch:assert test="count(f:initialFill) &lt;= 0">initialFill: maximum cardinality of 'initialFill' is 0</sch:assert>
      <sch:assert test="count(f:dispenseInterval) &lt;= 0">dispenseInterval: maximum cardinality of 'dispenseInterval' is 0</sch:assert>
      <sch:assert test="count(f:quantity) &lt;= 0">quantity: maximum cardinality of 'quantity' is 0</sch:assert>
      <sch:assert test="count(f:performer) &lt;= 0">performer: maximum cardinality of 'performer' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dispenseRequest/f:validityPeriod</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:validityPeriod">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dispenseRequest/f:expectedSupplyDuration</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:expectedSupplyDuration">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:comparator) &lt;= 0">comparator: maximum cardinality of 'comparator' is 0</sch:assert>
      <sch:assert test="count(f:unit) &lt;= 1">unit: maximum cardinality of 'unit' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
