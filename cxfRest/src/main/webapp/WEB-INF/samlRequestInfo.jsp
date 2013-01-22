<%@ page import="javax.servlet.http.HttpServletRequest,org.apache.cxf.rs.security.saml.sso.SamlRequestInfo,java.util.logging.Logger" %>

<%
    SamlRequestInfo data = (SamlRequestInfo)request.getAttribute("samlrequestinfo");

System.out.println("data.getSamlRequest()--> " + data.getSamlRequest());
System.out.println("data.getRelayState()--> " + data.getRelayState());
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<body onLoad="document.forms[0].submit();">
   <form action="<%= data.getIdpServiceAddress() %>" method="POST">
       <div>             
        <input type="hidden" name="SAMLRequest"
                value="<%= data.getSamlRequest() %>"/>
        <input type="hidden" name="RelayState"
                value="<%= data.getRelayState() %>"/>
       </div>
        <div>
         <input type="submit" value="Continue"/>
       </div>
   </form>
 
</body>
</html>