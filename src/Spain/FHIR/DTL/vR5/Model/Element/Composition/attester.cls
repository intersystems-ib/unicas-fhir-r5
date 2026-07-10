/// Attestation details.
Class Spain.FHIR.DTL.vR5.Model.Element.Composition.attester Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property mode As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "mode", XMLPROJECTION = "ELEMENT") [ Required ];

Property time As %String(MAXLEN = 1000000, XMLNAME = "time", XMLPROJECTION = "ATTRIBUTE");

Property party As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "party", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "attester";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "attester";

}
