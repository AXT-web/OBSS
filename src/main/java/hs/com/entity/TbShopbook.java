package hs.com.entity;

public class TbShopbook {
    private String shopbookid;

    private String customerid;

    private Integer bookid;

    private Integer ordermount;

    private Float price;

    private String ispay;

    public String getShopbookid() {
        return shopbookid;
    }

    public void setShopbookid(String shopbookid) {
        this.shopbookid = shopbookid == null ? null : shopbookid.trim();
    }

    public String getCustomerid() {
        return customerid;
    }

    public void setCustomerid(String customerid) {
        this.customerid = customerid == null ? null : customerid.trim();
    }

    public Integer getBookid() {
        return bookid;
    }

    public void setBookid(Integer bookid) {
        this.bookid = bookid;
    }

    public Integer getOrdermount() {
        return ordermount;
    }

    public void setOrdermount(Integer ordermount) {
        this.ordermount = ordermount;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getIspay() {
        return ispay;
    }

    public void setIspay(String ispay) {
        this.ispay = ispay == null ? null : ispay.trim();
    }
}