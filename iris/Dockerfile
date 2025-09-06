ARG IMAGE=containers.intersystems.com/intersystems/irishealth-community:latest-cd
FROM $IMAGE

USER root

RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get clean

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"

WORKDIR /opt/irisapp
RUN chown -R irisowner:irisowner /opt/irisapp

USER irisowner

# copy files to image
WORKDIR /opt/irisapp
 
COPY --chown=$ISC_PACKAGE_MGRUSER:$ISC_PACKAGE_IRISGROUP /iris/irissession.sh /
RUN chmod +x /irissession.sh

SHELL ["/irissession.sh"]

RUN \
zn "%SYS" \
do ##class(SYS.Container).QuiesceForBundling() \
do ##class(Security.Users).UnExpireUserPasswords("*") 

RUN \
zn "HSLIB" \
Set appKey = "/fhirserver/fhir/r5" \
Set strategyClass = "HS.FHIRServer.Storage.Json.InteractionsStrategy" \
Set metadataConfigKey = $lb("hl7.fhir.r5.core@5.0.0") \
Do ##class(HS.Util.Installer.Foundation).Install("FHIRSERVER") \
zn "FHIRSERVER" \
Do ##class(HS.FHIRServer.Installer).InstallNamespace() \
Do ##class(HS.FHIRServer.Installer).InstallInstance(appKey, strategyClass, metadataConfigKey) \