/// Medical reasons expected to be addressed.
Class Spain.FHIR.DTL.vR5.Model.Element.EpisodeOfCare.reason Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property use As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "use", XMLPROJECTION = "ELEMENT");

Property value As list Of Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "value", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EpisodeOfCare.reason";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EpisodeOfCare.reason";

}
