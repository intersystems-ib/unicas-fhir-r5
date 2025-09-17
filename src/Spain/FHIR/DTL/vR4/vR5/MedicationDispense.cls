Class Spain.FHIR.DTL.vR4.vR5.MedicationDispense Extends Ens.DataTransformDTL [ DependsOn = (HS.FHIR.DTL.vR4.Model.Resource.MedicationDispense, Spain.FHIR.DTL.vR5.Model.Resource.MedicationDispense) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.FHIR.DTL.vR4.Model.Resource.MedicationDispense' targetClass='Spain.FHIR.DTL.vR5.Model.Resource.MedicationDispense' create='new' language='objectscript' >
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
<if condition='($ISOBJECT(source.partOf) &amp;&amp; (source.partOf.Count()&gt;0))' >
<true>
<assign value='source.partOf' property='target.partOf' action='set' />
</true>
</if>
<assign value='source.status' property='target.status' action='set' />
<if condition='$ISOBJECT(source.statusReasonCodeableConcept) || $ISOBJECT(source.statusReasonReference)' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<if condition='$ISOBJECT(source.statusReasonCodeableConcept)' >
<true>
<assign value='source.statusReasonCodeableConcept' property='tmp.concept' action='set' />
</true>
</if>
<if condition='$ISOBJECT(source.statusReasonReference)' >
<true>
<assign value='source.statusReasonReference' property='tmp.reference' action='set' />
</true>
</if>
<assign value='tmp' property='target.notPerformedReason' action='set' />
</true>
</if>
<if condition='$ISOBJECT(source.category)' >
<true>
<assign value='source.category' property='target.category.(1)' action='set' />
</true>
</if>
<if condition='$ISOBJECT(source.medicationCodeableConcept) || $ISOBJECT(source.medicationReasonReference)' >
<true>
<assign value='##class(Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference).%New()' property='tmp' action='set' />
<if condition='$ISOBJECT(source.medicationCodeableConcept)' >
<true>
<assign value='source.medicationCodeableConcept' property='tmp.concept' action='set' />
</true>
</if>
<if condition='$ISOBJECT(source.medicationReference)' >
<true>
<assign value='source.medicationReference' property='tmp.reference' action='set' />
</true>
</if>
<assign value='tmp' property='target.medication' action='set' />
</true>
</if>
<assign value='source.subject' property='target.subject' action='set' />
<assign value='source.context' property='target.encounter' action='set' />
<if condition='($ISOBJECT(source.supportingInformation) &amp;&amp; (source.supportingInformation.Count()&gt;0))' >
<true>
<assign value='source.supportingInformation' property='target.supportingInformation' action='set' />
</true>
</if>
<if condition='($ISOBJECT(source.performer) &amp;&amp; (source.performer.Count()&gt;0))' >
<true>
<assign value='source.performer' property='target.performer' action='set' />
</true>
</if>
<assign value='source.location' property='target.location' action='set' />
<if condition='($ISOBJECT(source.authorizingPrescription) &amp;&amp; (source.authorizingPrescription.Count()&gt;0))' >
<true>
<assign value='source.authorizingPrescription' property='target.authorizingPrescription' action='set' />
</true>
</if>
<assign value='source.type' property='target.type' action='set' />
<assign value='source.quantity' property='target.quantity' action='set' />
<assign value='source.daysSupply' property='target.daysSupply' action='set' />
<assign value='source.whenPrepared' property='target.whenPrepared' action='set' />
<assign value='source.whenHandedOver' property='target.whenHandedOver' action='set' />
<assign value='source.destination' property='target.destination' action='set' />
<if condition='($ISOBJECT(source.receiver) &amp;&amp; (source.receiver.Count()&gt;0))' >
<true>
<assign value='source.receiver' property='target.receiver' action='set' />
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
<assign value='source.substitution' property='target.substitution' action='set' />
<if condition='($ISOBJECT(source.eventHistory) &amp;&amp; (source.eventHistory.Count()&gt;0))' >
<true>
<assign value='source.eventHistory' property='target.eventHistory' action='set' />
</true>
</if>
</transform>
}

}
