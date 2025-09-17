Class Spain.FHIR.DTL.vR4.vR5.Encounter Extends Ens.DataTransformDTL [ DependsOn = (HS.FHIR.DTL.vR4.Model.Resource.Encounter, Spain.FHIR.DTL.vR5.Model.Resource.Encounter) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.FHIR.DTL.vR4.Model.Resource.Encounter' targetClass='Spain.FHIR.DTL.vR5.Model.Resource.Encounter' create='new' language='objectscript' >
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
<if condition='$ISOBJECT(source.class)' >
<true>
<assign value='##class(HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept).%New()' property='tmp' action='set' />
<assign value='source.class' property='tmp.coding.(1)' action='set' />
<assign value='tmp' property='target.class.(1)' action='set' />
</true>
</if>
<foreach property='source.classHistory()' key='k1' >
<assign value='target.class.Count() + 1' property='i' action='set' />
<assign value='##class(HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept).%New()' property='tmp' action='set' />
<assign value='source.classHistory.(k1).class' property='tmp.coding.(1)' action='set' />
<assign value='tmp' property='target.class.(i).coding.(1)' action='set' />
</foreach>
<if condition='($ISOBJECT(source.type) &amp;&amp; (source.type.Count()&gt;0))' >
<true>
<assign value='source.type.(1)' property='target.type.(1)' action='set' />
</true>
</if>
<assign value='source.serviceType' property='target.serviceType' action='set' />
<assign value='source.priority' property='target.priority' action='set' />
<assign value='source.subject' property='target.subject' action='set' />
<if condition='($ISOBJECT(source.episodeOfCare) &amp;&amp; (source.episodeOfCare.Count()&gt;0))' >
<true>
<assign value='source.episodeOfCare' property='target.episodeOfCare' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.basedOn) &amp;&amp; (source.basedOn.Count()&gt;0))' >
<true>
<assign value='source.basedOn' property='target.basedOn' action='set' />
</true>
</if>
<foreach property='source.participant()' key='k1' >
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Element.Encounter.paticipant).%New()' property='tmp' action='set' />
<if condition='($ISOBJECT(source.participant.(k1).newResource) &amp;&amp; (source.participant.(k1).newResource.Count()&gt;0))' >
<true>
<assign value='source.participant.(k1).newResource' property='tmp.newResource' action='set' />
</true>
</if>
<assign value='source.participant.(k1).id' property='tmp.id' action='set' />
<if condition='($ISOBJECT(source.participant.(k1).extension) &amp;&amp; (source.participant.(k1).extension.Count()&gt;0))' >
<true>
<assign value='source.participant.(k1).extension' property='tmp.extension' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.participant.(k1).modifierExtension) &amp;&amp; (source.participant.(k1).modifierExtension.Count()&gt;0))' >
<true>
<assign value='source.participant.(k1).modifierExtension' property='tmp.modifierExtension' action='set' />
</true>
</if>
<assign value='source.participant.(k1).newResourceReference' property='tmp.newResourceReference' action='set' />
<if condition='($ISOBJECT(source.participant.(k1).primitiveExtension) &amp;&amp; (source.participant.(k1).primitiveExtension.Count()&gt;0))' >
<true>
<assign value='source.participant.(k1).primitiveExtension' property='tmp.primitiveExtension' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.participant.(k1).type) &amp;&amp; (source.participant.(k1).type.Count()&gt;0))' >
<true>
<assign value='source.participant.(k1).type' property='tmp.type' action='set' />
</true>
</if>
<assign value='source.participant.(k1).period' property='tmp.period' action='set' />
<assign value='source.participant.(k1).individual' property='tmp.actor' action='set' />
<assign value='tmp' property='target.participant.(k1)' action='set' />
</foreach>
<if condition='($ISOBJECT(source.appointment) &amp;&amp; (source.appointment.Count()&gt;0))' >
<true>
<assign value='source.appointment' property='target.appointment' action='set' />
</true>
</if>
<assign value='source.period' property='target.actualPeriod' action='set' />
<assign value='source.length' property='target.length' action='set' />
<foreach property='source.reasonCode()' key='k1' >
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Element.Encounter.reason).%New()' property='tmp' action='set' />
<assign value='source.reasonCode.(k1)' property='tmp.use' action='set' key='k1' />
<if condition='$ISOBJECT(source.reasonReference) &amp;&amp; $ISOBJECT(source.reasonReference.(k1) &apos;= "")' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp1' action='set' />
<assign value='source.reasonReference.(k1)' property='tmp1.reference' action='set' />
<assign value='tmp1' property='tmp.value' action='set' />
</true>
</if>
<assign value='tmp' property='target.reason' action='set' key='k1' />
</foreach>
<if condition='($ISOBJECT(source.diagnosis) &amp;&amp; (source.diagnosis.Count()&gt;0))' >
<true>
<assign value='source.diagnosis' property='target.diagnosis' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.account) &amp;&amp; (source.account.Count()&gt;0))' >
<true>
<assign value='source.account' property='target.account' action='set' />
</true>
</if>
<if condition='$ISOBJECT(source.hospitalization)' >
<true>
<if condition='($ISOBJECT(source.hospitalization.dietPreference) &amp;&amp; (source.hospitalization.dietPreference.Count()&gt;0))' >
<true>
<assign value='source.hospitalization.dietPreference' property='target.dietPreference' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.hospitalization.specialArrangement) &amp;&amp; (source.hospitalization.specialArrangement.Count()&gt;0))' >
<true>
<assign value='source.hospitalization.specialArrangement' property='target.specialArrangement' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.hospitalization.specialCourtesy) &amp;&amp; (source.hospitalization.specialCourtesy.Count()&gt;0))' >
<true>
<assign value='source.hospitalization.specialCourtesy' property='target.specialCourtesy' action='set' />
</true>
</if>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Element.Encounter.admission).%New()' property='tmp' action='set' />
<if condition='($ISOBJECT(source.hospitalization.newResource) &amp;&amp; (source.hospitalization.newResource.Count()&gt;0))' >
<true>
<assign value='source.hospitalization.newResource' property='tmp.newResource' action='set' />
</true>
</if>
<assign value='source.hospitalization.id' property='tmp.id' action='set' />
<if condition='($ISOBJECT(source.hospitalization.extension) &amp;&amp; (source.hospitalization.extension.Count()&gt;0))' >
<true>
<assign value='source.hospitalization.extension' property='tmp.extension' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.hospitalization.modifierExtension) &amp;&amp; (source.hospitalization.modifierExtension.Count()&gt;0))' >
<true>
<assign value='source.hospitalization.modifierExtension' property='tmp.modifierExtension' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.hospitalization.primitiveExtension) &amp;&amp; (source.hospitalization.primitiveExtension.Count()&gt;0))' >
<true>
<assign value='source.hospitalization.primitiveExtension' property='tmp.primitiveExtension' action='set' />
</true>
</if>
<assign value='source.hospitalization.preAdmissionIdentifier' property='tmp.preAdmissionIdentifier' action='set' />
<assign value='source.hospitalization.origin' property='tmp.origin' action='set' />
<assign value='source.hospitalization.admitSource' property='tmp.admitSource' action='set' />
<assign value='source.hospitalization.reAdmission' property='tmp.reAdmission' action='set' />
<assign value='source.hospitalization.destination' property='tmp.destination' action='set' />
<assign value='source.hospitalization.dischargeDisposition' property='tmp.dischargeDisposition' action='set' />
<assign value='tmp' property='target.admission' action='set' />
</true>
</if>
<foreach property='source.location()' key='k1' >
<if condition='($ISOBJECT(source.location.(k1).newResource) &amp;&amp; (source.location.(k1).newResource.Count()&gt;0))' >
<true>
<assign value='source.location.(k1).newResource' property='target.location.(k1).newResource' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.location.(k1).extension) &amp;&amp; (source.location.(k1).extension.Count()&gt;0))' >
<true>
<assign value='source.location.(k1).extension' property='target.location.(k1).extension' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.location.(k1).modifierExtension) &amp;&amp; (source.location.(k1).modifierExtension.Count()&gt;0))' >
<true>
<assign value='source.location.(k1).modifierExtension.(1)' property='target.location.(k1).modifierExtension.(1)' action='set' />
</true>
</if>
<assign value='source.location.(k1).id' property='target.location.(k1).id' action='set' />
<assign value='source.location.(k1).newResourceReference' property='target.location.(k1).newResourceReference' action='set' />
<assign value='source.location.(k1).location' property='target.location.(k1).location' action='set' />
<assign value='source.location.(k1).status' property='target.location.(k1).status' action='set' />
<if condition='$ISOBJECT(source.location.(k1).physicalType)' >
<true>
<assign value='source.location.(k1).physicalType' property='target.location.(k1).form' action='set' />
</true>
</if>
<assign value='source.location.(k1).period' property='target.location.(k1).period' action='set' />
</foreach>
<assign value='source.serviceProvider' property='target.serviceProvider' action='set' />
<assign value='source.partOf' property='target.partOf' action='set' />
</transform>
}

}
