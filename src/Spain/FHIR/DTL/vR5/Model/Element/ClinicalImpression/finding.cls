/// Possible or likely finding or diagnosis.
Class Spain.FHIR.DTL.vR5.Model.Element.ClinicalImpression.finding Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property item As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

Property basis As %String(MAXLEN = 1000000, XMLNAME = "basis", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClinicalImpression.finding";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClinicalImpression.finding";

}
