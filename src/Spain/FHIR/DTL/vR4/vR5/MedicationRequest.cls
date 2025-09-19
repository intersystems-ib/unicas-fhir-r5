Class Spain.FHIR.DTL.vR4.vR5.MedicationRequest Extends Ens.DataTransformDTL [ DependsOn = (HS.FHIR.DTL.vR4.Model.Resource.MedicationRequest, Spain.FHIR.DTL.vR5.Model.Resource.MedicationRequest) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.FHIR.DTL.vR4.Model.Resource.MedicationRequest' targetClass='Spain.FHIR.DTL.vR5.Model.Resource.MedicationRequest' create='new' language='objectscript' >
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
<assign value='source.statusReason' property='target.statusReason' action='set' />
<assign value='source.intent' property='target.intent' action='set' />
<if condition='($ISOBJECT(source.category) &amp;&amp; (source.category.Count()&gt;0))' >
<true>
<assign value='source.category' property='target.category' action='set' />
</true>
</if>
<assign value='source.priority' property='target.priority' action='set' />
<assign value='source.doNotPerform' property='target.doNotPerform' action='set' />
<assign value='source.reportedBoolean' property='target.reported' action='set' />
<if condition='$ISOBJECT(source.medicationCodeableConcept) || $ISOBJECT(source.medicationReference)' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<assign value='source.medicationCodeableConcept' property='tmp.concept' action='set' />
<assign value='source.medicationReference' property='tmp.reference' action='set' />
<assign value='tmp' property='target.medication' action='set' />
</true>
</if>
<assign value='source.subject' property='target.subject' action='set' />
<assign value='source.encounter' property='target.encounter' action='set' />
<if condition='($ISOBJECT(source.supportingInformation) &amp;&amp; (source.supportingInformation.Count()&gt;0))' >
<true>
<assign value='source.supportingInformation' property='target.supportingInformation' action='set' />
</true>
</if>
<assign value='source.authoredOn' property='target.authoredOn' action='set' />
<assign value='source.requester' property='target.requester' action='set' />
<if condition='$ISOBJECT(source.performer)' >
<true>
<assign value='source.performer' property='target.performer.(1)' action='set' />
</true>
</if>
<assign value='source.performerType' property='target.performerType' action='set' />
<assign value='source.recorder' property='target.recorder' action='set' />
<if condition='($ISOBJECT(source.reasonCode) &amp;&amp; (source.reasonCode.Count() &gt; 0))' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<assign value='source.reasonCode' property='tmp.use' action='set' />
<assign value='target.reason.Count() + 1' property='i' action='set' />
<assign value='tmp' property='target.reason.(i)' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.reasonReference) &amp;&amp; (source.reasonReference.Count() &gt; 0))' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<assign value='source.reasonReference' property='tmp.value' action='set' />
<assign value='target.reason.Count() + 1' property='i' action='set' />
<assign value='tmp' property='target.reason.(i)' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.basedOn) &amp;&amp; (source.basedOn.Count()&gt;0))' >
<true>
<assign value='source.basedOn' property='target.basedOn' action='set' />
</true>
</if>
<assign value='source.groupIdentifier' property='target.groupIdentifier' action='set' />
<assign value='source.courseOfTherapyType' property='target.courseOfTherapyType' action='set' />
<if condition='($ISOBJECT(source.insurance) &amp;&amp; (source.insurance.Count()&gt;0))' >
<true>
<assign value='source.insurance' property='target.insurance' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.note) &amp;&amp; (source.note.Count()&gt;0))' >
<true>
<assign value='source.note' property='target.note' action='set' />
</true>
</if>
<foreach property='source.dosageInstruction()' key='k1' >
<subtransform class='Spain.FHIR.DTL.vR4.vR5.Dosage' targetObj='target.dosageInstruction.(k1)' sourceObj='source.dosageInstruction.(k1)' />
</foreach>
<assign value='source.dispenseRequest' property='target.dispenseRequest' action='set' />
<assign value='source.substitution' property='target.substitution' action='set' />
<assign value='source.priorPrescription' property='target.priorPrescription' action='set' />
<if condition='($ISOBJECT(source.detectedIssue) &amp;&amp; (source.detectedIssue.Count()&gt;0))' >
<true>
<assign value='source.detectedIssue' property='target.detectedIssue' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.eventHistory) &amp;&amp; (source.eventHistory.Count()&gt;0))' >
<true>
<assign value='source.eventHistory' property='target.eventHistory' action='set' />
</true>
</if>
</transform>
}

}
