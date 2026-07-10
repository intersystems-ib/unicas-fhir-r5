/// An interaction during which services are provided to the patient.
Class Spain.FHIR.DTL.vR5.Model.Resource.Encounter Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property class As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "class", XMLPROJECTION = "ELEMENT");

Property priority As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "priority", XMLPROJECTION = "ELEMENT");

Property type As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

Property serviceType As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "serviceType", XMLPROJECTION = "ELEMENT");

Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

Property subjectStatus As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subjectStatus", XMLPROJECTION = "ELEMENT");

Property episodeOfCare As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "episodeOfCare", XMLPROJECTION = "ELEMENT");

Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

Property careTeam As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "careTeam", XMLPROJECTION = "ELEMENT");

Property partOf As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

Property serviceProvider As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "serviceProvider", XMLPROJECTION = "ELEMENT");

Property participant As list Of Spain.FHIR.DTL.vR5.Model.Element.Encounter.paticipant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");

Property appointment As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "appointment", XMLPROJECTION = "ELEMENT");

Property virtualService As list Of Spain.FHIR.DTL.vR5.Model.Datatype.VirtualServiceDetail(XMLNAME = "virtualService", XMLPROJECTION = "ELEMENT");

Property actualPeriod As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "actualPeriod", XMLPROJECTION = "ELEMENT");

Property plannedStartDate As %String(MAXLEN = 1000000, XMLNAME = "plannedStartDate", XMLPROJECTION = "ATTRIBUTE");

Property plannedEndDate As %String(MAXLEN = 1000000, XMLNAME = "plannedEndDate", XMLPROJECTION = "ATTRIBUTE");

Property length As HS.FHIR.DTL.vR4.Model.Datatype.Duration(XMLNAME = "length", XMLPROJECTION = "ELEMENT");

Property reason As list Of Spain.FHIR.DTL.vR5.Model.Element.Encounter.reason(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

Property diagnosis As list Of Spain.FHIR.DTL.vR5.Model.Element.Encounter.diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT");

Property account As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "account", XMLPROJECTION = "ELEMENT");

Property dietPreference As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "dietPreference", XMLPROJECTION = "ELEMENT");

Property specialArrangement As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "specialArrangement", XMLPROJECTION = "ELEMENT");

Property specialCourtesy As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "specialCourtesy", XMLPROJECTION = "ELEMENT");

Property admission As Spain.FHIR.DTL.vR5.Model.Element.Encounter.admission(XMLNAME = "admission", XMLPROJECTION = "ELEMENT");

Property location As list Of Spain.FHIR.DTL.vR5.Model.Element.Encounter.location(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Encounter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter";

}
