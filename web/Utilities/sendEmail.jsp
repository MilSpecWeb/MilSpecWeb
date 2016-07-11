<%-- 
    Document   : sendEmail
    Created on : Jul 8, 2016, 1:02:34 PM
    Author     : William
--%>

<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="Com.Email.Email"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    MimeMessage message;
    Email email = new Email(
            null,
            request.getParameter("To"),
            request.getParameter("From"),
            request.getParameter("Subject"),
            request.getParameter("Text"),
            request.getRemoteHost(),
            System.getProperties()                  
    );
    email.sendMessage();
    response.
    response.sendRedirect("/Home/Index.jsp/");
    
%>