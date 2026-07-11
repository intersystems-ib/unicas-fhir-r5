/// Patient or consumer-oriented instructions.
Class Spain.FHIR.DTL.vR5.Model.Element.ServiceRequest.patientInstruction Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property instructionMarkdown As %String(MAXLEN = 1000000, XMLNAME = "instructionMarkdown", XMLPROJECTION = "ATTRIBUTE");

Property instructionReference As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "instructionReference", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ServiceRequest.patientInstruction";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ServiceRequest.patientInstruction";

}
