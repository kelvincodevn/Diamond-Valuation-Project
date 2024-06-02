/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import java.io.Serializable;

/**
 *
 * @author DELL
 */
public class RegistrationErrors implements Serializable{
    private String usernameLengthError;
    private String passwordLengthError;
    private String firstnameLengthError;
    private String lastnameLengthError;
    private String usernameIsExisted;
    private String confirmNotMatch;
    private String emailLengthError;
    private String phoneNumberInvalid;
    
    
    public RegistrationErrors() {
    }
    
    

    public String getFirstnameLengthError() {
        return firstnameLengthError;
    }

    public void setFirstnameLengthError(String firstnameLengthError) {
        this.firstnameLengthError = firstnameLengthError;
    }

    public String getLastnameLengthError() {
        return lastnameLengthError;
    }

//    public RegistrationErrors(String usernameLengthError, String passwordLengthError, String firstnameLengthError, String usernameIsExisted, String confirmNotMatch) {
//        this.usernameLengthError = usernameLengthError;
//        this.passwordLengthError = passwordLengthError;
//        this.firstnameLengthError = firstnameLengthError;
//        this.usernameIsExisted = usernameIsExisted;
//        this.confirmNotMatch = confirmNotMatch;
//    }
    public void setLastnameLengthError(String lastnameLengthError) {
        this.lastnameLengthError = lastnameLengthError;
    }

    public String getEmailLengthError() {
        return emailLengthError;
    }

    public void setEmailLengthError(String emailLengthError) {
        this.emailLengthError = emailLengthError;
    }

    public String getUsernameLengthError() {
        return usernameLengthError;
    }
    

    public void setUsernameLengthError(String usernameLengthError) {
        this.usernameLengthError = usernameLengthError;
    }

    public String getPasswordLengthError() {
        return passwordLengthError;
    }

    public void setPasswordLengthError(String passwordLengthError) {
        this.passwordLengthError = passwordLengthError;
    }


    public String getUsernameIsExisted() {
        return usernameIsExisted;
    }

    public void setUsernameIsExisted(String usernameIsExisted) {
        this.usernameIsExisted = usernameIsExisted;
    }

    public String getConfirmNotMatch() {
        return confirmNotMatch;
    }

    public void setConfirmNotMatch(String confirmNotMatch) {
        this.confirmNotMatch = confirmNotMatch;
    }

    public String getPhoneNumberInvalid() {
        return phoneNumberInvalid;
    }

    public void setPhoneNumberInvalid(String phoneNumberInvalid) {
        this.phoneNumberInvalid = phoneNumberInvalid;
    }
    

   

}
