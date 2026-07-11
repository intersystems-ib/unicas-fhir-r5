/// Collection details.
Class Spain.FHIR.DTL.vR5.Model.Element.Specimen.collection Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property collector As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "collector", XMLPROJECTION = "ELEMENT");

Property collectedDateTime As %String(MAXLEN = 1000000, XMLNAME = "collectedDateTime", XMLPROJECTION = "ATTRIBUTE");

Property collectedPeriod As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "collectedPeriod", XMLPROJECTION = "ELEMENT");

Property duration As HS.FHIR.DTL.vR4.Model.Datatype.Duration(XMLNAME = "duration", XMLPROJECTION = "ELEMENT");

Property quantity As HS.FHIR.DTL.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

Property method As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");

Property device As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "device", XMLPROJECTION = "ELEMENT");

Property procedure As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "procedure", XMLPROJECTION = "ELEMENT");

Property bodySite As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

Property fastingStatusCodeableConcept As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fastingStatusCodeableConcept", XMLPROJECTION = "ELEMENT");

Property fastingStatusDuration As HS.FHIR.DTL.vR4.Model.Datatype.Duration(XMLNAME = "fastingStatusDuration", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Specimen.collection";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Specimen.collection";

}
