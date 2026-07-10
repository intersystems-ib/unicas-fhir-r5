/// Data controlled by a provision.
Class Spain.FHIR.DTL.vR5.Model.Element.Consent.data Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property meaning As %String(MAXLEN = 1000000, XMLNAME = "meaning", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property reference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "reference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "data";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "data";

}
