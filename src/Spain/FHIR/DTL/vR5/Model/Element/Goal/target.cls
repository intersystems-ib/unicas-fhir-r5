/// Target outcome for the goal.
Class Spain.FHIR.DTL.vR5.Model.Element.Goal.target Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property measure As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "measure", XMLPROJECTION = "ELEMENT");

Property detailQuantity As HS.FHIR.DTL.vR4.Model.Datatype.Quantity(XMLNAME = "detailQuantity", XMLPROJECTION = "ELEMENT");

Property detailRange As HS.FHIR.DTL.vR4.Model.Datatype.Range(XMLNAME = "detailRange", XMLPROJECTION = "ELEMENT");

Property detailCodeableConcept As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "detailCodeableConcept", XMLPROJECTION = "ELEMENT");

Property detailString As %String(MAXLEN = 1000000, XMLNAME = "detailString", XMLPROJECTION = "ATTRIBUTE");

Property detailBoolean As %Boolean(XMLNAME = "detailBoolean", XMLPROJECTION = "ATTRIBUTE");

Property detailInteger As %Integer(XMLNAME = "detailInteger", XMLPROJECTION = "ATTRIBUTE");

Property detailRatio As HS.FHIR.DTL.vR4.Model.Datatype.Ratio(XMLNAME = "detailRatio", XMLPROJECTION = "ELEMENT");

Property dueDate As %String(MAXLEN = 1000000, XMLNAME = "dueDate", XMLPROJECTION = "ATTRIBUTE");

Property dueDuration As HS.FHIR.DTL.vR4.Model.Datatype.Duration(XMLNAME = "dueDuration", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Goal.target";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Goal.target";

}
