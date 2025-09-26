# UNICAS FHIR R5

## Summary

This project implements FHIR R5 resources used for ÚNICAS for InterSystems FHIR repository and transformation between R4 resource and R5

* What is ÚNICAS?
ÚNICAS is a project promoted by the Ministry of Health of Spain to for the care and treatment of rare diseases. A central node is implemented to share clinical information among autonomous regional services. Each autonomous region has to implement his own node to retrieve clinical information from patients and share it with the central node.

[ÚNICAS IG](https://unicas-fhir.sanidad.gob.es/index.html) has defined a subgroup of FHIR resources to be used for the implementation:
![image](https://github.com/intersystems-ib/unicas-fhir-r5/blob/main/images/unicas_resources.png)

## What are you going to find in this project?
### FHIR resources ObjectScript classes
* All the resources required for ÚNICAS implementation have been developed, you can find it under: **Spain.FHIR.DTL.vR5.Model** package.

![image](https://github.com/intersystems-ib/unicas-fhir-r5/blob/main/images/resources_package.png)

### Transformations between R4 and R5 resources
* The automatic transformation between HL7 and FHIR only works for FHIR R4, so all the transformations required to translate R4 resources to R5 have been implemented. The transformations are located in: **Spain.FHIR.DTL.vR4.vR5** package.

![image](https://github.com/intersystems-ib/unicas-fhir-r5/blob/main/images/transformations_package.png)

### Minor updates in standard code:
* **Spain.FHIR.DTL.SDA3.vR4.Vaccination** and **Spain.FHIR.DTL.Util.API.Transform.SDA3ToFHIR** classes fix a minor bug in the mapping between SDA3 class and Vaccination resource.
* **Spain.FHIR.DTL.Util.API.Transform.SDA3ToFHIR** class add support to RAS_O17 HL7 messages.

### Business Process
* **Spain.BP.FromHL7ToFHIR** is a BPL class developed as an example about how to get a HL7 message, transform it into SDA3 message in a first step, translate it into R4 bundle resource and transform it to R5.

## Installing ÚNICAS packages in FHIR repository

ÚNICAS IG has defined his own package with 3 dependencies that you need to import:
* "hl7.terminology.r5" : "6.5.0",
* "hl7.fhir.uv.extensions.r5" : "5.2.0",
* "hl7.fhir.uv.ips" : "1.1.0"
There is a problem with the *hl7.fhir.uv.ips* importation, this package is only published for FHIR R4, if you try to import it into a R5 server you'll get a compatibility error, to allow the importation is required to remove that package from the dependences.
The command for packages instalation is (WARNING!! PACKAGES NOT INCLUDED!!):
```
do ##class(HS.FHIRMeta.Load.NpmLoader).importPackages($lb("/iris-shared/packages/hl7.terminology.r5-6.5.0/package", "/iris-shared/packages/hl7.fhir.uv.extensions.r5-5.2.0/package","/iris-shared/packages/full-ig/package"))
```

## FHIR Repository
* This project deployes a FHIR Repository and a namespace called FHIRSERVER, after the package import you've to configure the custom packages to be used for the repository. To manage all the requests from the interoperability production you've to include the business service **HS.FHIRServer.Interop.Service** and business operation **HS.FHIRServer.Interop.Operation**. As soon as you configure the FHIRSERVER production with you'll be able to define the FHIR Server Service Configuration:

![image](https://github.com/intersystems-ib/unicas-fhir-r5/blob/main/images/fhir_server.png)

Now, you are ready to implement your ÚNICAS project!
