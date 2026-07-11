/// Components to add to the feeding.
Class Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.additive Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property type As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

Property productName As %String(MAXLEN = 1000000, XMLNAME = "productName", XMLPROJECTION = "ATTRIBUTE");

Property quantity As HS.FHIR.DTL.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder.additive";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder.additive";

}
