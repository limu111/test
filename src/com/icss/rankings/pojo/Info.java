package com.icss.rankings.pojo;

public class Info {
    private Integer iId;

    private String iName;

    private String iInfo;

    private String iBirthday;

    private Long iLike;

    private String iImg;

    public Integer getiId() {
        return iId;
    }

    public void setiId(Integer iId) {
        this.iId = iId;
    }

    public String getiName() {
        return iName;
    }

    public void setiName(String iName) {
        this.iName = iName == null ? null : iName.trim();
    }

    public String getiInfo() {
        return iInfo;
    }

    public void setiInfo(String iInfo) {
        this.iInfo = iInfo == null ? null : iInfo.trim();
    }

    public String getiBirthday() {
        return iBirthday;
    }

    public void setiBirthday(String iBirthday) {
        this.iBirthday = iBirthday == null ? null : iBirthday.trim();
    }

    public Long getiLike() {
        return iLike;
    }

    public void setiLike(Long iLike) {
        this.iLike = iLike;
    }

    public String getiImg() {
        return iImg;
    }

    public void setiImg(String iImg) {
        this.iImg = iImg == null ? null : iImg.trim();
    }
}