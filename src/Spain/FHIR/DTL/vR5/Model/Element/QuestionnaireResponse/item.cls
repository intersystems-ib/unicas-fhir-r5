/// Group or question item.
Class Spain.FHIR.DTL.vR5.Model.Element.QuestionnaireResponse.item Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property linkId As %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property definition As %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ATTRIBUTE");

Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

Property answer As list Of Spain.FHIR.DTL.vR5.Model.Element.QuestionnaireResponse.answer(XMLNAME = "answer", XMLPROJECTION = "ELEMENT");

Property item As list Of Spain.FHIR.DTL.vR5.Model.Element.QuestionnaireResponse.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "item";

}
