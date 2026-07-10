/// Diagnosis relevant to this account.
Class Spain.FHIR.DTL.vR5.Model.Element.Account.diagnosis Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE");

Property condition As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "condition", XMLPROJECTION = "ELEMENT") [ Required ];

Property dateOfDiagnosis As %String(MAXLEN = 1000000, XMLNAME = "dateOfDiagnosis", XMLPROJECTION = "ATTRIBUTE");

Property type As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

Property onAdmission As %Boolean(XMLNAME = "onAdmission", XMLPROJECTION = "ATTRIBUTE");

Property packageCode As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "packageCode", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "diagnosis";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "diagnosis";

}
