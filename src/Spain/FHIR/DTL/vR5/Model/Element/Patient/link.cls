/// Link to another Patient or RelatedPerson resource that concerns the same individual.
Class Spain.FHIR.DTL.vR5.Model.Element.Patient.link Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property other As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "other", XMLPROJECTION = "ELEMENT") [ Required ];

Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Patient.link";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Patient.link";

}
