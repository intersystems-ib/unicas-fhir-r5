/// Consent verified by patient or family.
Class Spain.FHIR.DTL.vR5.Model.Element.Consent.verification Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property verified As %Boolean(XMLNAME = "verified", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property verificationType As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "verificationType", XMLPROJECTION = "ELEMENT");

Property verifiedBy As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "verifiedBy", XMLPROJECTION = "ELEMENT");

Property verifiedWith As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "verifiedWith", XMLPROJECTION = "ELEMENT");

Property verificationDate As list Of %String(MAXLEN = 1000000, XMLNAME = "verificationDate", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Consent.verification";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Consent.verification";

}
