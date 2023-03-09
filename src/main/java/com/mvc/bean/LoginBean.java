package com.mvc.bean;

public class LoginBean {
	private String UserID;
    private String password;

   public String getUserID() {
       return UserID;
    }
   public void setUserID(String UserID) {
       this.UserID = UserID;
    }
    public String getPassword() {
       return password;
    }
    public void setPassword(String password) {
       this.password = password;
    }

}
