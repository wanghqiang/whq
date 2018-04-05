package cn.wq.po;

import java.util.Date;

public class User {
	    private Integer userId;

	    private String userAcount;

	    private String userPassWord;

	    private String userName;

	    private String userImg;

	    private String userSex;

	    private String userLocation;

	    private Date userTime;

	    private String userEmail;

	    public Integer getUserId() {
	        return userId;
	    }

	    public void setUserId(Integer userId) {
	        this.userId = userId;
	    }

	    public String getUserAcount() {
	        return userAcount;
	    }

	    public void setUserAcount(String userAcount) {
	        this.userAcount = userAcount == null ? null : userAcount.trim();
	    }

	    public String getUserPassWord() {
	        return userPassWord;
	    }

	    public void setUserPassWord(String userPassWord) {
	        this.userPassWord = userPassWord == null ? null : userPassWord.trim();
	    }

	    public String getUserName() {
	        return userName;
	    }

	    public void setUserName(String userName) {
	        this.userName = userName == null ? null : userName.trim();
	    }

	    public String getUserImg() {
	        return userImg;
	    }

	    public void setUserImg(String userImg) {
	        this.userImg = userImg == null ? null : userImg.trim();
	    }

	    public String getUserSex() {
	        return userSex;
	    }

	    public void setUserSex(String userSex) {
	        this.userSex = userSex == null ? null : userSex.trim();
	    }

	    public String getUserLocation() {
	        return userLocation;
	    }

	    public void setUserLocation(String userLocation) {
	        this.userLocation = userLocation == null ? null : userLocation.trim();
	    }

	    public Date getUserTime() {
	        return userTime;
	    }

	    public void setUserTime(Date userTime) {
	        this.userTime = userTime;
	    }

	    public String getUserEmail() {
	        return userEmail;
	    }

	    public void setUserEmail(String userEmail) {
	        this.userEmail = userEmail == null ? null : userEmail.trim();
	    }
	
}