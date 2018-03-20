package cn.wq.po;

public class Administrator {
    private Integer adminId;

    private String adminAcount;

    private String adminPassword;

    private String university;

    private String province;

    private String permission;

    private String adminName;

    private String adminPhone;

    private String adminQQ;

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

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university == null ? null : university.trim();
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province == null ? null : province.trim();
    }

    public String getPermission() {
        return permission;
    }

    public void setPermission(String permission) {
        this.permission = permission == null ? null : permission.trim();
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName == null ? null : adminName.trim();
    }

    public String getAdminPhone() {
        return adminPhone;
    }

    public void setAdminPhone(String adminPhone) {
        this.adminPhone = adminPhone == null ? null : adminPhone.trim();
    }

    public String getAdminQQ() {
        return adminQQ;
    }

    public void setAdminQQ(String adminQQ) {
        this.adminQQ = adminQQ == null ? null : adminQQ.trim();
    }

	@Override
	public String toString() {
		return "Administrator [adminId=" + adminId + ", adminAcount=" + adminAcount + ", adminPassword=" + adminPassword
				+ ", university=" + university + ", province=" + province + ", permission=" + permission
				+ ", adminName=" + adminName + ", adminPhone=" + adminPhone + ", adminQQ=" + adminQQ + "]";
	}
}