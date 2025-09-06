Class Spain.FHIR.DTL.vR4.vR5.Allergy.AllergyIntolerance Extends Ens.DataTransformDTL [ DependsOn = (HS.FHIR.DTL.vR4.Model.Resource.AllergyIntolerance, Spain.FHIR.DTL.vR5.Model.Resource.AllergyIntolerance) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.FHIR.DTL.vR4.Model.Resource.AllergyIntolerance' targetClass='Spain.FHIR.DTL.vR5.Model.Resource.AllergyIntolerance' create='new' language='objectscript' >
<assign value='source.text' property='target.text' action='set' />
<assign value='source.newResourceReference' property='target.newResourceReference' action='set' />
<assign value='source.id' property='target.id' action='set' />
<assign value='source.meta' property='target.meta' action='set' />
<assign value='source.implicitRules' property='target.implicitRules' action='set' />
<assign value='source.language' property='target.language' action='set' />
<if condition='source.primitiveExtension &apos;= ""' >
<true>
<assign value='source.primitiveExtension' property='target.primitiveExtension' action='set' />
</true>
</if>
<if condition='source.extension &apos;= ""' >
<true>
<assign value='source.extension' property='target.extension' action='set' />
</true>
</if>
<if condition='source.contained &apos;= ""' >
<true>
<assign value='source.contained' property='target.contained' action='set' />
</true>
</if>
<if condition='source.newResource &apos;= ""' >
<true>
<assign value='source.newResource' property='target.newResource' action='set' />
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
<assign value='source.clinicalStatus' property='target.clinicalStatus' action='set' />
<assign value='source.verificationStatus' property='target.verificationStatus' action='set' />
<assign value='source.type' property='target.type' action='set' />
<if condition='source.category &apos;= ""' >
<true>
<assign value='source.category' property='target.category' action='set' />
</true>
</if>
<assign value='source.criticality' property='target.criticality' action='set' />
<assign value='source.code' property='target.code' action='set' />
<assign value='source.patient' property='target.patient' action='set' />
<assign value='source.encounter' property='target.encounter' action='set' />
<assign value='source.onsetAge' property='target.onsetAge' action='set' />
<assign value='source.onsetDateTime' property='target.onsetDateTime' action='set' />
<assign value='source.onsetPeriod' property='target.onsetPeriod' action='set' />
<assign value='source.onsetRange' property='target.onsetRange' action='set' />
<assign value='source.onsetString' property='target.onsetString' action='set' />
<assign value='source.recordedDate' property='target.recordedDate' action='set' />
<if condition='source.recorder &apos;= ""' >
<true>
<group>
<assign value='target.participant.Count() + 1' property='index' action='set' />
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Element.AllergyIntolerance.participant).%New()' property='tmp' action='set' />
<assign value='source.recorder' property='tmp.actor' action='set' />
<assign value='##class(HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept).%New()' property='tmp.function' action='set' />
<assign value='##class(HS.FHIR.DTL.vR4.Model.Datatype.Coding).%New()' property='tmp.function.coding' action='set' />
<assign value='"http://terminology.hl7.org/CodeSystem/provenance-participant-type"' property='tmp.function.coding.system' action='set' />
<assign value='"enterer"' property='tmp.function.coding.code' action='set' />
<assign value='"Enterer"' property='tmp.function.coding.display' action='set' />
<assign value='"http://terminology.hl7.org/ValueSet/provenance-agent-type|0.1.0"' property='tmp.function.coding.version' action='set' />
<assign value='"Enterer"' property='tmp.function.text' action='set' />
<assign value='tmp' property='target.participant' action='set' key='index' />
</group>
</true>
</if>
<if condition='source.asserter &apos;= ""' >
<true>
<group>
<assign value='target.participant.Count() + 1' property='index' action='set' />
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Element.AllergyIntolerance.participant).%New()' property='tmp' action='set' />
<assign value='source.asserter' property='tmp.actor' action='set' />
<assign value='##class(HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept).%New()' property='tmp.function' action='set' />
<assign value='##class(HS.FHIR.DTL.vR4.Model.Datatype.Coding).%New()' property='tmp.function.coding' action='set' />
<assign value='"http://terminology.hl7.org/CodeSystem/provenance-participant-type"' property='tmp.function.coding.system' action='set' />
<assign value='"verifier"' property='tmp.function.coding.code' action='set' />
<assign value='"Verifier"' property='tmp.function.coding.display' action='set' />
<assign value='"http://terminology.hl7.org/ValueSet/provenance-agent-type|0.1.0"' property='tmp.function.coding.version' action='set' />
<assign value='"Verifier"' property='tmp.function.text' action='set' />
<assign value='tmp' property='target.participant' action='set' key='index' />
</group>
</true>
</if>
<assign value='source.lastOccurrence' property='target.lastOccurrence' action='set' />
<if condition='source.note &apos;= ""' >
<true>
<assign value='source.note' property='target.note' action='set' />
</true>
</if>
<foreach property='source.reaction()' key='k1' >
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Element.AllergyIntolerance.reaction).%New()' property='tmp' action='set' />
<assign value='source.reaction.(k1).id' property='tmp.id' action='set' />
<assign value='source.reaction.(k1).newResourceReference' property='tmp.newResourceReference' action='set' />
<if condition='source.reaction.(k1).newResource &apos;= ""' >
<true>
<assign value='source.reaction.(k1).newResource' property='tmp.newResource' action='set' />
</true>
</if>
<if condition='source.reaction.(k1).extension &apos;= ""' >
<true>
<assign value='source.reaction.(k1).extension' property='tmp.extension' action='set' />
</true>
</if>
<if condition='source.reaction.(k1).modifierExtension &apos;= ""' >
<true>
<assign value='source.reaction.(k1).modifierExtension' property='tmp.modifierExtension' action='set' />
</true>
</if>
<if condition='source.reaction.(k1).primitiveExtension &apos;= ""' >
<true>
<assign value='source.reaction.(k1).primitiveExtension' property='tmp.primitiveExtension' action='set' />
</true>
</if>
<foreach property='source.reaction.(k1).manifestation()' key='k2' >
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp1' action='set' />
<assign value='source.reaction.(k1).manifestation.(k2)' property='tmp1.concept' action='set' />
<assign value='tmp1' property='tmp.manifestation.(k2)' action='set' />
</foreach>
<assign value='tmp' property='target.reaction.(k1)' action='set' />
</foreach>
</transform>
}

}
