/// Constraints to the base consent decision.
Class Spain.FHIR.DTL.vR5.Model.Element.Consent.provision Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property period As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Property actor As list Of Spain.FHIR.DTL.vR5.Model.Element.Consent.actor(XMLNAME = "actor", XMLPROJECTION = "ELEMENT");

Property action As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "action", XMLPROJECTION = "ELEMENT");

Property securityLabel As list Of HS.FHIR.DTL.vR4.Model.Datatype.Coding(XMLNAME = "securityLabel", XMLPROJECTION = "ELEMENT");

Property purpose As list Of HS.FHIR.DTL.vR4.Model.Datatype.Coding(XMLNAME = "purpose", XMLPROJECTION = "ELEMENT");

Property documentType As list Of HS.FHIR.DTL.vR4.Model.Datatype.Coding(XMLNAME = "documentType", XMLPROJECTION = "ELEMENT");

Property resourceType As list Of HS.FHIR.DTL.vR4.Model.Datatype.Coding(XMLNAME = "resourceType", XMLPROJECTION = "ELEMENT");

Property code As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

Property dataPeriod As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "dataPeriod", XMLPROJECTION = "ELEMENT");

Property data As list Of Spain.FHIR.DTL.vR5.Model.Element.Consent.data(XMLNAME = "data", XMLPROJECTION = "ELEMENT");

Property expression As HS.FHIR.DTL.vR4.Model.Datatype.Expression(XMLNAME = "expression", XMLPROJECTION = "ELEMENT");

Property provision As list Of Spain.FHIR.DTL.vR5.Model.Element.Consent.provision(XMLNAME = "provision", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "provision";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "provision";

}
