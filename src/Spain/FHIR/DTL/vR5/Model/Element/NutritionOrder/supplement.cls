/// Oral nutritional supplement.
Class Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.supplement Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

Property productName As %String(MAXLEN = 1000000, XMLNAME = "productName", XMLPROJECTION = "ATTRIBUTE");

Property schedule As list Of Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.schedule(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT");

Property quantity As HS.FHIR.DTL.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

Property instruction As %String(MAXLEN = 1000000, XMLNAME = "instruction", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder.supplement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder.supplement";

}
