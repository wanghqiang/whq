package cn.wq.po;
//管理员实体类
public class Administrator {
    private Integer adminid;

    private String adminacount;

    private String adminpassword;

    private String adminisprimary;

    public Integer getAdminid() {
        return adminid;
    }

    public void setAdminid(Integer adminid) {
        this.adminid = adminid;
    }

    public String getAdminacount() {
        return adminacount;
    }

    public void setAdminacount(String adminacount) {
        this.adminacount = adminacount == null ? null : adminacount.trim();
    }

    public String getAdminpassword() {
        return adminpassword;
    }

    public void setAdminpassword(String adminpassword) {
        this.adminpassword = adminpassword == null ? null : adminpassword.trim();
    }

    public String getAdminisprimary() {
        return adminisprimary;
    }

    public void setAdminisprimary(String adminisprimary) {
        this.adminisprimary = adminisprimary == null ? null : adminisprimary.trim();
    }
}