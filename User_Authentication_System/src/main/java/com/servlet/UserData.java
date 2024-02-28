package com.servlet;

public class UserData {
    private String fullName;
    private String mobileNo;
    private String emailId;
    private String userName;
    private String password;

    // Constructors

    public UserData() {
        // Default constructor
    }

    public UserData(String fullName, String mobileNo, String emailId, String userName, String password) {
        this.fullName = fullName;
        this.mobileNo = mobileNo;
        this.emailId = emailId;
        this.userName = userName;
        this.password = password;
    }

    // Getter and Setter methods

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String string) {
        this.mobileNo = string;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
