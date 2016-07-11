/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Com.Email;
import java.io.*; 
import java.util.*; 
import javax.mail.*;
import javax.mail.internet.*; 
import javax.activation.*;
import javax.servlet.http.*; 
import javax.servlet.*;
/**
 *
 * @author William
 */
public class Email {
    private String result,
            to,
            from,
            subject,
            text, 
            host;
    private Properties properties;
    private Session session;
    private MimeMessage message;
    public boolean isSent = false;
    public Email(){
        result = null;
        to = null;
        from = null;
        subject = null;
        text = null;
        host = null;
        properties = null;
        session = null;
        message = null;
    }
    public Email(String result, String to, String from, String subject, String text, String host, Properties properties){
        this.result = result;
        this.to = to;
        this.from = from;
        this.subject = subject;
        this.text = text;
        this.host = host;
        this.properties = properties;

    }

    public String getFrom() {
        return from;
    }

    public String getHost() {
        return host;
    }


    public MimeMessage getMessage() {
        return message;
    }

    public Properties getProperties() {
        return properties;
    }

    public String getResult() {
        return result;
    }

    public Session getSession() {
        return session;
    }

    public String getTo() {
        return to;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public void setHost(String host) {
        this.host = host;
    }


    public void setMessage(MimeMessage message) {
        this.message = message;
    }

    public void setProperties(Properties properties) {
        this.properties = properties;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public void setSession(Session session) {
        this.session = session;
    }

    public void setTo(String to) {
        this.to = to;
    }
    
    public void sendMessage(){
        try{
                properties.setProperty("mail.smtp.host", host);
                session = Session.getDefaultInstance(properties);
                message = new MimeMessage(session);
                message.setFrom(new InternetAddress(from));
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                message.setSubject(subject);
                message.setText(text);
                Transport.send(message);
                result = "Message sent";
                isSent = true;
        } catch(MessagingException mexican){
            isSent = false;
            result = mexican.getMessage();
        }
    }
    
}
