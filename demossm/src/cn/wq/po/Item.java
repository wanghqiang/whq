package cn.wq.po;

import java.util.Date;

public class Item {
    private Integer itemId;

    private String itemName;

    private String TIile;

    private String itemImage;

    private Date time;

    private String itemType;

    private Integer itemNumber;

    private String detail;
    
    private Double itemPrivce;
    
    private String university;

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName == null ? null : itemName.trim();
    }

    public String getTIile() {
        return TIile;
    }

    public void setTIile(String TIile) {
        this.TIile = TIile == null ? null : TIile.trim();
    }

    public String getItemImage() {
        return itemImage;
    }

    public void setItemImage(String itemImage) {
        this.itemImage = itemImage == null ? null : itemImage.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getItemType() {
        return itemType;
    }

    public void setItemType(String itemType) {
        this.itemType = itemType == null ? null : itemType.trim();
    }

    public Integer getItemNumber() {
        return itemNumber;
    }

    public void setItemNumber(Integer itemNumber) {
        this.itemNumber = itemNumber;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail == null ? null : detail.trim();
    }

	public Double getItemPrivce() {
		return itemPrivce;
	}

	public void setItemPrivce(Double itemPrivce) {
		this.itemPrivce = itemPrivce;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}
}