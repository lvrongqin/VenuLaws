package com.qiming.utils;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Auth extends Authenticator {
    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication("1066596230@qq.com","dlhjogwcixfzbcja");
    }
}

