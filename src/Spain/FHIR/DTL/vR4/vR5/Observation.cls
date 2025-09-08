Class Spain.FHIR.DTL.vR4.vR5.Observation Extends Ens.DataTransformDTL [ DependsOn = (HS.FHIR.DTL.vR4.Model.Resource.Observation, Spain.FHIR.DTL.vR5.Model.Resource.Observation) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.FHIR.DTL.vR4.Model.Resource.Observation' targetClass='Spain.FHIR.DTL.vR5.Model.Resource.Observation' create='new' language='objectscript' >
<assign value='source.text' property='target.text' action='set' />
<assign value='source.newResourceReference' property='target.newResourceReference' action='set' />
<if condition='source.primitiveExtension &apos;= ""' >
<true>
<assign value='source.primitiveExtension' property='target.primitiveExtension' action='set' />
</true>
</if>
<assign value='source.id' property='target.id' action='set' />
<assign value='source.meta' property='target.meta' action='set' />
<assign value='source.implicitRules' property='target.implicitRules' action='set' />
<assign value='source.language' property='target.language' action='set' />
<if condition='source.newResource &apos;= ""' >
<true>
<assign value='source.newResource' property='target.newResource' action='set' />
</true>
</if>
<if condition='source.contained &apos;= ""' >
<true>
<assign value='source.contained' property='target.contained' action='set' />
</true>
</if>
<if condition='source.extension &apos;= ""' >
<true>
<assign value='source.extension' property='target.extension' action='set' />
</true>
</if>
<if condition='source.modifierExtension &apos;= ""' >
<true>
<assign value='source.modifierExtension' property='target.modifierExtension' action='set' />
</true>
</if>
<if condition='source.identifier &apos;= ""' >
<true>
<assign value='source.identifier' property='target.identifier' action='set' />
</true>
</if>
<if condition='source.basedOn &apos;= ""' >
<true>
<assign value='source.basedOn' property='target.basedOn' action='set' />
</true>
</if>
<if condition='source.partOf &apos;= ""' >
<true>
<assign value='source.partOf' property='target.partOf' action='set' />
</true>
</if>
<assign value='source.status' property='target.status' action='set' />
<if condition='source.category &apos;= ""' >
<true>
<assign value='source.category' property='target.category' action='set' />
</true>
</if>
<assign value='source.code' property='target.code' action='set' />
<assign value='source.subject' property='target.subject' action='set' />
<if condition='source.focus &apos;= ""' >
<true>
<assign value='source.focus' property='target.focus' action='set' />
</true>
</if>
<assign value='source.encounter' property='target.encounter' action='set' />
<assign value='source.effectiveDateTime' property='target.effectiveDateTime' action='set' />
<assign value='source.effectiveInstant' property='target.effectiveInstant' action='set' />
<assign value='source.effectivePeriod' property='target.effectivePeriod' action='set' />
<assign value='source.effectiveTiming' property='target.effectiveTiming' action='set' />
<assign value='source.issued' property='target.issued' action='set' />
<if condition='source.performer &apos;= ""' >
<true>
<assign value='source.performer' property='target.performer' action='set' />
</true>
</if>
<assign value='source.valueBoolean' property='target.valueBoolean' action='set' />
<assign value='source.valueCodeableConcept' property='target.valueCodeableConcept' action='set' />
<assign value='source.valueDateTime' property='target.valueDateTime' action='set' />
<assign value='source.valueInteger' property='target.valueInteger' action='set' />
<assign value='source.valuePeriod' property='target.valuePeriod' action='set' />
<assign value='source.valueQuantity' property='target.valueQuantity' action='set' />
<assign value='source.valueRange' property='target.valueRange' action='set' />
<assign value='source.valueRatio' property='target.valueRatio' action='set' />
<assign value='source.valueSampledData' property='target.valueSampledData' action='set' />
<assign value='source.valueString' property='target.valueString' action='set' />
<assign value='source.valueTime' property='target.valueTime' action='set' />
<assign value='source.dataAbsentReason' property='target.dataAbsentReason' action='set' />
<if condition='source.interpretation &apos;= ""' >
<true>
<assign value='source.interpretation' property='target.interpretation' action='set' />
</true>
</if>
<if condition='source.note &apos;= ""' >
<true>
<assign value='source.note' property='target.note' action='set' />
</true>
</if>
<assign value='source.bodySite' property='target.bodySite' action='set' />
<assign value='source.method' property='target.method' action='set' />
<assign value='source.specimen' property='target.specimen' action='set' />
<assign value='source.device' property='target.device' action='set' />
<if condition='source.referenceRange &apos;= ""' >
<true>
<assign value='source.referenceRange' property='target.referenceRange' action='set' />
</true>
</if>
<if condition='source.hasMember &apos;= ""' >
<true>
<assign value='source.hasMember' property='target.hasMember' action='set' />
</true>
</if>
<if condition='source.derivedFrom &apos;= ""' >
<true>
<assign value='source.derivedFrom' property='target.derivedFrom' action='set' />
</true>
</if>
<if condition='source.component &apos;= ""' >
<true>
<assign value='source.component' property='target.component' action='set' />
</true>
</if>
</transform>
}

}
