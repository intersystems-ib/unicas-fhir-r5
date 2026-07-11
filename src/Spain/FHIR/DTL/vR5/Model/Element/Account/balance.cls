/// Calculated account balance.
Class Spain.FHIR.DTL.vR5.Model.Element.Account.balance Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property aggregate As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "aggregate", XMLPROJECTION = "ELEMENT");

Property term As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "term", XMLPROJECTION = "ELEMENT");

Property estimate As %Boolean(XMLNAME = "estimate", XMLPROJECTION = "ATTRIBUTE");

Property amount As HS.FHIR.DTL.vR4.Model.Datatype.Money(XMLNAME = "amount", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Account.balance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Account.balance";

}
