/// 
Class Spain.BP.FromHL7ToFHIR Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='EnsLib.HL7.Message' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='FHIRMessage' type='%DynamicObject' instantiate='0' />
<property name='immunizationR4' type='HS.FHIR.DTL.vR4.Model.Resource.Immunization' instantiate='0' />
<property name='immunizationR5' type='Spain.FHIR.DTL.vR5.Model.Resource.Immunization' instantiate='0' />
<property name='FHIRRequest' type='HS.FHIRServer.Interop.Request' instantiate='1' />
<property name='FHIRResponse' type='HS.FHIRServer.Interop.Response' instantiate='1' />
<property name='FHIRStream' type='%Stream.Object' instantiate='0' />
</context>
<sequence xend='200' yend='750' >
<code name='HL7 to FHIR R4' xpos='200' ypos='250' >
<annotation><![CDATA[From HL7 message to FHIR R4 Dynamic Object
]]></annotation>
<![CDATA[ 
 do ##class(Spain.Gateway.HL7.HL7ToSDA3).GetSDA(request, .SDAMessageTemp)
 set SDAToFHIR = ##class(HS.FHIR.DTL.Util.API.Transform.SDA3ToFHIR).TransformStream(SDAMessageTemp,"HS.SDA3.Container","R4")
 set context.FHIRMessage = SDAToFHIR.bundle
 $$$TRACE(context.FHIRMessage.%ToJSON())]]>
</code>
<code name='Mapeo de bundle' xpos='200' ypos='350' >
<![CDATA[ set obj = ##class(HS.FHIR.DTL.vR4.Model.Resource.Bundle).FromJSONHelper(context.FHIRMessage, "vR4")

 for i=1:1:obj.entry.Count() {
    set item = obj.entry.GetAt(i)
    if ($CLASSNAME(item.resource) = "HS.FHIR.DTL.vR4.Model.Resource.Immunization")
    {
      Set status = ##class(Spain.FHIR.DTL.vR4.vR5.Immunization).Transform(item.resource, .immunizationR5)            
      Set item.resource = immunizationR5
      Do obj.entry.SetAt(item, i)            
    }
    elseif ($CLASSNAME(item.resource) = "HS.FHIR.DTL.vR4.Model.Resource.AllergyIntolerance")
    {
      Set status = ##class(Spain.FHIR.DTL.vR4.vR5.Allergy.AllergyIntolerance).Transform(item.resource, .allergyIntoleranceR5)            
      Set item.resource = allergyIntoleranceR5
      Do obj.entry.SetAt(item, i)            
    }
    elseif ($CLASSNAME(item.resource) = "HS.FHIR.DTL.vR4.Model.Resource.Encounter")
    {
      Set status = ##class(Spain.FHIR.DTL.vR4.vR5.Encounter).Transform(item.resource, .encounterR5)            
      Set item.resource = encounterR5
      Do obj.entry.SetAt(item, i)            
    }
    elseif ($CLASSNAME(item.resource) = "HS.FHIR.DTL.vR4.Model.Resource.MedicationAdministration")
    {
      Set status = ##class(Spain.FHIR.DTL.vR4.vR5.MedicationAdministration).Transform(item.resource, .medicationAdministrationR5)            
      Set item.resource = medicationAdministrationR5
      Do obj.entry.SetAt(item, i)           
    }
    elseif ($CLASSNAME(item.resource) = "HS.FHIR.DTL.vR4.Model.Resource.MedicationStatement")
    {
      Set status = ##class(Spain.FHIR.DTL.vR4.vR5.MedicationAdministration).Transform(item.resource, .medicationStatementR5)            
      Set item.resource = medicationStatementR5
      Do obj.entry.SetAt(item, i)           
    }
    elseif ($CLASSNAME(item.resource) = "HS.FHIR.DTL.vR4.Model.Resource.Condition")
    {
      Set status = ##class(Spain.FHIR.DTL.vR4.vR5.Condition).Transform(item.resource, .conditionR5)            
      Set item.resource = conditionR5
      Do obj.entry.SetAt(item, i)           
    }
    elseif ($CLASSNAME(item.resource) = "HS.FHIR.DTL.vR4.Model.Resource.Observation")
    {
      Set status = ##class(Spain.FHIR.DTL.vR4.vR5.Observation).Transform(item.resource, .observationR5)            
      Set item.resource = observationR5
      Do obj.entry.SetAt(item, i)           
    }
    elseif ($CLASSNAME(item.resource) = "HS.FHIR.DTL.vR4.Model.Resource.Location")
    {
      Set status = ##class(Spain.FHIR.DTL.vR4.vR5.Location).Transform(item.resource, .locationR5)            
      Set item.resource = locationR5
      Do obj.entry.SetAt(item, i)           
    }
    elseif ($CLASSNAME(item.resource) = "HS.FHIR.DTL.vR4.Model.Resource.Procedure")
    {
      Set status = ##class(Spain.FHIR.DTL.vR4.vR5.Procedure).Transform(item.resource, .procedureR5)            
      Set item.resource = procedureR5
      Do obj.entry.SetAt(item, i)           
    }
    elseif ($CLASSNAME(item.resource) = "HS.FHIR.DTL.vR4.Model.Resource.MedicationRequest")
    {
      Set status = ##class(Spain.FHIR.DTL.vR4.vR5.MedicationRequest).Transform(item.resource, .medicationRequestR5)            
      Set item.resource = medicationRequestR5
      Do obj.entry.SetAt(item, i)           
    }
    elseif ($CLASSNAME(item.resource) = "HS.FHIR.DTL.vR4.Model.Resource.MedicationDispense")
    {
      Set status = ##class(Spain.FHIR.DTL.vR4.vR5.MedicationDispense).Transform(item.resource, .medicationDispenseR5)            
      Set item.resource = medicationDispenseR5
      Do obj.entry.SetAt(item, i)           
    }
    elseif ($CLASSNAME(item.resource) = "HS.FHIR.DTL.vR4.Model.Resource.DocumentReference")
    {
      Set status = ##class(Spain.FHIR.DTL.vR4.vR5.DocumentReference).Transform(item.resource, .documentReferenceR5)            
      Set item.resource = documentReferenceR5
      Do obj.entry.SetAt(item, i)           
    }
 } 
 
 set context.FHIRStream = obj.ToJSON()
 
 set FHIRMessageTemp = obj.ToJSON()
 Set fullString = ""
 While 'FHIRMessageTemp.AtEnd {
     Set fullString = fullString _ FHIRMessageTemp.Read()
 } 
 
 $$$TRACE(fullString)]]>
