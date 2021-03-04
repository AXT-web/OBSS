package hs.com.controller;


import hs.com.common.ResponseCode;
import hs.com.common.ServerResponse;
import hs.com.entity.TbBook;
import hs.com.entity.TbOrder;
import hs.com.entity.TbOrderdetail;
import hs.com.service.TbOrderdetailService;
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
@RequestMapping("/TbOrderdetail")  //这个注解表示控制器的映射的地址为服务器地址+TbOrderdetail
public class TbOrderdetailController {

    @Resource(name="TbOrderdetailServiceImpl")  //这个注解表示自动注入TbManagerServiceImpl业务实现类

    @Autowired      //该注解表示后紧跟的变量进行封装，即自动产生getter和setter
    private TbOrderdetailService TbOrderdetailService;

    @RequestMapping("/delete")
    @ResponseBody
    public ServerResponse deleteByPrimaryKey(String id){
        if(TbOrderdetailService.deleteByPrimaryKey(id)>0){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }

    @RequestMapping("/insert")
    @ResponseBody
    public ServerResponse insert(TbOrderdetail record){//管理员的信息应该是由客户端传送过来
        TbOrderdetail tbOrderdetail=new TbOrderdetail();
        tbOrderdetail.setOrderdetailld(record.getOrderdetailld());
        tbOrderdetail.setId(record.getId());
        tbOrderdetail.setOrderid(record.getOrderid());
        tbOrderdetail.setBookid(record.getBookid());
        tbOrderdetail.setOrdermount(record.getOrdermount());
        tbOrderdetail.setPoststatus(record.getPoststatus());
        tbOrderdetail.setRecevstatus(record.getRecevstatus());
        tbOrderdetail.setSigletotalprice(record.getSigletotalprice());
        if(TbOrderdetailService.insert(tbOrderdetail)>0){
            return ServerResponse.createBySuccess("添加数据成功",tbOrderdetail);
        }else{
            return ServerResponse.createByError();
        }
//        return null;
    }

    @RequestMapping("/insertSelective")
    @ResponseBody
    public ServerResponse insertSelective(TbOrderdetail record){
        TbOrderdetail tbOrderdetail=new TbOrderdetail();
        tbOrderdetail.setOrderdetailld(record.getOrderdetailld());
        tbOrderdetail.setId(record.getId());
        tbOrderdetail.setOrderid(record.getOrderid());
        tbOrderdetail.setBookid(record.getBookid());
        tbOrderdetail.setOrdermount(record.getOrdermount());
        tbOrderdetail.setPoststatus(record.getPoststatus());
        tbOrderdetail.setRecevstatus(record.getRecevstatus());
        tbOrderdetail.setSigletotalprice(record.getSigletotalprice());
        if(TbOrderdetailService.insert(tbOrderdetail)>0){
            return ServerResponse.createBySuccess("添加管理数据成功",tbOrderdetail);
        }else{
            return ServerResponse.createByErrorMessage("添加管理员数据失败");
        }
//        return null;
    }

    @RequestMapping("/selectByPrimaryKey")
    @ResponseBody
    public ServerResponse selectByPrimaryKey(HttpServletRequest request, HttpServletResponse response) throws IOException {
        TbOrderdetail tbOrderdetail=TbOrderdetailService.selectByPrimaryKey("1");
        if(tbOrderdetail != null){
            return ServerResponse.createBySuccess(1);
        }else{

            return ServerResponse.createByErrorMessage("找不到管理员");
        }
    }

    @RequestMapping("/listall")
    @ResponseBody

    public ServerResponse listall(HttpServletRequest request, HttpServletResponse response){
        List<TbOrderdetail> tbOrderlist=TbOrderdetailService.selectAll();
        if(tbOrderlist.size()>0){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorMessage("找不到管理员信息");
        }
    }

    @RequestMapping("/updateByPrimaryKeySelective")
    @ResponseBody
    public ServerResponse updateByPrimaryKeySelective(TbOrderdetail record){
        TbOrderdetail tbOrderdetail=new TbOrderdetail();
        tbOrderdetail.setOrderdetailld(record.getOrderdetailld());
        tbOrderdetail.setId(record.getId());
        tbOrderdetail.setOrderid(record.getOrderid());
        tbOrderdetail.setBookid(record.getBookid());
        tbOrderdetail.setOrdermount(record.getOrdermount());
        tbOrderdetail.setPoststatus(record.getPoststatus());
        tbOrderdetail.setRecevstatus(record.getRecevstatus());
        tbOrderdetail.setSigletotalprice(record.getSigletotalprice());
        if(TbOrderdetailService.updateByPrimaryKeySelective(tbOrderdetail)>0){
            return ServerResponse.createBySuccess("更新管理数据成功",tbOrderdetail);
        }else{
            return ServerResponse.createByErrorMessage("更新管理数据失败");
        }
//        return null;
    }

    @RequestMapping("/updateByPrimaryKey")
    @ResponseBody
    public ServerResponse updateByPrimaryKey(TbOrderdetail record){
        TbOrderdetail tbOrderdetail=new TbOrderdetail();
        tbOrderdetail.setOrderdetailld(record.getOrderdetailld());
        tbOrderdetail.setId(record.getId());
        tbOrderdetail.setOrderid(record.getOrderid());
        tbOrderdetail.setBookid(record.getBookid());
        tbOrderdetail.setOrdermount(record.getOrdermount());
        tbOrderdetail.setPoststatus(record.getPoststatus());
        tbOrderdetail.setRecevstatus(record.getRecevstatus());
        tbOrderdetail.setSigletotalprice(record.getSigletotalprice());
        if(TbOrderdetailService.updateByPrimaryKeySelective(tbOrderdetail)>0){
            return ServerResponse.createBySuccess("更新管理数据成功",tbOrderdetail);
        }else{
            return ServerResponse.createByErrorMessage("更新管理员数据失败");
        }
//        return null;
    }
    @RequestMapping("/deleteordertailforid")
    @ResponseBody
    public ServerResponse deleteordertailforid(@Param("orderid") String orderid){
        if(TbOrderdetailService.deleteordertailforid(orderid)>0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }

    @RequestMapping("/selectid")
    @ResponseBody
    public ServerResponse selectid(@Param("orderid") String orderid){
        List<TbOrderdetail> tbOrderdetaillist = TbOrderdetailService.selectid(orderid);

        if (tbOrderdetaillist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbOrderdetaillist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/updataorderdetail")
    @ResponseBody
    public ServerResponse updataorderdetail(@Param("orderdetailid") String orderdetailid, @Param("id") String id, @Param("orderid") String orderid, @Param("bookid") Integer bookid, @Param("ordermount") Integer ordermount, @Param("poststatus") String poststatus,@Param("recevstatus") String recevstatus, @Param("sigletotalprice") String sigletotalprice ){//管理员的信息应该是由客户端传送过来
        if(TbOrderdetailService.updataorderdetail(orderdetailid,id,orderid,bookid,ordermount,poststatus,recevstatus,sigletotalprice)!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("更新失败");
        }
//        return null;
    }

    @RequestMapping("/selectpoststatus")
    @ResponseBody
    public ServerResponse selectpoststatus(@Param("poststatus") String poststatus){
        List<TbOrderdetail> tbOrderdetaillist = TbOrderdetailService.selectpoststatus(poststatus);
        if (tbOrderdetaillist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbOrderdetaillist);
        } else {
            return ServerResponse.createByErrorMessage("找不订单信息");
        }
    }

    @RequestMapping("/selectnoget")
    @ResponseBody
    public ServerResponse selectnoget(@Param("poststatus") String poststatus,@Param("recevstatus") String recevstatus,@Param("orderid") String orderid){
        List<TbOrderdetail> tbOrderdetaillist = TbOrderdetailService.selectnoget(poststatus,recevstatus,orderid);
        if (tbOrderdetaillist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbOrderdetaillist);
        } else {
            return ServerResponse.createByErrorMessage("找不订单信息");
        }
    }

    @RequestMapping("/updataorderstatus")
    @ResponseBody
    public ServerResponse updataorderstatus(@Param("orderid") String orderid,@Param("poststatus") String poststatus,@Param("recevstatus") String recevstatus){
        if(TbOrderdetailService.updataorderstatus(orderid,poststatus,recevstatus)!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("更新失败");
        }
    }

    @RequestMapping("/selectAllfororderdetaildesc")
    @ResponseBody
    public ServerResponse selectAllfororderdetaildesc(){
        List<TbOrderdetail> tbOrderdetaillist = TbOrderdetailService.selectAllfororderdetaildesc();
        if (tbOrderdetaillist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbOrderdetaillist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/addorderdetail")
    @ResponseBody
    public ServerResponse addorderdetail(@Param("orderdetailld") String orderdetailld, @Param("id") String id,@Param("orderid") String orderid, @Param("bookid") Integer bookid,@Param("ordermount") Integer ordermount, @Param("poststatus") String poststatus,@Param("recevstatus") String recevstatus, @Param("sigletotalprice") String sigletotalprice ){//管理员的信息应该是由客户端传送过来
        System.out.println(id);
        if(TbOrderdetailService.addorderdetail( orderdetailld, id,orderid,bookid,ordermount,poststatus,recevstatus,sigletotalprice)!=0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("添加失败");
        }
    }
}
