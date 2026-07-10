/// Communicated content.
Class Spain.FHIR.DTL.vR5.Model.Element.Communication.payload Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property contentAttachment As HS.FHIR.DTL.vR4.Model.Datatype.Attachment(XMLNAME = "contentAttachment", XMLPROJECTION = "ELEMENT");

Property contentReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "contentReference", XMLPROJECTION = "ELEMENT");

Property contentCodeableConcept As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "contentCodeableConcept", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "payload";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "payload";

}
