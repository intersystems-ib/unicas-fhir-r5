Class Spain.FHIR.DTL.vR4.vR5.MedicationAdministration Extends Ens.DataTransformDTL [ DependsOn = (HS.FHIR.DTL.vR4.Model.Resource.MedicationAdministration, Spain.FHIR.DTL.vR5.Model.Resource.MedicationAdministration) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.FHIR.DTL.vR4.Model.Resource.MedicationAdministration' targetClass='Spain.FHIR.DTL.vR5.Model.Resource.MedicationAdministration' create='new' language='objectscript' >
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
<if condition='source.partOf &apos;= ""' >
<true>
<assign value='source.partOf' property='target.partOf' action='set' />
</true>
</if>
<assign value='source.status' property='target.status' action='set' />
<if condition='source.statusReason &apos;= ""' >
<true>
<assign value='source.statusReason' property='target.statusReason' action='set' />
</true>
</if>
<if condition='source.category &apos;= ""' >
<true>
<assign value='source.category' property='target.category' action='append' />
</true>
</if>
<if condition='source.medicationReference &apos;= ""' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<if condition='source.medicationCodeableConcept &apos;= ""' >
<true>
<assign value='source.medicationCodeableConcept' property='tmp.concept' action='set' />
</true>
</if>
<assign value='source.medicationReference' property='tmp.reference' action='set' />
<assign value='tmp' property='target.medication' action='set' />
</true>
</if>
<assign value='source.subject' property='target.subject' action='set' />
<assign value='source.context' property='target.encounter' action='set' />
<if condition='source.supportingInformation &apos;= ""' >
<true>
<assign value='source.supportingInformation' property='target.supportingInformation' action='set' />
</true>
</if>
<assign value='source.effectiveDateTime' property='target.occurenceDateTime' action='set' />
<assign value='source.effectivePeriod' property='target.occurencePeriod' action='set' />
<if condition='source.performer &apos;= ""' >
<true>
<assign value='source.performer' property='target.performer' action='set' />
</true>
</if>
<foreach property='source.reasonCode()' key='k1' >
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<assign value='source.reasonCode.(k1)' property='tmp.concept' action='set' />
<assign value='source.reasonReference.(k1)' property='tmp.reference' action='set' />
<assign value='tmp' property='target.reason' action='set' key='k1' />
</foreach>
<assign value='source.request' property='target.request' action='set' />
<if condition='source.device &apos;= ""' >
<true>
<assign value='source.device' property='target.device' action='set' />
</true>
</if>
<if condition='source.note &apos;= ""' >
<true>
<assign value='source.note' property='target.note' action='set' />
</true>
</if>
<assign value='source.dosage' property='target.dosage' action='set' />
<if condition='source.eventHistory &apos;= ""' >
<true>
<assign value='source.eventHistory' property='target.eventHistory' action='set' />
</true>
</if>
</transform>
}

}
