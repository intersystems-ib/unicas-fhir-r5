/// Each study has one or more series of instances.
Class Spain.FHIR.DTL.vR5.Model.Element.ImagingStudy.series Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property uid As %String(MAXLEN = 1000000, XMLNAME = "uid", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property number As %Integer(XMLNAME = "number", XMLPROJECTION = "ATTRIBUTE");

Property modality As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "modality", XMLPROJECTION = "ELEMENT") [ Required ];

Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

Property numberOfInstances As %Integer(XMLNAME = "numberOfInstances", XMLPROJECTION = "ATTRIBUTE");

Property endpoint As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");

Property bodySite As Spain.FHIR.DTL.vR5.Model.Datatype.CodeableReference(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

Property laterality As HS.FHIR.DTL.vR4.Model.Datatype.CodeableConcept(XMLNAME = "laterality", XMLPROJECTION = "ELEMENT");

Property specimen As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "specimen", XMLPROJECTION = "ELEMENT");

Property started As %String(MAXLEN = 1000000, XMLNAME = "started", XMLPROJECTION = "ATTRIBUTE");

Property performer As list Of HS.FHIR.DTL.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

Property instance As list Of Spain.FHIR.DTL.vR5.Model.Element.ImagingStudy.instance(XMLNAME = "instance", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImagingStudy.series";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImagingStudy.series";

}
