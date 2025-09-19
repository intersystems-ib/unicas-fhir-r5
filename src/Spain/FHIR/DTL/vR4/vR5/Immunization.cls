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
<if condition='($ISOBJECT(source.primitiveExtension) &amp;&amp; (source.primitiveExtension.Count()&gt;0))' >
<true>
<assign value='source.primitiveExtension' property='target.primitiveExtension' action='set' />
</true>
</if>
<assign value='source.implicitRules' property='target.implicitRules' action='set' />
<assign value='source.language' property='target.language' action='set' />
<if condition='($ISOBJECT(source.newResource) &amp;&amp; (source.newResource.Count()&gt;0))' >
<true>
<assign value='source.newResource' property='target.newResource' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.contained) &amp;&amp; (source.contained.Count()&gt;0))' >
<true>
<assign value='source.contained' property='target.contained' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.extension) &amp;&amp; (source.extension.Count()&gt;0))' >
<true>
<assign value='source.extension' property='target.extension' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.modifierExtension) &amp;&amp; (source.modifierExtension.Count()&gt;0))' >
<true>
<assign value='source.modifierExtension' property='target.modifierExtension' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.identifier) &amp;&amp; (source.identifier.Count()&gt;0))' >
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
<if condition='($ISOBJECT(source.performer) &amp;&amp; (source.performer.Count()&gt;0))' >
<true>
<assign value='source.performer' property='target.performer' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.note) &amp;&amp; (source.note.Count()&gt;0))' >
<true>
<assign value='source.note' property='target.note' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.reasonCode) &amp;&amp; (source.reasonCode.Count()&gt;0)) || ($ISOBJECT(source.reasonReference) &amp;&amp; (source.reasonReference.Count()&gt;0))' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<if condition='($ISOBJECT(source.reasonCode) &amp;&amp; (source.reasonCode.Count()&gt;0))' >
<true>
<assign value='source.reasonCode.(1)' property='tmp.concept' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.reasonReference) &amp;&amp; (source.reasonReference.Count()&gt;0))' >
<true>
<assign value='source.reasonReference.(1)' property='tmp.reference' action='set' />
</true>
</if>
<assign value='tmp' property='target.reason' action='set' />
</true>
</if>
<assign value='source.isSubpotent' property='target.isSubpotent' action='set' />
<if condition='($ISOBJECT(source.subpotentReason) &amp;&amp; (source.subpotentReason.Count()&gt;0))' >
<true>
<assign value='source.subpotentReason' property='target.subpotentReason' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.programEligibility) &amp;&amp; (source.programEligibility.Count()&gt;0))' >
<true>
<assign value='source.programEligibility' property='target.programEligibility' action='set' />
</true>
</if>
<assign value='source.fundingSource' property='target.fundingSource' action='set' />
<if condition='($ISOBJECT(source.reaction) &amp;&amp; (source.reaction.Count()&gt;0))' >
<true>
<assign value='source.reaction' property='target.reaction' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.protocolApplied) &amp;&amp; (source.protocolApplied.Count()&gt;0))' >
<true>
<assign value='source.protocolApplied' property='target.protocolApplied' action='set' />
</true>
</if>
</transform>
}

}
