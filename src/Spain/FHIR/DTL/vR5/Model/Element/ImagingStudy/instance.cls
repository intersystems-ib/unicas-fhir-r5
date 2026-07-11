/// DICOM SOP instance.
Class Spain.FHIR.DTL.vR5.Model.Element.ImagingStudy.instance Extends HS.FHIR.DTL.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

Property uid As %String(MAXLEN = 1000000, XMLNAME = "uid", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property sopClass As HS.FHIR.DTL.vR4.Model.Datatype.Coding(XMLNAME = "sopClass", XMLPROJECTION = "ELEMENT") [ Required ];

Property number As %Integer(XMLNAME = "number", XMLPROJECTION = "ATTRIBUTE");

Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImagingStudy.instance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImagingStudy.instance";

}
