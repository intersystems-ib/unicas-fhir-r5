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
</context>
<sequence xend='200' yend='450' >
<code name='HL7 to FHIR R4' xpos='200' ypos='250' >
<annotation><![CDATA[From HL7 message to FHIR R4 Dynamic Object
]]></annotation>
<![CDATA[ 
 do ##class(Spain.Gateway.HL7.HL7ToSDA3).GetSDA(request, .SDAMessageTemp)
 set SDAToFHIR = ##class(HS.FHIR.DTL.Util.API.Transform.SDA3ToFHIR).TransformStream(SDAMessageTemp,"HS.SDA3.Container","R4")
 set context.FHIRMessage = SDAToFHIR.bundle]]>
</code>
<code name='Mapeo de bundle a R5' xpos='200' ypos='350' >
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
 } 
 
 set FHIRMessageTemp = obj.ToJSON()
 Set fullString = ""
 While 'FHIRMessageTemp.AtEnd {
     Set fullString = fullString _ FHIRMessageTemp.Read()
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
