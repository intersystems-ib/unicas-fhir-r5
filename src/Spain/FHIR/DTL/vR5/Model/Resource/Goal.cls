/// Describes the intended objective(s) for a patient, group or organization.
Class Spain.FHIR.DTL.vR5.Model.Resource.Goal Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

Property lifecycleStatus As %String(MAXLEN = 1000000, XMLNAME = "lifecycleStatus", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property achievementStatus As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "achievementStatus", XMLPROJECTION = "ELEMENT");

Property category As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

Property continuous As %Boolean(XMLNAME = "continuous", XMLPROJECTION = "ATTRIBUTE");

Property priority As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "priority", XMLPROJECTION = "ELEMENT");

Property description As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "description", XMLPROJECTION = "ELEMENT") [ Required ];

Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

Property startDate As %String(MAXLEN = 1000000, XMLNAME = "startDate", XMLPROJECTION = "ATTRIBUTE");

Property startCodeableConcept As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "startCodeableConcept", XMLPROJECTION = "ELEMENT");

Property target As list Of Spain.FHIR.DTL.vR5.Model.Element.Goal.target(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

Property statusDate As %String(MAXLEN = 1000000, XMLNAME = "statusDate", XMLPROJECTION = "ATTRIBUTE");

Property statusReason As %String(MAXLEN = 1000000, XMLNAME = "statusReason", XMLPROJECTION = "ATTRIBUTE");

Property source As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Property addresses As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "addresses", XMLPROJECTION = "ELEMENT");

Property note As list Of HS.FHIR.DTL.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Property outcome As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "outcome", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Goal";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Goal";

}
