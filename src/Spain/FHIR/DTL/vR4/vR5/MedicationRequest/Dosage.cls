Class Spain.FHIR.DTL.vR4.vR5.MedicationRequest.Dosage Extends Ens.DataTransformDTL [ DependsOn = (HS.FHIR.DTL.vR4.Model.Element.Dosage, Spain.FHIR.DTL.vR5.Model.Element.Dosage) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.FHIR.DTL.vR4.Model.Element.Dosage' targetClass='Spain.FHIR.DTL.vR5.Model.Element.Dosage' create='new' language='objectscript' >
<if condition='($ISOBJECT(source.newResource) &amp;&amp; (source.newResource.Count()&gt;0))' >
<true>
<assign value='source.newResource' property='target.newResource' action='set' />
</true>
</if>
<assign value='source.id' property='target.id' action='set' />
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
<assign value='source.newResourceReference' property='target.newResourceReference' action='set' />
<if condition='($ISOBJECT(source.primitiveExtension) &amp;&amp; (source.primitiveExtension.Count()&gt;0))' >
<true>
<assign value='source.primitiveExtension' property='target.primitiveExtension' action='set' />
</true>
</if>
<assign value='source.sequence' property='target.sequence' action='set' />
<assign value='source.text' property='target.text' action='set' />
<if condition='($ISOBJECT(source.additionalInstruction) &amp;&amp; (source.additionalInstruction.Count()&gt;0))' >
<true>
<assign value='source.additionalInstruction' property='target.additionalInstruction' action='set' />
</true>
</if>
<assign value='source.patientInstruction' property='target.patientInstruction' action='set' />
<assign value='source.timing' property='target.timing' action='set' />
<assign value='source.asNeededBoolean' property='target.asNeeded' action='set' />
<if condition='$ISOBJECT(source.asNeededCodeableConcept)' >
<true>
<assign value='source.asNeededCodeableConcept' property='target.asNeededFor.(1)' action='set' />
</true>
</if>
<assign value='source.site' property='target.site' action='set' />
<assign value='source.route' property='target.route' action='set' />
<assign value='source.method' property='target.method' action='set' />
<if condition='($ISOBJECT(source.doseAndRate) &amp;&amp; (source.doseAndRate.Count()&gt;0))' >
<true>
<assign value='source.doseAndRate.(1)' property='target.doseAndRate.(1)' action='set' />
</true>
</if>
<if condition='$ISOBJECT(source.maxDosePerPeriod)' >
<true>
<assign value='source.maxDosePerPeriod' property='target.maxDosePerPeriod.(1)' action='set' />
</true>
</if>
<assign value='source.maxDosePerAdministration' property='target.maxDosePerAdministration' action='set' />
<assign value='source.maxDosePerLifetime' property='target.maxDosePerLifetime' action='set' />
</transform>
}

}
