/// Members of the care team.
Class Spain.FHIR.DTL.vR5.Model.Element.CareTeam.participant Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property role As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");

Property member As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "member", XMLPROJECTION = "ELEMENT");

Property onBehalfOf As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "onBehalfOf", XMLPROJECTION = "ELEMENT");

Property coveragePeriod As HS.FHIR.DTL.vR4.Model.Datatype.Period(XMLNAME = "coveragePeriod", XMLPROJECTION = "ELEMENT");

Property coverageTiming As HS.FHIR.DTL.vR4.Model.Datatype.Timing(XMLNAME = "coverageTiming", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "participant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "participant";

}
