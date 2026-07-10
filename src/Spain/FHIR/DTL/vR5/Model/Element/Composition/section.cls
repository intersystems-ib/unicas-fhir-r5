/// Section within the composition.
Class Spain.FHIR.DTL.vR5.Model.Element.Composition.section Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

Property code As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

Property author As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

Property focus As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");

Property text As HS.FHIR.DTL.vR4.Model.Base.Narrative(XMLNAME = "text", XMLPROJECTION = "ELEMENT");

Property orderedBy As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "orderedBy", XMLPROJECTION = "ELEMENT");

Property entry As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "entry", XMLPROJECTION = "ELEMENT");

Property emptyReason As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "emptyReason", XMLPROJECTION = "ELEMENT");

Property section As list Of Spain.FHIR.DTL.vR5.Model.Element.Composition.section(XMLNAME = "section", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "section";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "section";

}
