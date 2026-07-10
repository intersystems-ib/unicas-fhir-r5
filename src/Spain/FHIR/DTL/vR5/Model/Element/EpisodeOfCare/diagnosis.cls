/// Medical conditions addressed during the episode.
Class Spain.FHIR.DTL.vR5.Model.Element.EpisodeOfCare.diagnosis Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property condition As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "condition", XMLPROJECTION = "ELEMENT");

Property use As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "use", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "diagnosis";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "diagnosis";

}
