/// Enteral formula administration.
Class Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.administration Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property schedule As Spain.FHIR.DTL.vR5.Model.Element.NutritionOrder.schedule(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT");

Property quantity As HS.FHIR.DTL.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

Property rateQuantity As HS.FHIR.DTL.vR4.Model.Datatype.Quantity(XMLNAME = "rateQuantity", XMLPROJECTION = "ELEMENT");

Property rateRatio As HS.FHIR.DTL.vR4.Model.Datatype.Ratio(XMLNAME = "rateRatio", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder.administration";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder.administration";

}
