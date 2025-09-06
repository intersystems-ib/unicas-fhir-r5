Class Spain.FHIR.DTL.vR5.Model.Datatype.VirtualServiceDetail Extends HS.FHIR.DTL.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// channelType.
/// <p>
Property channelType As HS.FHIR.DTL.vR4.Model.Datatype.Coding(XMLNAME = "channelType", XMLPROJECTION = "ELEMENT");

/// Address
/// <p>
/// An address for the individual.
Property address As Spain.FHIR.DTL.vR5.Model.Datatype.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");

/// URL
/// <p>
/// additionalInfo.
/// <p>
Property additionalInfo As list Of %String(MAXLEN = 1000000, XMLNAME = "additionalInfo", XMLPROJECTION = "ELEMENT");

/// URL
/// <p>
/// addressUrl.
/// <p>
Property maxParticipants As %Integer(XMLNAME = "maxParticipants", XMLPROJECTION = "ATTRIBUTE");

/// URL
/// <p>
/// sessionKey.
/// <p>
Property sessionKey As %String(MAXLEN = 1000000, XMLNAME = "sessionKey", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VirtualServiceDetail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VirtualServiceDetail";

}
