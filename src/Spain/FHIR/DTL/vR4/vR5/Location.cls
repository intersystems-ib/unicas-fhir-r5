Class Spain.FHIR.DTL.vR4.vR5.Location Extends Ens.DataTransformDTL [ DependsOn = (HS.FHIR.DTL.vR4.Model.Resource.Location, Spain.FHIR.DTL.vR5.Model.Resource.Location) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.FHIR.DTL.vR4.Model.Resource.Location' targetClass='Spain.FHIR.DTL.vR5.Model.Resource.Location' create='new' language='objectscript' >
<assign value='source.text' property='target.text' action='set' />
<assign value='source.newResourceReference' property='target.newResourceReference' action='set' />
<if condition='($ISOBJECT(source.primitiveExtension) &amp;&amp; (source.primitiveExtension.Count() &gt; 0))' >
<true>
<assign value='source.primitiveExtension' property='target.primitiveExtension' action='set' />
</true>
</if>
<assign value='source.id' property='target.id' action='set' />
<assign value='source.meta' property='target.meta' action='set' />
<assign value='source.implicitRules' property='target.implicitRules' action='set' />
<assign value='source.language' property='target.language' action='set' />
<if condition='($ISOBJECT(source.newResource) &amp;&amp; (source.newResource.Count() &gt; 0))' >
<true>
<assign value='source.newResource' property='target.newResource' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.contained) &amp;&amp; (source.contained.Count() &gt; 0))' >
<true>
<assign value='source.contained' property='target.contained' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.extension) &amp;&amp; (source.extension.Count() &gt; 0))' >
<true>
<assign value='source.extension' property='target.extension' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.modifierExtension) &amp;&amp; (source.modifierExtension.Count() &gt; 0))' >
<true>
<assign value='source.modifierExtension' property='target.modifierExtension' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.identifier) &amp;&amp; (source.identifier.Count() &gt; 0))' >
<true>
<assign value='source.identifier' property='target.identifier' action='set' />
</true>
</if>
<assign value='source.status' property='target.status' action='set' />
<assign value='source.operationalStatus' property='target.operationalStatus' action='set' />
<assign value='source.name' property='target.name' action='set' />
<if condition='($ISOBJECT(source.alias) &amp;&amp; (source.alias.Count() &gt; 0))' >
<true>
<assign value='source.alias' property='target.alias' action='set' />
</true>
</if>
<assign value='source.description' property='target.description' action='set' />
<assign value='source.mode' property='target.mode' action='set' />
<if condition='($ISOBJECT(source.type) &amp;&amp; (source.type.Count() &gt; 0))' >
<true>
<assign value='source.type' property='target.type' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.telecom) &amp;&amp; (source.telecom.Count() &gt; 0))' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.ExtendedContactDetail).%New()' property='tmp' action='set' />
<foreach property='source.telecom()' key='k1' >
<assign value='source.telecom.(k1)' property='tmp.telecom.(k1)' action='set' />
</foreach>
<assign value='tmp' property='target.contact.(1)' action='set' />
</true>
</if>
<assign value='source.address' property='target.address' action='set' />
<assign value='source.physicalType' property='target.form' action='set' />
<assign value='source.position' property='target.position' action='set' />
<assign value='source.managingOrganization' property='target.managingOrganization' action='set' />
<assign value='source.partOf' property='target.partOf' action='set' />
<assign value='source.hoursOfOperation.(1)' property='target.hoursOfOperation.(1)' action='set' />
<assign value='source.endpoint.(1)' property='target.endpoint.(1)' action='set' />
</transform>
}

}
