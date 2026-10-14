<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile RequestGroup
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:RequestGroup</sch:title>
    <sch:rule context="f:RequestGroup">
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:authoredOn) &gt;= 1">authoredOn: minimum cardinality of 'authoredOn' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:RequestGroup/f:meta</sch:title>
    <sch:rule context="f:RequestGroup/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
      <sch:assert test="count(f:source) &lt;= 1">source: maximum cardinality of 'source' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:RequestGroup/f:action/f:action</sch:title>
    <sch:rule context="f:RequestGroup/f:action/f:action">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:prefix) &lt;= 1">prefix: maximum cardinality of 'prefix' is 1</sch:assert>
      <sch:assert test="count(f:title) &lt;= 1">title: maximum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:description) &lt;= 1">description: maximum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:textEquivalent) &lt;= 1">textEquivalent: maximum cardinality of 'textEquivalent' is 1</sch:assert>
      <sch:assert test="count(f:priority) &lt;= 1">priority: maximum cardinality of 'priority' is 1</sch:assert>
      <sch:assert test="count(f:timing[x]) &lt;= 1">timing[x]: maximum cardinality of 'timing[x]' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:groupingBehavior) &lt;= 1">groupingBehavior: maximum cardinality of 'groupingBehavior' is 1</sch:assert>
      <sch:assert test="count(f:selectionBehavior) &lt;= 1">selectionBehavior: maximum cardinality of 'selectionBehavior' is 1</sch:assert>
      <sch:assert test="count(f:requiredBehavior) &lt;= 1">requiredBehavior: maximum cardinality of 'requiredBehavior' is 1</sch:assert>
      <sch:assert test="count(f:precheckBehavior) &lt;= 1">precheckBehavior: maximum cardinality of 'precheckBehavior' is 1</sch:assert>
      <sch:assert test="count(f:cardinalityBehavior) &lt;= 1">cardinalityBehavior: maximum cardinality of 'cardinalityBehavior' is 1</sch:assert>
      <sch:assert test="count(f:resource) &lt;= 1">resource: maximum cardinality of 'resource' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:RequestGroup/f:action/f:action/f:condition</sch:title>
    <sch:rule context="f:RequestGroup/f:action/f:action/f:condition">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:kind) &gt;= 1">kind: minimum cardinality of 'kind' is 1</sch:assert>
      <sch:assert test="count(f:kind) &lt;= 1">kind: maximum cardinality of 'kind' is 1</sch:assert>
      <sch:assert test="count(f:expression) &lt;= 1">expression: maximum cardinality of 'expression' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:RequestGroup/f:action/f:action/f:relatedAction</sch:title>
    <sch:rule context="f:RequestGroup/f:action/f:action/f:relatedAction">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:actionId) &gt;= 1">actionId: minimum cardinality of 'actionId' is 1</sch:assert>
      <sch:assert test="count(f:actionId) &lt;= 1">actionId: maximum cardinality of 'actionId' is 1</sch:assert>
      <sch:assert test="count(f:relationship) &gt;= 1">relationship: minimum cardinality of 'relationship' is 1</sch:assert>
      <sch:assert test="count(f:relationship) &lt;= 1">relationship: maximum cardinality of 'relationship' is 1</sch:assert>
      <sch:assert test="count(f:offset[x]) &lt;= 1">offset[x]: maximum cardinality of 'offset[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
