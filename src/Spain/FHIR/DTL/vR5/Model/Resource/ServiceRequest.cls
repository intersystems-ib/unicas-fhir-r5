/// A request for a service to be performed.
Class Spain.FHIR.DTL.vR5.Model.Resource.ServiceRequest Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

Property instantiatesCanonical As list Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ATTRIBUTE");

Property instantiatesUri As list Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ATTRIBUTE");

Property basedOn As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

Property replaces As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "replaces", XMLPROJECTION = "ELEMENT");

Property requisition As HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "requisition", XMLPROJECTION = "ELEMENT");

Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property category As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

Property priority As %String(MAXLEN = 1000000, XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");

Property doNotPerform As %Boolean(XMLNAME = "doNotPerform", XMLPROJECTION = "ATTRIBUTE");

Property code As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

Property orderDetail As list Of Spain.FHIR.DTL.vR5.Model.Element.ServiceRequest.orderDetail(XMLNAME = "orderDetail", XMLPROJECTION = "ELEMENT");

Property quantityQuantity As HS.FHIR.DTL.vR4.Model.Datatype.Quantity(XMLNAME = "quantityQuantity", XMLPROJECTION = "ELEMENT");

Property quantityRatio As HS.FHIR.DTL.vR4.Model.Datatype.Ratio(XMLNAME = "quantityRatio", XMLPROJECTION = "ELEMENT");

Property quantityRange As HS.FHIR.DTL.vR4.Model.Datatype.Range(XMLNAME = "quantityRange", XMLPROJECTION = "ELEMENT");

Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

Property focus As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");

Property encounter As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

Property occurrencePeriod As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

Property occurrenceTiming As HS.FHIR.DTL.vR4.Model.Datatype.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");

Property asNeededBoolean As %Boolean(XMLNAME = "asNeededBoolean", XMLPROJECTION = "ATTRIBUTE");

Property asNeededCodeableConcept As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "asNeededCodeableConcept", XMLPROJECTION = "ELEMENT");

Property authoredOn As %String(MAXLEN = 1000000, XMLNAME = "authoredOn", XMLPROJECTION = "ATTRIBUTE");

Property requester As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");

Property performerType As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "performerType", XMLPROJECTION = "ELEMENT");

Property performer As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

Property location As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

Property reason As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

Property insurance As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");

Property supportingInfo As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");

Property specimen As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "specimen", XMLPROJECTION = "ELEMENT");

Property bodySite As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

Property bodyStructure As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "bodyStructure", XMLPROJECTION = "ELEMENT");

Property note As list Of HS.FHIR.DTL.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Property patientInstruction As list Of Spain.FHIR.DTL.vR5.Model.Element.ServiceRequest.patientInstruction(XMLNAME = "patientInstruction", XMLPROJECTION = "ELEMENT");

Property relevantHistory As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "relevantHistory", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ServiceRequest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ServiceRequest";

}
