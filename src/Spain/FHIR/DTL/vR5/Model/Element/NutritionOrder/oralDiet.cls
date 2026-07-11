/// Oral diet components.
Class Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.oralDiet Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property type As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

Property schedule As list Of Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.schedule(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT");

Property fluidConsistencyType As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fluidConsistencyType", XMLPROJECTION = "ELEMENT");

Property instruction As %String(MAXLEN = 1000000, XMLNAME = "instruction", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder.oralDiet";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder.oralDiet";

}
