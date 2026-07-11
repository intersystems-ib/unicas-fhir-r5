/// Additional coverage classifications.
Class Spain.FHIR.DTL.vR5.Model.Element.Coverage.class Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property type As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

Property value As HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "value", XMLPROJECTION = "ELEMENT") [ Required ];

Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Coverage.class";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Coverage.class";

}
