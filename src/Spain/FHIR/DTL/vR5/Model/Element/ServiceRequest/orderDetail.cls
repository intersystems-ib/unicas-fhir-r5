/// Additional order information.
Class Spain.FHIR.DTL.vR5.Model.Element.ServiceRequest.orderDetail Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property parameterFocus As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "parameterFocus", XMLPROJECTION = "ELEMENT");

Property parameter As list Of Spain.FHIR.DTL.vR5.Model.Element.ServiceRequest.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "orderDetail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "orderDetail";

}
