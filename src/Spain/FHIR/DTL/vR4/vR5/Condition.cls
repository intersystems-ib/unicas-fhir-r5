Class Spain.FHIR.DTL.vR4.vR5.Condition Extends Ens.DataTransformDTL [ DependsOn = (HS.FHIR.DTL.vR4.Model.Resource.Condition, Spain.FHIR.DTL.vR5.Model.Resource.Condition) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.FHIR.DTL.vR4.Model.Resource.Condition' targetClass='Spain.FHIR.DTL.vR5.Model.Resource.Condition' create='new' language='objectscript' >
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
<assign value='source.clinicalStatus' property='target.clinicalStatus' action='set' />
<assign value='source.verificationStatus' property='target.verificationStatus' action='set' />
<if condition='source.category &apos;= ""' >
<true>
<assign value='source.category' property='target.category' action='set' />
</true>
</if>
<assign value='source.severity' property='target.severity' action='set' />
<assign value='source.code' property='target.code' action='set' />
<if condition='source.bodySite &apos;= ""' >
<true>
<assign value='source.bodySite' property='target.bodySite' action='set' />
</true>
</if>
<assign value='source.subject' property='target.subject' action='set' />
<assign value='source.encounter' property='target.encounter' action='set' />
<assign value='source.onsetAge' property='target.onsetAge' action='set' />
<assign value='source.onsetDateTime' property='target.onsetDateTime' action='set' />
<assign value='source.onsetPeriod' property='target.onsetPeriod' action='set' />
<assign value='source.onsetRange' property='target.onsetRange' action='set' />
<assign value='source.onsetString' property='target.onsetString' action='set' />
<assign value='source.abatementAge' property='target.abatementAge' action='set' />
<assign value='source.abatementDateTime' property='target.abatementDateTime' action='set' />
<assign value='source.abatementPeriod' property='target.abatementPeriod' action='set' />
<assign value='source.abatementRange' property='target.abatementRange' action='set' />
<assign value='source.abatementString' property='target.abatementString' action='set' />
<assign value='source.recordedDate' property='target.recordedDate' action='set' />
<if condition='source.recorder &apos;= ""' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Resource.Condition).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept).%New()' property='tmp1' action='set' />
<assign value='##class(HS.FHIR.DTL.vR4.Model.Datatype.Coding).%New()' property='tmp2' action='set' />
<assign value='"http://terminology.hl7.org/CodeSystem/provenance-participant-type"' property='tmp2.system' action='set' />
<assign value='"enterer"' property='tmp2.code' action='set' />
<assign value='"Enterer"' property='tmp2.display' action='set' />
<assign value='tmp2' property='tmp1.coding' action='append' />
<assign value='"Entered"' property='tmp1.text' action='set' />
<assign value='tmp1' property='tmp.function' action='set' />
<assign value='source.recorder.reference' property='tmp.actor' action='set' />
</true>
</if>
<if condition='source.asserter&apos;= ""' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Resource.Condition).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept).%New()' property='tmp1' action='set' />
<assign value='##class(HS.FHIR.DTL.vR4.Model.Datatype.Coding).%New()' property='tmp2' action='set' />
<assign value='"http://terminology.hl7.org/CodeSystem/provenance-participant-type"' property='tmp2.system' action='set' />
<assign value='"verifier"' property='tmp2.code' action='set' />
<assign value='"Verifier"' property='tmp2.display' action='set' />
<assign value='tmp2' property='tmp1.coding' action='append' />
<assign value='"Verifier"' property='tmp1.text' action='set' />
<assign value='tmp1' property='tmp.function' action='set' />
<assign value='source.asserter.reference' property='tmp.actor' action='set' />
</true>
</if>
<if condition='source.stage &apos;= ""' >
<true>
<assign value='source.stage' property='target.stage' action='set' />
</true>
</if>
<if condition='source.evidence &apos;= ""' >
<true>
<assign value='source.evidence' property='target.evidence' action='set' />
</true>
</if>
<if condition='source.note &apos;= ""' >
<true>
<assign value='source.note' property='target.note' action='set' />
</true>
</if>
</transform>
}

}
