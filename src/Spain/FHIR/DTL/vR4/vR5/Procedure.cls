Class Spain.FHIR.DTL.vR4.vR5.Procedure Extends Ens.DataTransformDTL [ DependsOn = (HS.FHIR.DTL.vR4.Model.Resource.Procedure, Spain.FHIR.DTL.vR5.Model.Resource.Procedure) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.FHIR.DTL.vR4.Model.Resource.Procedure' targetClass='Spain.FHIR.DTL.vR5.Model.Resource.Procedure' create='new' language='objectscript' >
<assign value='source.text' property='target.text' action='set' />
<assign value='source.newResourceReference' property='target.newResourceReference' action='set' />
<if condition='($ISOBJECT(source.primitiveExtension) &amp;&amp; (source.primitiveExtension.Count()&gt;0))' >
<true>
<assign value='source.primitiveExtension' property='target.primitiveExtension' action='set' />
</true>
</if>
<assign value='source.id' property='target.id' action='set' />
<assign value='source.meta' property='target.meta' action='set' />
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
<if condition='($ISOBJECT(source.instantiatesCanonical) &amp;&amp; (source.instantiatesCanonical.Count()&gt;0))' >
<true>
<assign value='source.instantiatesCanonical' property='target.instantiatesCanonical' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.instantiatesUri) &amp;&amp; (source.instantiatesUri.Count()&gt;0))' >
<true>
<assign value='source.instantiatesUri' property='target.instantiatesUri' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.basedOn) &amp;&amp; (source.basedOn.Count()&gt;0))' >
<true>
<assign value='source.basedOn' property='target.basedOn' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.partOf) &amp;&amp; (source.partOf.Count()&gt;0))' >
<true>
<assign value='source.partOf' property='target.partOf' action='set' />
</true>
</if>
<assign value='source.status' property='target.status' action='set' />
<assign value='source.statusReason' property='target.statusReason' action='set' />
<if condition='$ISOBJECT(source.category)' >
<true>
<assign value='source.category' property='target.category.(1)' action='set' />
</true>
</if>
<assign value='source.code' property='target.code' action='set' />
<assign value='source.subject' property='target.subject' action='set' />
<assign value='source.encounter' property='target.encounter' action='set' />
<assign value='source.performedAge' property='target.occurrenceAge' action='set' />
<assign value='source.performedDateTime' property='target.occurrenceDateTime' action='set' />
<assign value='source.performedPeriod' property='target.occurrencePeriod' action='set' />
<assign value='source.performedRange' property='target.occurrenceRange' action='set' />
<assign value='source.performedString' property='target.occurrenceString' action='set' />
<assign value='source.recorder' property='target.recorder' action='set' />
<assign value='source.asserter' property='target.reportedReference' action='set' />
<if condition='($ISOBJECT(source.performer) &amp;&amp; (source.performer.Count()&gt;0))' >
<true>
<assign value='source.performer' property='target.performer' action='set' />
</true>
</if>
<assign value='source.location' property='target.location' action='set' />
<foreach property='source.reasonCode()' key='k1' >
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<assign value='source.reasonCode.(k1)' property='tmp.concept' action='set' />
<if condition='$ISOBJECT(source.reasonReference.(k1))' >
<true>
<assign value='source.reasonReference.(k1)' property='tmp.reference' action='set' />
</true>
</if>
<assign value='tmp' property='target.reason.(k1)' action='set' />
</foreach>
<if condition='($ISOBJECT(source.bodySite) &amp;&amp; (source.bodySite.Count()&gt;0))' >
<true>
<assign value='source.bodySite' property='target.bodySite' action='set' />
</true>
</if>
<assign value='source.outcome' property='target.outcome' action='set' />
<if condition='($ISOBJECT(source.report) &amp;&amp; (source.report.Count()&gt;0))' >
<true>
<assign value='source.report' property='target.report' action='set' />
</true>
</if>
<foreach property='source.complication()' key='k1' >
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<assign value='source.complication.(k1)' property='tmp.concept' action='set' />
<if condition='$ISOBJECT(source.complicationDetail.(k1))' >
<true>
<assign value='source.complicationDetail.(k1)' property='tmp.reference' action='set' />
</true>
</if>
<assign value='tmp' property='target.complication.(k1)' action='set' />
</foreach>
<if condition='($ISOBJECT(source.followUp) &amp;&amp; (source.followUp.Count()&gt;0))' >
<true>
<assign value='source.followUp' property='target.followUp' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.note) &amp;&amp; (source.note.Count()&gt;0))' >
<true>
<assign value='source.note' property='target.note' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.focalDevice) &amp;&amp; (source.focalDevice.Count()&gt;0))' >
<true>
<assign value='source.focalDevice' property='target.focalDevice' action='set' />
</true>
</if>
<foreach property='source.usedCode()' key='k1' >
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<assign value='source.usedCode.(k1)' property='tmp.concept' action='set' />
<if condition='$ISOBJECT(source.usedReference.(k1))' >
<true>
<assign value='source.usedReference.(k1)' property='tmp.reference' action='set' />
</true>
</if>
<assign value='tmp' property='target.used.(k1)' action='set' />
</foreach>
</transform>
}

}
