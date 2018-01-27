package cn.wq.po;

public class Administrator {
    private Integer adminId;

    private String adminAcount;

    private String adminPassword;

    private String adminIsPrimary;

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminAcount() {
        return adminAcount;
    }

    public void setAdminAcount(String adminAcount) {
        this.adminAcount = adminAcount == null ? null : adminAcount.trim();
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword == null ? null : adminPassword.trim();
    }

    public String getAdminIsPrimary() {
        return adminIsPrimary;
    }

    public void setAdminIsPrimary(String adminIsPrimary) {
        this.adminIsPrimary = adminIsPrimary == null ? null : adminIsPrimary.trim();
    }
}