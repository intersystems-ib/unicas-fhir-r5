Class Spain.FHIR.DTL.vR4.vR5.Immunization Extends Ens.DataTransformDTL [ DependsOn = (HS.FHIR.DTL.vR4.Model.Resource.Immunization, Spain.FHIR.DTL.vR5.Model.Resource.Immunization) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.FHIR.DTL.vR4.Model.Resource.Immunization' targetClass='Spain.FHIR.DTL.vR5.Model.Resource.Immunization' create='new' language='objectscript' >
<assign value='source.text' property='target.text' action='set' />
<assign value='source.newResourceReference' property='target.newResourceReference' action='set' />
<assign value='source.id' property='target.id' action='set' />
<assign value='source.meta' property='target.meta' action='set' />
<if condition='source.primitiveExtension &apos;= ""' >
<true>
<assign value='source.primitiveExtension' property='target.primitiveExtension' action='set' />
</true>
</if>
<assign value='source.implicitRules' property='target.implicitRules' action='set' />
<assign value='source.language' property='target.language' action='set' />
<if condition='source.newResource &apos;= ""' >
<true>
<assign value='source.newResource' property='target.newResource' action='set' />
</true>
</if>
<if condition='target.contained &apos;= ""' >
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
<assign value='source.status' property='target.status' action='set' />
<assign value='source.statusReason' property='target.statusReason' action='set' />
<assign value='source.vaccineCode' property='target.vaccineCode' action='set' />
<assign value='source.patient' property='target.patient' action='set' />
<assign value='source.encounter' property='target.encounter' action='set' />
<assign value='source.occurrenceDateTime' property='target.occurrenceDateTime' action='set' />
<assign value='source.occurrenceString' property='target.occurrenceString' action='set' />
<assign value='source.primarySource' property='target.primarySource' action='set' />
<assign value='source.manufacturer' property='target.manufacturer' action='set' />
<assign value='source.location' property='target.location' action='set' />
<assign value='source.lotNumber' property='target.lotNumber' action='set' />
<assign value='source.expirationDate' property='target.expirationDate' action='set' />
<assign value='source.site' property='target.site' action='set' />
<assign value='source.route' property='target.route' action='set' />
<assign value='source.doseQuantity' property='target.doseQuantity' action='set' />
<if condition='source.performer &apos;= ""' >
<true>
<assign value='source.performer' property='target.performer' action='set' />
</true>
</if>
<if condition='source.note &apos;= ""' >
<true>
<assign value='source.note' property='target.note' action='set' />
</true>
</if>
<if condition='source.reasonCode &apos;= ""' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<assign value='source.reasonCode.(1)' property='tmp.concept' action='set' />
<if condition='source.reasonReference &apos;= ""' >
<true>
<assign value='source.reasonReference.(1)' property='tmp.reference' action='set' />
</true>
</if>
<assign value='tmp' property='target.reason' action='set' />
<assign value='source.isSubpotent' property='target.isSubpotent' action='set' />
<if condition='source.subpotentReason &apos;= ""' >
<true>
<assign value='source.subpotentReason' property='target.subpotentReason' action='set' />
</true>
</if>
<if condition='source.programEligibility &apos;= ""' >
<true>
<assign value='source.programEligibility' property='target.programEligibility' action='set' />
</true>
</if>
<assign value='source.fundingSource' property='target.fundingSource' action='set' />
<if condition='source.reaction &apos;= ""' >
<true>
<assign value='source.reaction' property='target.reaction' action='set' />
</true>
</if>
<if condition='source.protocolApplied &apos;= ""' >
<true>
<assign value='source.protocolApplied' property='target.protocolApplied' action='set' />
</true>
</if>
</true>
</if>
</transform>
}

}
