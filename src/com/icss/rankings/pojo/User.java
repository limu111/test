package com.icss.rankings.pojo;

public class User {
    private Integer uId;

    private String uName;

    private String uPwd;

    private Short uRole;

    private String uHeader;

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName == null ? null : uName.trim();
    }

    public String getuPwd() {
        return uPwd;
    }

    public void setuPwd(String uPwd) {
        this.uPwd = uPwd == null ? null : uPwd.trim();
    }

    public Short getuRole() {
        return uRole;
    }

    public void setuRole(Short uRole) {
        this.uRole = uRole;
    }

    public String getuHeader() {
        return uHeader;
    }

    public void setuHeader(String uHeader) {
        this.uHeader = uHeader == null ? null : uHeader.trim();
    }
}