package hs.com.controller;

import hs.com.common.ResponseCode;
import hs.com.common.ServerResponse;
import hs.com.entity.TbBook;
import hs.com.entity.TbShopbook;
import hs.com.service.TbShopbookService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller //这是控制器的的注解，代码当前类为一个控制器
@RequestMapping("/TbShopbook")  //这个注解表示控制器的映射的地址为服务器地址+TbShopbook
public class TbShopbookController {

    @Resource(name="TbShopbookServiceImpl")  //这个注解表示自动注入TbManagerServiceImpl业务实现类

    @Autowired      //该注解表示后紧跟的变量进行封装，即自动产生getter和setter
    private TbShopbookService TbShopbookService;

    @RequestMapping("/delete")
    @ResponseBody
    public ServerResponse deleteByPrimaryKey(String id){
        if(TbShopbookService.deleteByPrimaryKey(id)>0){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }

    @RequestMapping("/insert")
    @ResponseBody
    public ServerResponse insert(TbShopbook record){//管理员的信息应该是由客户端传送过来
        TbShopbook tbShopbook=new TbShopbook();
        tbShopbook.setCustomerid(record.getCustomerid());
        tbShopbook.setBookid(record.getBookid());
        tbShopbook.setOrdermount(record.getOrdermount());
        tbShopbook.setPrice(record.getPrice());
        tbShopbook.setIspay(record.getIspay());
        if(TbShopbookService.insert(tbShopbook)>0){
            return ServerResponse.createBySuccess("添加数据成功",tbShopbook);
        }else{
            return ServerResponse.createByError();
        }
    }

    @RequestMapping("/insertSelective")
    @ResponseBody
    public ServerResponse insertSelective(TbShopbook record){
        TbShopbook tbShopbook=new TbShopbook();
        tbShopbook.setCustomerid(record.getCustomerid());
        tbShopbook.setBookid(record.getBookid());
        tbShopbook.setOrdermount(record.getOrdermount());
        tbShopbook.setPrice(record.getPrice());
        tbShopbook.setIspay(record.getIspay());
        if(TbShopbookService.insert(tbShopbook)>0){
            return ServerResponse.createBySuccess("添加管理数据成功",tbShopbook);
        }else{
            return ServerResponse.createByErrorMessage("添加管理员数据失败");
        }
    }

    @RequestMapping("/selectByPrimaryKey")
    @ResponseBody
    public ServerResponse selectByPrimaryKey(HttpServletRequest request, HttpServletResponse response) throws IOException {
        TbShopbook tbShopbook=TbShopbookService.selectByPrimaryKey("1");
        if(tbShopbook != null){
            return ServerResponse.createBySuccess(1);
        }else{

            return ServerResponse.createByErrorMessage("找不到管理员");
        }
    }

    @RequestMapping("/listall")
    @ResponseBody

    public ServerResponse listall(HttpServletRequest request, HttpServletResponse response){
        List<TbShopbook> tbShopbooklist=TbShopbookService.selectAll();
        if(tbShopbooklist.size()>0){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorMessage("找不到管理员信息");
        }
    }

    @RequestMapping("/updateByPrimaryKeySelective")
    @ResponseBody
    public ServerResponse updateByPrimaryKeySelective(TbShopbook record){
        TbShopbook tbShopbook=new TbShopbook();
        tbShopbook.setCustomerid(record.getCustomerid());
        tbShopbook.setBookid(record.getBookid());
        tbShopbook.setOrdermount(record.getOrdermount());
        tbShopbook.setPrice(record.getPrice());
        tbShopbook.setIspay(record.getIspay());
        if(TbShopbookService.updateByPrimaryKeySelective(tbShopbook)>0){
            return ServerResponse.createBySuccess("更新管理数据成功",tbShopbook);
        }else{
            return ServerResponse.createByErrorMessage("更新管理数据失败");
        }
    }

    @RequestMapping("/updateByPrimaryKey")
    @ResponseBody
    public ServerResponse updateByPrimaryKey(TbShopbook record){
        TbShopbook tbShopbook=new TbShopbook();
        tbShopbook.setCustomerid(record.getCustomerid());
        tbShopbook.setBookid(record.getBookid());
        tbShopbook.setOrdermount(record.getOrdermount());
        tbShopbook.setPrice(record.getPrice());
        tbShopbook.setIspay(record.getIspay());
        if(TbShopbookService.updateByPrimaryKeySelective(tbShopbook)>0){
            return ServerResponse.createBySuccess("更新管理数据成功",tbShopbook);
        }else{
            return ServerResponse.createByErrorMessage("更新管理员数据失败");
        }
    }

    @RequestMapping("/selectAll")
    @ResponseBody
    public ServerResponse selectAll(){
        List<TbShopbook> tbShopbooklist = TbShopbookService.selectAll();
        if (tbShopbooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbShopbooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/selectAlldesc")
    @ResponseBody
    public ServerResponse selectAlldesc(){
        List<TbShopbook> tbShopbooklist = TbShopbookService.selectAlldesc();
        if (tbShopbooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbShopbooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/selectid")
    @ResponseBody
    public ServerResponse selectid(@Param("customerid") String customerid){
        List<TbShopbook> tbBooklist = TbShopbookService.selectid(customerid);
        if (tbBooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/updataforid")
    @ResponseBody
    public ServerResponse updataforid(@Param("shopbookid") String shopbookid, @Param("price") Float price,@Param("ordermount") Integer ordermount){//管理员的信息应该是由客户端传送过来
        if(TbShopbookService.updataforid(shopbookid,price,ordermount)!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("更新失败");
        }
//        return null;
    }

    @RequestMapping("/addbookshop")
    @ResponseBody
    public ServerResponse addbookshop(@Param("shopbookid") String shopbookid, @Param("customerid") String customerid,@Param("bookid") Integer bookid, @Param("ordermount") Integer ordermount,@Param("price") Float price, @Param("ispay") String ispay){//管理员的信息应该是由客户端传送过来
        if(TbShopbookService.addbookshop(shopbookid,customerid,bookid,ordermount,price,ispay)!=0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("添加失败");
        }
    }

    @RequestMapping("/selectidt")
    @ResponseBody
    public ServerResponse selectidt(@Param("customerid") String customerid,@Param("bookid") String bookid){
        System.out.println("下");
        System.out.println(bookid);
        System.out.println(customerid);
        System.out.println("上");
        List<TbShopbook> tbBooklist = TbShopbookService.selectidt(customerid,bookid);
        if (tbBooklist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooklist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/deleteshopbook")
    @ResponseBody
    public ServerResponse deleteshopbook(@Param("shopbookid") String shopbookid){
        System.out.println(shopbookid);
        if(TbShopbookService.deleteshopbook(shopbookid)>0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }
}
