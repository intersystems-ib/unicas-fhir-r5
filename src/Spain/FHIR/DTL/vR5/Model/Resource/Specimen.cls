/// Sample for analysis.
Class Spain.FHIR.DTL.vR5.Model.Resource.Specimen Extends HS.FHIR.DTL.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

Property identifier As list Of HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

Property accessionIdentifier As HS.FHIR.DTL.vR4.Model.Datatype.Identifier(XMLNAME = "accessionIdentifier", XMLPROJECTION = "ELEMENT");

Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

Property type As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

Property subject As HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

Property receivedTime As %String(MAXLEN = 1000000, XMLNAME = "receivedTime", XMLPROJECTION = "ATTRIBUTE");

Property parent As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "parent", XMLPROJECTION = "ELEMENT");

Property request As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");

Property combined As %String(MAXLEN = 1000000, XMLNAME = "combined", XMLPROJECTION = "ATTRIBUTE");

Property role As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");

Property feature As list Of Spain.FHIR.DTL.vR5.Model.Element.Specimen.feature(XMLNAME = "feature", XMLPROJECTION = "ELEMENT");

Property collection As Spain.FHIR.DTL.vR5.Model.Element.Specimen.collection(XMLNAME = "collection", XMLPROJECTION = "ELEMENT");

Property processing As list Of Spain.FHIR.DTL.vR5.Model.Element.Specimen.processing(XMLNAME = "processing", XMLPROJECTION = "ELEMENT");

Property container As list Of Spain.FHIR.DTL.vR5.Model.Element.Specimen.container(XMLNAME = "container", XMLPROJECTION = "ELEMENT");

Property condition As list Of HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "condition", XMLPROJECTION = "ELEMENT");

Property note As list Of HS.FHIR.DTL.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Specimen";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Specimen";

}
