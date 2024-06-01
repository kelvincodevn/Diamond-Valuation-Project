/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package group6.dao;

import java.sql.SQLException;

/**
 *
 * @author DELL
 */
public class ErrorRegistration {

    private String userNameLenError = "";
    private String passwordLenError = "";
    private String confirmNotMatch = "";
    private String firstNameLenError = "";
    private String lastNameLenError = "";
    private String emailValidationError = "";
    private String phoneValidationError = "";
    private String accountExisted = "";

    public ErrorRegistration() {
    }

    public boolean checkAccountExisted(String userName) throws SQLException, ClassNotFoundException {
        userName = userName.trim();
        RegistrationDAO dao = new RegistrationDAO();
        boolean result = dao.checkAccountExisted(userName);
        if (result) {
            accountExisted = userName + " is already existed";
            return false;
        }
        return true;
    }

    public boolean checkUserNameLen(String userName, int min, int max) {
        userName = userName.trim();
        if (userName.isEmpty()) {
            userNameLenError = "Username is required";
            return false;
        } else if (userName.length() < min || userName.length() > max) {
            userNameLenError = "Username length must be in range (" + min + "," + max + ")";
            return false;
        } else if (!userName.matches(".*[0-9].*")) {
            userNameLenError = "Username must contain at least a number";
            return false;
        }
        return true;
    }

    public boolean checkPasswordLen(String password, int min, int max) {
        password = password.trim();
        if (password.isEmpty()) {
            passwordLenError = "Password is required";
            return false;
        } else if (password.length() < min || password.length() > max) {
            passwordLenError = "Password length must be in range (" + min + "," + max + ")";
            return false;
        }
        return true;
    }

    public boolean checkConfirmNotMatch(String password, String confirm) {
        password = password.trim();
        confirm = confirm.trim();
        if(password.isEmpty()) {
            confirmNotMatch = "Password confirm is required";
            return false;
        }
        if (!password.equals(confirm)) {
            confirmNotMatch = "Password and confirm must match";
            return false;
        }
        return true;
    }

    public boolean checkFirstNameLen(String firstname, int min, int max) {
        firstname = firstname.trim();
        if (firstname.isEmpty()) {
            firstNameLenError = "Firstname is required";
            return false;
        } else if (firstname.length() < min || firstname.length() > max) {
            firstNameLenError = "Firstname length must be in range (" + min + "," + max + ")";
            return false;
        } else if (!firstname.matches("^([^0-9]*)$")) {
            firstNameLenError = "Firstname should contain only letter characters";
        }
        return true;
    }

    public boolean checkLastNameLen(String lastName, int min, int max) {
        lastName = lastName.trim();
        if (lastName.isEmpty()) {
            lastNameLenError = "Lastname is required";
            return false;
        } else if (lastName.length() < min || lastName.length() > max) {
            lastNameLenError = "Lastname length must be in range (" + min + "," + max + ")";
            return false;
        } else if (!lastName.matches("^([^0-9]*)$")) {
            lastNameLenError = "Lastname should contain only letter characters";
        }
        return true;
    }

    public boolean checkEmailValidation(String email) throws SQLException, ClassNotFoundException {
        email = email.trim();
        if(email.isEmpty()) {
            emailValidationError = "Email is required";
            return false;
        }
        if (!email.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")) {
            emailValidationError = "Please enter a valid email address (include an @ symbol)";
            return false;
        }
        return true;
    }

    public boolean checkPhoneNumberValidation(String phoneNumber) throws SQLException, ClassNotFoundException {
        int i = 0;
        phoneNumber = phoneNumber.trim();
        if(phoneNumber.isEmpty()) {
            phoneValidationError = "Phonenumber is required";
            return false;
        }
        for (i = 0; i < phoneNumber.length(); i++) {
            if (!Character.isDigit(phoneNumber.charAt(i))) {
                phoneValidationError = "Please enter a valid phone number.";
                return false;
            }
        }
        if (i != 10) {
            phoneValidationError = "A valid phone number must have 10 numbers";
            return false;
        }
        return true;
    }

    public String getUserNameLenError() {
        return userNameLenError;
    }

    public String getPasswordLenError() {
        return passwordLenError;
    }

    public String getConfirmNotMatch() {
        return confirmNotMatch;
    }

    public String getFirstNameLenError() {
        return firstNameLenError;
    }

    public String getLastNameLenError() {
        return lastNameLenError;
    }

    public String getAccountExisted() {
        return accountExisted;
    }

    public String getEmailValidationError() {
        return emailValidationError;
    }

    public String getPhoneValidationError() {
        return phoneValidationError;
    }

}
