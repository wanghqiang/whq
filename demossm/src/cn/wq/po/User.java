package cn.wq.po;

public class User {
    private Integer userId;

    private String userAcount;

    private String userPassword;

    private String userName;

    private String userQQ;

    private String userPhone;

    private String userUniversity;

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

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword == null ? null : userPassword.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserQQ() {
        return userQQ;
    }

    public void setUserQQ(String userQQ) {
        this.userQQ = userQQ == null ? null : userQQ.trim();
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public String getUserUniversity() {
        return userUniversity;
    }

    public void setUserUniversity(String userUniversity) {
        this.userUniversity = userUniversity == null ? null : userUniversity.trim();
    }
}