/// Information about an individual or animal receiving health care services.
Class Spain.FHIR.DTL.vR5.Model.Resource.Patient Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

Property name As list Of HS.FHIR.DTL.vR4.Model.Datatype.HumanName(XMLNAME = "name", XMLPROJECTION = "ELEMENT");

Property telecom As list Of HS.FHIR.DTL.vR4.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

Property gender As %String(MAXLEN = 1000000, XMLNAME = "gender", XMLPROJECTION = "ATTRIBUTE");

Property birthDate As %String(MAXLEN = 1000000, XMLNAME = "birthDate", XMLPROJECTION = "ATTRIBUTE");

Property deceasedBoolean As %Boolean(XMLNAME = "deceasedBoolean", XMLPROJECTION = "ATTRIBUTE");

Property deceasedDateTime As %String(MAXLEN = 1000000, XMLNAME = "deceasedDateTime", XMLPROJECTION = "ATTRIBUTE");

Property address As list Of HS.FHIR.DTL.vR4.Model.Datatype.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");

Property maritalStatus As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "maritalStatus", XMLPROJECTION = "ELEMENT");

Property multipleBirthBoolean As %Boolean(XMLNAME = "multipleBirthBoolean", XMLPROJECTION = "ATTRIBUTE");

Property multipleBirthInteger As %Integer(XMLNAME = "multipleBirthInteger", XMLPROJECTION = "ATTRIBUTE");

Property photo As list Of HS.FHIR.DTL.vR4.Model.Datatype.Attachment(XMLNAME = "photo", XMLPROJECTION = "ELEMENT");

Property contact As list Of Spain.FHIR.DTL.vR5.Model.Element.Patient.contact(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

Property communication As list Of Spain.FHIR.DTL.vR5.Model.Element.Patient.communication(XMLNAME = "communication", XMLPROJECTION = "ELEMENT");

Property generalPractitioner As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "generalPractitioner", XMLPROJECTION = "ELEMENT");

Property managingOrganization As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "managingOrganization", XMLPROJECTION = "ELEMENT");

Property link As list Of Spain.FHIR.DTL.vR5.Model.Element.Patient.link(XMLNAME = "link", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Patient";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Patient";

}