</code>
<code name='Solicitud a repositorio' xpos='200' ypos='450' >
<![CDATA[ Set context.FHIRRequest.Request.RequestMethod = "POST"
 Set context.FHIRRequest.Request.RequestPath = ""
 Set context.FHIRRequest.Request.RequestFormatCode= "JSON"
 Set context.FHIRRequest.Request.SessionApplication = "/csp/healthshare/fhirserver/fhir/r5"
 Set context.FHIRRequest.Request.IsRecursive = 0
 set qs=##class(HS.SDA3.QuickStream).%New()
 set context.FHIRRequest.QuickStreamId = qs.%Id()
 do qs.CopyFrom(context.FHIRStream)
 ]]>
</code>
<call name='Envío a repositorio' target='HS.FHIRServer.Interop.Operation' async='0' xpos='200' ypos='550' >
<request type='HS.FHIRServer.Interop.Request' >
<assign property="callrequest" value="context.FHIRRequest" action="set" languageOverride="" />
</request>
<response type='HS.FHIRServer.Interop.Response' >
<assign property="context.FHIRResponse" value="callresponse" action="set" languageOverride="" />
</response>
</call>
<code name='Imprime resultado' xpos='200' ypos='650' >
<![CDATA[ Set fullString = ""
 Set quickStreamIn = ##class(HS.SDA3.QuickStream).%OpenId(context.FHIRResponse.QuickStreamId,, .tSC)
 While 'quickStreamIn.AtEnd {
     Set fullString = fullString _ quickStreamIn.Read()
 } 
 
 $$$TRACE(fullString)]]>
</code>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
