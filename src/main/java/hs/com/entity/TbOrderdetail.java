package hs.com.entity;

public class TbOrderdetail {
    private String orderdetailld;

    private String id;

    private String orderid;

    private Integer bookid;

    private Integer ordermount;

    private String poststatus;

    private String recevstatus;

    private String sigletotalprice;

    public String getOrderdetailld() {
        return orderdetailld;
    }

    public void setOrderdetailld(String orderdetailld) {
        this.orderdetailld = orderdetailld == null ? null : orderdetailld.trim();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid == null ? null : orderid.trim();
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

    public String getPoststatus() {
        return poststatus;
    }

    public void setPoststatus(String poststatus) {
        this.poststatus = poststatus == null ? null : poststatus.trim();
    }

    public String getRecevstatus() {
        return recevstatus;
    }

    public void setRecevstatus(String recevstatus) {
        this.recevstatus = recevstatus == null ? null : recevstatus.trim();
    }

    public String getSigletotalprice() {
        return sigletotalprice;
    }

    public void setSigletotalprice(String sigletotalprice) {
        this.sigletotalprice = sigletotalprice == null ? null : sigletotalprice.trim();
    }
}