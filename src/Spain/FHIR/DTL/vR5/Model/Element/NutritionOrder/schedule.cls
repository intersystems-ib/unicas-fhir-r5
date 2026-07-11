/// Scheduled intake.
Class Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.schedule Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property timing As list Of HS.FHIR.DTL.vR4.Model.Datatype.Timing(XMLNAME = "timing", XMLPROJECTION = "ELEMENT");

Property asNeeded As %Boolean(XMLNAME = "asNeeded", XMLPROJECTION = "ATTRIBUTE");

Property asNeededFor As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "asNeededFor", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder.schedule";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder.schedule";

}
