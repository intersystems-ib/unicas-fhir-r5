Class Spain.FHIR.DTL.vR4.vR5.Appointment Extends Ens.DataTransformDTL [ DependsOn = (HS.FHIR.DTL.vR4.Model.Resource.Appointment, Spain.FHIR.DTL.vR5.Model.Resource.Appointment) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.FHIR.DTL.vR4.Model.Resource.Appointment' targetClass='Spain.FHIR.DTL.vR5.Model.Resource.Appointment' create='new' language='objectscript' >
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
<assign value='source.status' property='target.status' action='set' />
<assign value='source.cancelationReason' property='target.cancellationReason' action='set' />
<if condition='($ISOBJECT(source.serviceCategory) &amp;&amp; (source.serviceCategory.Count()&gt;0))' >
<true>
<assign value='source.serviceCategory' property='target.serviceCategory' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.serviceType) &amp;&amp; (source.serviceType.Count()&gt;0))' >
<true>
<assign value='source.serviceType' property='target.serviceType' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.specialty) &amp;&amp; (source.specialty.Count()&gt;0))' >
<true>
<assign value='source.specialty' property='target.specialty' action='set' />
</true>
</if>
<assign value='source.appointmentType' property='target.appointmentType' action='set' />
<foreach property='source.reasonCode()' key='k1' >
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<assign value='source.reasonCode.(k1)' property='tmp.concept' action='set' />
<assign value='tmp' property='target.reason.(target.reason.Count() + 1)' action='set' />
</foreach>
<foreach property='source.reasonReference()' key='k1' >
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<assign value='source.reasonCode.(k1)' property='tmp.reference' action='set' />
<assign value='tmp' property='target.reason.(target.reason.Count() + 1)' action='set' />
</foreach>
</transform>
}

}
