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
<if condition='target.modifierExtension' >
<true>
<assign value='source.modifierExtension' property='target.modifierExtension' action='set' />
</true>
</if>
<if condition='target.identifier &apos;= ""' >
<true>
<assign value='source.identifier' property='target.identifier' action='set' />
</true>
</if>
<assign value='source.status' property='target.status' action='set' />
<if condition='source.class &apos;= ""' >
<true>
<assign value='source.class' property='target.class.(1)' action='set' />
</true>
</if>
<if condition='source.type &apos;= ""' >
<true>
<assign value='source.type.(1)' property='target.type.(1)' action='set' />
</true>
</if>
<assign value='source.serviceType' property='target.serviceType' action='set' />
<assign value='source.priority' property='target.priority' action='set' />
<assign value='source.subject' property='target.subject' action='set' />
<if condition='source.episodeOfCare &apos;= ""' >
<true>
<assign value='source.episodeOfCare' property='target.episodeOfCare' action='set' />
</true>
</if>
<if condition='source.basedOn &apos;= ""' >
<true>
<assign value='source.basedOn' property='target.basedOn' action='set' />
</true>
</if>
<foreach property='source.participant()' key='k1' >
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Element.Encounter.paticipant).%New()' property='tmp' action='set' />
<if condition='source.participant.(k1).newResource &apos;= ""' >
<true>
<assign value='source.participant.(k1).newResource' property='tmp.newResource' action='set' />
</true>
</if>
<assign value='source.participant.(k1).id' property='tmp.id' action='set' />
<if condition='source.participant.(k1).extension &apos;= ""' >
<true>
<assign value='source.participant.(k1).extension' property='tmp.extension' action='set' />
</true>
</if>
<if condition='source.participant.(k1).modifierExtension &apos;= ""' >
<true>
<assign value='source.participant.(k1).modifierExtension' property='tmp.modifierExtension' action='set' />
</true>
</if>
<assign value='source.participant.(k1).newResourceReference' property='tmp.newResourceReference' action='set' />
<if condition='source.participant.(k1).primitiveExtension &apos;= ""' >
<true>
<assign value='source.participant.(k1).primitiveExtension' property='tmp.primitiveExtension' action='set' />
</true>
</if>
<if condition='source.participant.(k1).type &apos;= ""' >
<true>
<assign value='source.participant.(k1).type' property='tmp.type' action='set' />
</true>
</if>
<assign value='source.participant.(k1).period' property='tmp.period' action='set' />
<assign value='source.participant.(k1).individual' property='tmp.actor' action='set' />
<assign value='tmp' property='target.participant.(k1)' action='set' />
</foreach>
<if condition='target.appointment &apos;= ""' >
<true>
<assign value='source.appointment' property='target.appointment' action='set' />
</true>
</if>
<assign value='source.period' property='target.actualPeriod' action='set' />
<assign value='source.length' property='target.length' action='set' />
<foreach property='source.reasonCode()' key='k1' >
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Element.Encounter.reason).%New()' property='tmp' action='set' />
<assign value='source.reasonCode.(k1)' property='tmp.use' action='set' key='k1' />
<if condition='(source.reasonReference &apos;= "") &amp;&amp; (source.reasonReference.(k1) &apos;= "")' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp1' action='set' />
<assign value='source.reasonReference.(k1)' property='tmp1.reference' action='set' />
<assign value='tmp1' property='tmp.value' action='set' />
</true>
</if>
<assign value='tmp' property='target.reason' action='set' key='k1' />
</foreach>
<if condition='source.diagnosis &apos;= ""' >
<true>
<assign value='source.diagnosis' property='target.diagnosis' action='set' />
</true>
</if>
<if condition='source.account &apos;= ""' >
<true>
<assign value='source.account' property='target.account' action='set' />
</true>
</if>
<if condition='source.hospitalization &apos;= ""' >
<true>
<if condition='source.hospitalization.dietPreference &apos;= ""' >
<true>
<assign value='source.hospitalization.dietPreference' property='target.dietPreference' action='set' />
</true>
</if>
<if condition='source.hospitalization.specialArrangement &apos;= ""' >
<true>
<assign value='source.hospitalization.specialArrangement' property='target.specialArrangement' action='set' />
</true>
</if>
<if condition='source.hospitalization.specialCourtesy &apos;= ""' >
<true>
<assign value='source.hospitalization.specialCourtesy' property='target.specialCourtesy' action='set' />
</true>
</if>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Element.Encounter.admission).%New()' property='tmp' action='set' />
<if condition='source.hospitalization.newResource &apos;= ""' >
<true>
<assign value='source.hospitalization.newResource' property='tmp.newResource' action='set' />
</true>
</if>
<assign value='source.hospitalization.id' property='tmp.id' action='set' />
<if condition='source.hospitalization.extension &apos;= ""' >
<true>
<assign value='source.hospitalization.extension' property='tmp.extension' action='set' />
</true>
</if>
<if condition='source.hospitalization.modifierExtension &apos;= ""' >
<true>
<assign value='source.hospitalization.modifierExtension' property='tmp.modifierExtension' action='set' />
</true>
</if>
<if condition='source.hospitalization.primitiveExtension &apos;= ""' >
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
<if condition='source.location &apos;= ""' >
<true>
<assign value='source.location' property='target.location' action='set' />
</true>
</if>
<assign value='source.serviceProvider' property='target.serviceProvider' action='set' />
<assign value='source.partOf' property='target.partOf' action='set' />
</transform>
}

}
