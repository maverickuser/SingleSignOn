This project can be used to acheive Single Sign On using forgerock OpenAM (opensso) as the identity provider and this project code as Service provider
It uses SAML2.0 token (HTTPPOSt Binding) and the default certificates that comes with openAM

This Project implements a CXF rest service which validate a SAML2 token before the endpoint is invoked

There will be certain configurartion required for OpenAM
1) Configuring the instance of openAM as Identity Provider
2) Configuring the rest Service Endpoiint as Service provider an providing the Servide provider Metadata as below

SP MetaData:
<md:EntityDescriptor xmlns:md="urn:oasis:names:tc:SAML:2.0:metadata" entityID="http://localhost:8080/cxfRest-1.0.0/">
<md:SPSSODescriptor AuthnRequestsSigned="false" WantAssertionsSigned="false" protocolSupportEnumeration="urn:oasis:names:tc:SAML:2.0:protocol">
<md:NameIDFormat>urn:oasis:names:tc:SAML:2.0:nameid-format:transient</md:NameIDFormat>
<md:AssertionConsumerService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST" Location="http://localhost:8080/cxfRest-1.0.0/racs/sso" index="0"/>
</md:SPSSODescriptor>
</md:EntityDescriptor>