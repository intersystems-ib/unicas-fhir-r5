Class Spain.FHIR.DTL.vR5.Model.Datatype.Address Extends HS.FHIR.DTL.vR4.Model.Base.Element
{

/// String
/// <p>
/// addressUrl.
/// <p>
Property addressUrl As %String(MAXLEN = 1000000, XMLNAME = "addressUrl", XMLPROJECTION = "ATTRIBUTE");

/// String
/// <p>
/// addressUrl.
/// <p>
Property addressString As %String(MAXLEN = 1000000, XMLNAME = "addressString", XMLPROJECTION = "ATTRIBUTE");

/// ContactPoint
/// <p>
/// addressContactPoint.
Property addressContactPoint As list Of HS.FHIR.DTL.vR4.Model.Datatype.ContactPoint(XMLNAME = "addressContactPoint", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// addressExtendedContactDetail.
Property addressExtendedContactDetail As list Of Spain.FHIR.DTL.vR5.Model.Datatype.ExtendedContactDetail(XMLNAME = "addressContactPoint", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Address";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Address";

}
