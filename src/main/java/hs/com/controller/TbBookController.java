package hs.com.controller;

import hs.com.common.ResponseCode;
import hs.com.common.ServerResponse;
import hs.com.entity.TbBook;
import hs.com.service.TbBookService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller //这是控制器的的注解，代码当前类为一个控制器
@RequestMapping("/TbBook")  //这个注解表示控制器的映射的地址为服务器地址+TbBook
public class TbBookController {
    @Resource(name="TbBookServiceImpl")  //这个注解表示自动注入TbBookServiceImpl业务实现类

    @Autowired      //该注解表示后紧跟的变量进行封装，即自动产生getter和setter
    private TbBookService TbBookService;

    @RequestMapping("/delete")
    @ResponseBody
    public ServerResponse deleteByPrimaryKey(Integer id){
        System.out.println("test-delete");

        if(TbBookService.deleteByPrimaryKey(id)>0){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }

    @RequestMapping("/insert")
    @ResponseBody
    public ServerResponse insert(TbBook record){//管理员的信息应该是由客户端传送过来
        TbBook tbBook=new TbBook();
        tbBook.setBookid(record.getBookid());
        tbBook.setBooktypeid(record.getBooktypeid());
        tbBook.setBookname(record.getBookname());
        tbBook.setBookpress(record.getBookpress());
        tbBook.setBookauthor(record.getBookauthor());
        tbBook.setBooktanslor(record.getBooktanslor());
        tbBook.setBookprice(record.getBookprice());
        tbBook.setBookpages(record.getBookpages());
        tbBook.setBookoutline(record.getBookoutline());
        tbBook.setBookdealmount(record.getBookdealmount());
        tbBook.setBooklookmount(record.getBooklookmount());
        tbBook.setBookstoremount(record.getBookstoremount());
        if(TbBookService.insert(tbBook)>0){
            return ServerResponse.createBySuccess("添加数据成功",tbBook);
        }else{
            return ServerResponse.createByError();
        }
//        return null;
    }

    @RequestMapping("/insertSelective")
    @ResponseBody
    public ServerResponse insertSelective(TbBook record){
        TbBook tbBook=new TbBook();
        tbBook.setBookid(record.getBookid());
        tbBook.setBooktypeid(record.getBooktypeid());
        tbBook.setBookname(record.getBookname());
        tbBook.setBookpress(record.getBookpress());
        tbBook.setBookauthor(record.getBookauthor());
        tbBook.setBooktanslor(record.getBooktanslor());
        tbBook.setBookprice(record.getBookprice());
        tbBook.setBookpages(record.getBookpages());
        tbBook.setBookoutline(record.getBookoutline());
        tbBook.setBookdealmount(record.getBookdealmount());
        tbBook.setBooklookmount(record.getBooklookmount());
        tbBook.setBookstoremount(record.getBookstoremount());
        if(TbBookService.insert(tbBook)>0){
            return ServerResponse.createBySuccess("添加书籍数据成功",tbBook);
        }else{
            return ServerResponse.createByErrorMessage("添加书籍数据失败");
        }
//        return null;
    }

    @RequestMapping("/selectByPrimaryKey")
    @ResponseBody
    public ServerResponse selectByPrimaryKey(HttpServletRequest request, HttpServletResponse response) throws IOException {
        TbBook tbBook=TbBookService.selectByPrimaryKey(2020120101);
        System.out.println(tbBook.getBookauthor()+"==="+tbBook.getBookname());
        if(tbBook != null){
            return ServerResponse.createBySuccess(1);
        }else{

            return ServerResponse.createByErrorMessage("找不到书籍");
        }
    }

    @RequestMapping("/listall")
    @ResponseBody
    public ServerResponse listall(HttpServletRequest request, HttpServletResponse response){
        List<TbBook> tbBooklist=TbBookService.selectAll();
        if(tbBooklist.size()>0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("找不到书籍信息");
        }
//        return null;
    }

    @RequestMapping("/updateByPrimaryKeySelective")
    @ResponseBody
    public ServerResponse updateByPrimaryKeySelective(TbBook record){
        TbBook tbBook=new TbBook();
        tbBook.setBookid(record.getBookid());
        tbBook.setBooktypeid(record.getBooktypeid());
        tbBook.setBookname(record.getBookname());
        tbBook.setBookpress(record.getBookpress());
        tbBook.setBookauthor(record.getBookauthor());
        tbBook.setBooktanslor(record.getBooktanslor());
        tbBook.setBookprice(record.getBookprice());
        tbBook.setBookpages(record.getBookpages());
        tbBook.setBookoutline(record.getBookoutline());
        tbBook.setBookdealmount(record.getBookdealmount());
        tbBook.setBooklookmount(record.getBooklookmount());
        tbBook.setBookstoremount(record.getBookstoremount());
        if(TbBookService.updateByPrimaryKeySelective(tbBook)>0){
            return ServerResponse.createBySuccess("更新书籍数据成功",tbBook);
        }else{
            return ServerResponse.createByErrorMessage("更新书籍数据失败");
        }
    }

    @RequestMapping("/updateByPrimaryKey")
    @ResponseBody
    public ServerResponse updateByPrimaryKey(TbBook record){
        TbBook tbBook=new TbBook();
        tbBook.setBookid(record.getBookid());
        tbBook.setBooktypeid(record.getBooktypeid());
        tbBook.setBookname(record.getBookname());
        tbBook.setBookpress(record.getBookpress());
        tbBook.setBookauthor(record.getBookauthor());
        tbBook.setBooktanslor(record.getBooktanslor());
        tbBook.setBookprice(record.getBookprice());
        tbBook.setBookpages(record.getBookpages());
        tbBook.setBookoutline(record.getBookoutline());
        tbBook.setBookdealmount(record.getBookdealmount());
        tbBook.setBooklookmount(record.getBooklookmount());
        tbBook.setBookstoremount(record.getBookstoremount());
        if(TbBookService.updateByPrimaryKeySelective(tbBook)>0){
            return ServerResponse.createBySuccess("更新书籍数据成功",tbBook);
        }else{
            return ServerResponse.createByErrorMessage("更新书籍数据失败");
        }
    }
    @RequestMapping("/selectid")
    @ResponseBody
    public ServerResponse selectid(@Param("BookId") String BookId){
        System.out.println(BookId);
        List<TbBook> tbBooklist = TbBookService.selectid(BookId);

        if (tbBooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }
    @RequestMapping("/selectname")
    @ResponseBody
    public ServerResponse selectname(@Param("BookName") String BookName){
        List<TbBook> tbBooklist = TbBookService.selectname(BookName);
        if (tbBooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
//        return null;
    }
    @RequestMapping("/selectnamebyBookDealmountdesc")           //类似名字查询按BookDealmount降序
    @ResponseBody
    public ServerResponse selectnamebyBookDealmountdesc(@Param("BookName") String BookName){
        List<TbBook> tbBooklist = TbBookService.selectnamebyBookDealmountdesc(BookName);
        if (tbBooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }
    @RequestMapping("/selectnamebyBookDealmountasc")               //类似名字查询按BookDealmount升序
    @ResponseBody
    public ServerResponse selectnamebyBookDealmountasc(@Param("BookName") String BookName){
        List<TbBook> tbBooklist = TbBookService.selectnamebyBookDealmountasc(BookName);
        if (tbBooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/selectnamebyBookLookmountdesc")               //类似名字查询按BookLookmount降序
    @ResponseBody
    public ServerResponse selectnamebyBookLookmountdesc(@Param("BookName") String BookName){
        List<TbBook> tbBooklist = TbBookService.selectnamebyBookLookmountdesc(BookName);
        if (tbBooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }
    @RequestMapping("/selectnamebyBookLookmountasc")                //类似名字查询按BookLookmount升序
    @ResponseBody
    public ServerResponse selectnamebyBookLookmountasc(@Param("BookName") String BookName){
        List<TbBook> tbBooklist = TbBookService.selectnamebyBookLookmountasc(BookName);
        if (tbBooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/selectnamebyBookStoremountdesc")              //类似名字查询按BookStoremount降序
    @ResponseBody
    public ServerResponse selectnamebyBookStoremountdesc(@Param("BookName") String BookName){
        List<TbBook> tbBooklist = TbBookService.selectnamebyBookStoremountdesc(BookName);
        if (tbBooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }
    @RequestMapping("/selectnamebyBookStoremountasc")           //类似名字查询按BookStoremount升序
    @ResponseBody
    public ServerResponse selectnamebyBookStoremountasc(@Param("BookName") String BookName){
        System.out.println(BookName);
        List<TbBook> tbBooklist = TbBookService.selectnamebyBookStoremountasc(BookName);
        if (tbBooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/selectAll")           //类似名字查询按BookStoremount升序
    @ResponseBody
    public ServerResponse selectAll(){
        List<TbBook> tbBooklist = TbBookService.selectAll();
        if (tbBooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/updatabook")
    @ResponseBody
    public ServerResponse updatabook(@Param("bookid") Integer bookid, @Param("booktypeid") Integer booktypeid,@Param("bookname") String bookname, @Param("bookpress") String bookpress,@Param("bookpages") Integer bookpages, @Param("bookauthor") String bookauthor,@Param("booktanslor") String booktanslor, @Param("bookprice") Integer bookprice,@Param("bookoutline") String bookoutline, @Param("bookdealmount") Integer bookdealmount,@Param("booklookmount") Integer booklookmount,@Param("bookstoremount") Integer bookstoremount){//管理员的信息应该是由客户端传送过来
        if(TbBookService.updatabook( bookid, booktypeid,  bookname,  bookpress, bookpages,  bookauthor, booktanslor,   bookprice, bookoutline, bookdealmount, booklookmount, bookstoremount)!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("更新失败");
        }
//        return null;
    }


//    图片上传功能
    @RequestMapping("/uploadimg")
    @ResponseBody
    public ServerResponse uploadimg(String imgname, MultipartFile myfile) throws IOException {
        System.out.println("下面");
        System.out.println(myfile.getOriginalFilename());
        System.out.println(imgname);
        String path="E:\\idea_text\\OBSS\\src\\main\\webapp\\upload\\"+imgname+".jpg";
        File file=new File(path);
        myfile.transferTo(file);
        if(myfile!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("上传失败");
        }
    }

    @RequestMapping("/addbook")
    @ResponseBody
    public ServerResponse addbook(@Param("bookid") Integer bookid, @Param("booktypeid") Integer booktypeid,@Param("bookname") String bookname, @Param("bookpress") String bookpress,@Param("bookpages") Integer bookpages, @Param("bookauthor") String bookauthor,@Param("booktanslor") String booktanslor, @Param("bookprice") Integer bookprice,@Param("bookoutline") String bookoutline, @Param("bookdealmount") Integer bookdealmount,@Param("booklookmount") Integer booklookmount,@Param("bookstoremount") Integer bookstoremount){//管理员的信息应该是由客户端传送过来
        if(TbBookService.addbook( bookid, booktypeid,  bookname,  bookpress, bookpages,  bookauthor, booktanslor,   bookprice, bookoutline, bookdealmount, booklookmount, bookstoremount)!=0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("添加失败");
        }
    }

    @RequestMapping("/deletebookforid")
    @ResponseBody
    public ServerResponse deletebookforid(@Param("bookid") Integer bookid){
        if(TbBookService.deletebookforid(bookid)>0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }
    @RequestMapping("/selectbooktypeid")
    @ResponseBody
    public ServerResponse selectbooktypeid(@Param("booktypeid") Integer booktypeid){
        List<TbBook> tbBooklist = TbBookService.selectbooktypeid(booktypeid);
        if (tbBooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
//        return null;
    }
}
