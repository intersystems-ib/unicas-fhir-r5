Class Spain.FHIR.DTL.vR4.vR5.DocumentReference Extends Ens.DataTransformDTL [ DependsOn = (HS.FHIR.DTL.vR4.Model.Resource.DocumentReference, Spain.FHIR.DTL.vR5.Model.Resource.DocumentReference) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.FHIR.DTL.vR4.Model.Resource.DocumentReference' targetClass='Spain.FHIR.DTL.vR5.Model.Resource.DocumentReference' create='new' language='objectscript' >
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
<if condition='$ISOBJECT(source.masterIdentifier)' >
<true>
<assign value='target.identifier.Count()' property='i' action='set' />
<assign value='source.masterIdentifier' property='target.identifier.(i+1)' action='set' />
</true>
</if>
<assign value='source.status' property='target.status' action='set' />
<assign value='source.docStatus' property='target.docStatus' action='set' />
<assign value='source.type' property='target.type' action='set' />
<if condition='($ISOBJECT(source.category) &amp;&amp; (source.category.Count()&gt;0))' >
<true>
<assign value='source.category' property='target.category' action='set' />
</true>
</if>
<assign value='source.subject' property='target.subject' action='set' />
<assign value='source.date' property='target.date' action='set' />
<if condition='($ISOBJECT(source.author) &amp;&amp; (source.author.Count()&gt;0))' >
<true>
<assign value='source.author' property='target.author' action='set' />
</true>
</if>
<if condition='$ISOBJECT(source.authenticator)' >
<true>
<assign value='target.attester.Count()' property='i' action='set' />
<assign value='source.authenticator' property='target.attester.(i+1)' action='set' />
</true>
</if>
<assign value='source.custodian' property='target.custodian' action='set' />
<if condition='($ISOBJECT(source.relatesTo) &amp;&amp; (source.relatesTo.Count()&gt;0))' >
<true>
<assign value='source.relatesTo' property='target.relatesTo' action='set' />
</true>
</if>
<assign value='source.description' property='target.description' action='set' />
<if condition='($ISOBJECT(source.securityLabel) &amp;&amp; (source.securityLabel.Count()&gt;0))' >
<true>
<assign value='source.securityLabel' property='target.securityLabel' action='set' />
</true>
</if>
<foreach property='source.content()' key='k1' >
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Element.DocumentReference.content).%New()' property='tmp' action='set' />
<assign value='source.content.(k1).attachment' property='tmp.attachment' action='set' />
<if condition='$ISOBJECT(source.content.(k1).format)' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Element.DocumentReference.content.profile).%New()' property='tmp1' action='set' />
<assign value='source.content.(k1).format' property='tmp1.valueCoding' action='set' />
<assign value='tmp.profile.Count()' property='i' action='set' />
<assign value='tmp1' property='tmp.profile.(i+1)' action='set' />
</true>
</if>
<assign value='tmp' property='target.content.(k1)' action='set' />
</foreach>
<if condition='$ISOBJECT(source.context)' >
<true>
<if condition='($ISOBJECT(source.context.encounter) &amp;&amp; (source.context.encounter.Count()&gt;0))' >
<true>
<assign value='source.context.encounter' property='target.context' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.context.event) &amp;&amp; (source.context.event.Count()&gt;0))' >
<true>
<assign value='source.context.event' property='target.event' action='set' />
</true>
</if>
<assign value='source.context.period' property='target.period' action='set' />
<assign value='source.context.facilityType' property='target.facilityType' action='set' />
<assign value='source.context.practiceSetting' property='target.practiceSetting' action='set' />
</true>
<false>
<if condition='($ISOBJECT(source.context.related) &amp;&amp; (source.context.related.Count()&gt;0))' >
<true>
<assign value='source.context.related' property='target.basedOn' action='set' />
</true>
</if>
</false>
</if>
</transform>
}

}
