/// Action to occur or has occurred as part of the care plan.
Class Spain.FHIR.DTL.vR5.Model.Element.CarePlan.activity Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property performedActivity As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "performedActivity", XMLPROJECTION = "ELEMENT");

Property progress As list Of HS.FHIR.DTL.vR4.Model.Datatype.Annotation(XMLNAME = "progress", XMLPROJECTION = "ELEMENT");

Property plannedActivityReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "plannedActivityReference", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "activity";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "activity";

}
