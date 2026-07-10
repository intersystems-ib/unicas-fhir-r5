/// Financial instrument used to reimburse or pay for health care products and services.
Class Spain.FHIR.DTL.vR5.Model.Resource.Coverage Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property kind As %String(MAXLEN = 1000000, XMLNAME = "kind", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property paymentBy As list Of Spain.FHIR.DTL.vR5.Model.Element.Coverage.paymentBy(XMLNAME = "paymentBy", XMLPROJECTION = "ELEMENT");

Property type As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

Property policyHolder As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "policyHolder", XMLPROJECTION = "ELEMENT");

Property subscriber As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subscriber", XMLPROJECTION = "ELEMENT");

Property subscriberId As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "subscriberId", XMLPROJECTION = "ELEMENT");

Property beneficiary As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "beneficiary", XMLPROJECTION = "ELEMENT") [ Required ];

Property dependent As %String(MAXLEN = 1000000, XMLNAME = "dependent", XMLPROJECTION = "ATTRIBUTE");

Property relationship As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");

Property period As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Property insurer As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "insurer", XMLPROJECTION = "ELEMENT");

Property classFHIR As list Of Spain.FHIR.DTL.vR5.Model.Element.Coverage.class(XMLNAME = "class", XMLPROJECTION = "ELEMENT");

Property order As %String(MAXLEN = 1000000, XMLNAME = "order", XMLPROJECTION = "ATTRIBUTE");

Property network As %String(MAXLEN = 1000000, XMLNAME = "network", XMLPROJECTION = "ATTRIBUTE");

Property costToBeneficiary As list Of Spain.FHIR.DTL.vR5.Model.Element.Coverage.costToBeneficiary(XMLNAME = "costToBeneficiary", XMLPROJECTION = "ELEMENT");

Property subrogation As %Boolean(XMLNAME = "subrogation", XMLPROJECTION = "ATTRIBUTE");

Property contract As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "contract", XMLPROJECTION = "ELEMENT");

Property insurancePlan As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "insurancePlan", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Coverage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Coverage";

}
