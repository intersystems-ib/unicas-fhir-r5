/// Association between a patient and an organization during which encounters may occur.
Class Spain.FHIR.DTL.vR5.Model.Resource.EpisodeOfCare Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property statusHistory As list Of Spain.FHIR.DTL.vR5.Model.Element.EpisodeOfCare.statusHistory(XMLNAME = "statusHistory", XMLPROJECTION = "ELEMENT");

Property type As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

Property reason As list Of Spain.FHIR.DTL.vR5.Model.Element.EpisodeOfCare.reason(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

Property diagnosis As list Of Spain.FHIR.DTL.vR5.Model.Element.EpisodeOfCare.diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT");

Property patient As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

Property managingOrganization As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "managingOrganization", XMLPROJECTION = "ELEMENT");

Property period As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Property referralRequest As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "referralRequest", XMLPROJECTION = "ELEMENT");

Property careManager As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "careManager", XMLPROJECTION = "ELEMENT");

Property careTeam As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "careTeam", XMLPROJECTION = "ELEMENT");

Property account As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "account", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EpisodeOfCare";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EpisodeOfCare";

}
