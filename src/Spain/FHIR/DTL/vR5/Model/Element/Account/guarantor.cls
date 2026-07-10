/// Parties ultimately responsible for balancing the account.
Class Spain.FHIR.DTL.vR5.Model.Element.Account.guarantor Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property party As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "party", XMLPROJECTION = "ELEMENT") [ Required ];

Property onHold As %Boolean(XMLNAME = "onHold", XMLPROJECTION = "ATTRIBUTE");

Property period As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "guarantor";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "guarantor";

}
