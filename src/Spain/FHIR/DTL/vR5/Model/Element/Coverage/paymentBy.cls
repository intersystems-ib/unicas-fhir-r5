/// Self-pay parties and responsibility.
Class Spain.FHIR.DTL.vR5.Model.Element.Coverage.paymentBy Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property party As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "party", XMLPROJECTION = "ELEMENT") [ Required ];

Property responsibility As %String(MAXLEN = 1000000, XMLNAME = "responsibility", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Coverage.paymentBy";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Coverage.paymentBy";

}
