package hs.com.entity;

import java.util.Date;

public class TbCustomer {
    private String customerid;

    private String customername;

    private String customerpwd;

    private String customertruename;

    private String customersex;

    private String customertel;

    private String customeraddr;

    private Date customerregtime;

    private String customerquer;

    private String customeranswer;

    public String getCustomerid() {
        return customerid;
    }

    public void setCustomerid(String customerid) {
        this.customerid = customerid == null ? null : customerid.trim();
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername == null ? null : customername.trim();
    }

    public String getCustomerpwd() {
        return customerpwd;
    }

    public void setCustomerpwd(String customerpwd) {
        this.customerpwd = customerpwd == null ? null : customerpwd.trim();
    }

    public String getCustomertruename() {
        return customertruename;
    }

    public void setCustomertruename(String customertruename) {
        this.customertruename = customertruename == null ? null : customertruename.trim();
    }

    public String getCustomersex() {
        return customersex;
    }

    public void setCustomersex(String customersex) {
        this.customersex = customersex == null ? null : customersex.trim();
    }

    public String getCustomertel() {
        return customertel;
    }

    public void setCustomertel(String customertel) {
        this.customertel = customertel == null ? null : customertel.trim();
    }

    public String getCustomeraddr() {
        return customeraddr;
    }

    public void setCustomeraddr(String customeraddr) {
        this.customeraddr = customeraddr == null ? null : customeraddr.trim();
    }

    public Date getCustomerregtime() {
        return customerregtime;
    }

    public void setCustomerregtime(Date customerregtime) {
        this.customerregtime = customerregtime;
    }

    public String getCustomerquer() {
        return customerquer;
    }

    public void setCustomerquer(String customerquer) {
        this.customerquer = customerquer == null ? null : customerquer.trim();
    }

    public String getCustomeranswer() {
        return customeranswer;
    }

    public void setCustomeranswer(String customeranswer) {
        this.customeranswer = customeranswer == null ? null : customeranswer.trim();
    }
}