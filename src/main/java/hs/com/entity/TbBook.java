package hs.com.entity;

public class TbBook {
    private Integer bookid;

    private Integer booktypeid;

    private String bookname;

    private String bookpress;

    private String bookauthor;

    private String booktanslor;

    private Integer bookprice;

    private Integer bookpages;

    private String bookoutline;

    private Integer bookdealmount;

    private Integer booklookmount;

    private Integer bookstoremount;

    public Integer getBookid() {
        return bookid;
    }

    public void setBookid(Integer bookid) {
        this.bookid = bookid;
    }

    public Integer getBooktypeid() {
        return booktypeid;
    }

    public void setBooktypeid(Integer booktypeid) {
        this.booktypeid = booktypeid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname == null ? null : bookname.trim();
    }

    public String getBookpress() {
        return bookpress;
    }

    public void setBookpress(String bookpress) {
        this.bookpress = bookpress == null ? null : bookpress.trim();
    }

    public String getBookauthor() {
        return bookauthor;
    }

    public void setBookauthor(String bookauthor) {
        this.bookauthor = bookauthor == null ? null : bookauthor.trim();
    }

    public String getBooktanslor() {
        return booktanslor;
    }

    public void setBooktanslor(String booktanslor) {
        this.booktanslor = booktanslor == null ? null : booktanslor.trim();
    }

    public Integer getBookprice() {
        return bookprice;
    }

    public void setBookprice(Integer bookprice) {
        this.bookprice = bookprice;
    }

    public Integer getBookpages() {
        return bookpages;
    }

    public void setBookpages(Integer bookpages) {
        this.bookpages = bookpages;
    }

    public String getBookoutline() {
        return bookoutline;
    }

    public void setBookoutline(String bookoutline) {
        this.bookoutline = bookoutline == null ? null : bookoutline.trim();
    }

    public Integer getBookdealmount() {
        return bookdealmount;
    }

    public void setBookdealmount(Integer bookdealmount) {
        this.bookdealmount = bookdealmount;
    }

    public Integer getBooklookmount() {
        return booklookmount;
    }

    public void setBooklookmount(Integer booklookmount) {
        this.booklookmount = booklookmount;
    }

    public Integer getBookstoremount() {
        return bookstoremount;
    }

    public void setBookstoremount(Integer bookstoremount) {
        this.bookstoremount = bookstoremount;
    }
}