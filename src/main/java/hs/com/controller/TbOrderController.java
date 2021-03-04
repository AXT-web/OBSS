package hs.com.controller;

import hs.com.common.ResponseCode;
import hs.com.common.ServerResponse;
import hs.com.entity.TbBooktype;
import hs.com.entity.TbOrder;
import hs.com.entity.TbOrderdetail;
import hs.com.service.TbOrderService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

@Controller //这是控制器的的注解，代码当前类为一个控制器
@RequestMapping("/TbOrder")  //这个注解表示控制器的映射的地址为服务器地址+TbOrder
public class TbOrderController {

    @Resource(name="TbOrderServiceImpl")  //这个注解表示自动注入TbManagerServiceImpl业务实现类

    @Autowired      //该注解表示后紧跟的变量进行封装，即自动产生getter和setter
    private TbOrderService TbOrderService;

    @RequestMapping("/delete")
    @ResponseBody
    public ServerResponse deleteByPrimaryKey(String id){
        if(TbOrderService.deleteByPrimaryKey(id)>0){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }

    @RequestMapping("/insert")
    @ResponseBody
    public ServerResponse insert(TbOrder record){//管理员的信息应该是由客户端传送过来
        TbOrder tbOrder=new TbOrder();
        tbOrder.setOrderid(record.getOrderid());
        tbOrder.setId(record.getId());
        tbOrder.setCustomerid(record.getCustomerid());
        tbOrder.setOrderdate(record.getOrderdate());
        tbOrder.setOrdermount(record.getOrdermount());
        tbOrder.setMessage(record.getMessage());
        tbOrder.setPostmethod(record.getPostmethod());
        tbOrder.setPaymethod(record.getPaymethod());
        tbOrder.setRecevername(record.getRecevername());
        tbOrder.setReceveraddr(record.getReceveraddr());
        tbOrder.setRecevertel(record.getRecevertel());
        tbOrder.setMemo(record.getMemo());
        tbOrder.setTotalprice(record.getTotalprice());
        if(TbOrderService.insert(tbOrder)>0){
            return ServerResponse.createBySuccess("添加数据成功",tbOrder);
        }else{
            return ServerResponse.createByError();
        }
    }

    @RequestMapping("/insertSelective")
    @ResponseBody
    public ServerResponse insertSelective(TbOrder record){
        TbOrder tbOrder=new TbOrder();
        tbOrder.setOrderid(record.getOrderid());
        tbOrder.setId(record.getId());
        tbOrder.setCustomerid(record.getCustomerid());
        tbOrder.setOrderdate(record.getOrderdate());
        tbOrder.setOrdermount(record.getOrdermount());
        tbOrder.setMessage(record.getMessage());
        tbOrder.setPostmethod(record.getPostmethod());
        tbOrder.setPaymethod(record.getPaymethod());
        tbOrder.setRecevername(record.getRecevername());
        tbOrder.setReceveraddr(record.getReceveraddr());
        tbOrder.setRecevertel(record.getRecevertel());
        tbOrder.setMemo(record.getMemo());
        tbOrder.setTotalprice(record.getTotalprice());
        if(TbOrderService.insert(tbOrder)>0){
            return ServerResponse.createBySuccess("添加管理数据成功",tbOrder);
        }else{
            return ServerResponse.createByErrorMessage("添加管理员数据失败");
        }
    }

    @RequestMapping("/selectByPrimaryKey")
    @ResponseBody
    public ServerResponse selectByPrimaryKey(HttpServletRequest request, HttpServletResponse response) throws IOException {
        TbOrder tbOrder=TbOrderService.selectByPrimaryKey("1");
        if(tbOrder != null){
            return ServerResponse.createBySuccess(1);
        }else{

            return ServerResponse.createByErrorMessage("找不到管理员");
        }
    }

    @RequestMapping("/listall")
    @ResponseBody
    public ServerResponse listall(HttpServletRequest request, HttpServletResponse response){
        List<TbOrder> tbOrderlist=TbOrderService.selectAll();
        if(tbOrderlist.size()>0){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorMessage("找不到管理员信息");
        }
    }

    @RequestMapping("/updateByPrimaryKeySelective")
    @ResponseBody
    public ServerResponse updateByPrimaryKeySelective(TbOrder record){
        TbOrder tbOrder=new TbOrder();
        tbOrder.setOrderid(record.getOrderid());
        tbOrder.setId(record.getId());
        tbOrder.setCustomerid(record.getCustomerid());
        tbOrder.setOrderdate(record.getOrderdate());
        tbOrder.setOrdermount(record.getOrdermount());
        tbOrder.setMessage(record.getMessage());
        tbOrder.setPostmethod(record.getPostmethod());
        tbOrder.setPaymethod(record.getPaymethod());
        tbOrder.setRecevername(record.getRecevername());
        tbOrder.setReceveraddr(record.getReceveraddr());
        tbOrder.setRecevertel(record.getRecevertel());
        tbOrder.setMemo(record.getMemo());
        tbOrder.setTotalprice(record.getTotalprice());
        if(TbOrderService.updateByPrimaryKeySelective(tbOrder)>0){
            return ServerResponse.createBySuccess("更新管理数据成功",tbOrder);
        }else{
            return ServerResponse.createByErrorMessage("更新管理数据失败");
        }
    }

    @RequestMapping("/updateByPrimaryKey")
    @ResponseBody
    public ServerResponse updateByPrimaryKey(TbOrder record){
        TbOrder tbOrder=new TbOrder();
        tbOrder.setOrderid(record.getOrderid());
        tbOrder.setId(record.getId());
        tbOrder.setCustomerid(record.getCustomerid());
        tbOrder.setOrderdate(record.getOrderdate());
        tbOrder.setOrdermount(record.getOrdermount());
        tbOrder.setMessage(record.getMessage());
        tbOrder.setPostmethod(record.getPostmethod());
        tbOrder.setPaymethod(record.getPaymethod());
        tbOrder.setRecevername(record.getRecevername());
        tbOrder.setReceveraddr(record.getReceveraddr());
        tbOrder.setRecevertel(record.getRecevertel());
        tbOrder.setMemo(record.getMemo());
        tbOrder.setTotalprice(record.getTotalprice());
        if(TbOrderService.updateByPrimaryKeySelective(tbOrder)>0){
            return ServerResponse.createBySuccess("更新管理数据成功",tbOrder);
        }else{
            return ServerResponse.createByErrorMessage("更新管理员数据失败");
        }
    }

    @RequestMapping("/selectAll")
    @ResponseBody
    public ServerResponse selectAll(){
        List<TbOrder> tbOrderlist = TbOrderService.selectAll();
        if (tbOrderlist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbOrderlist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/updataorder")
    @ResponseBody
    public ServerResponse updataorder(@Param("orderid") String orderid,@Param("ordermount") Integer ordermount, @Param("message") String message, @Param("postmethod") String postmethod, @Param("paymethod") String paymethod, @Param("recevername") String recevername, @Param("recevertel") String recevertel, @Param("receveraddr") String receveraddr, @Param("memo") String memo, @Param("totalprice") Float totalprice){//管理员的信息应该是由客户端传送过来
        if(TbOrderService.updataorder(orderid,ordermount,message,postmethod,paymethod,recevername,recevertel,receveraddr,memo,totalprice)!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("更新失败");
        }
//        return null;
    }

    @RequestMapping("/deleteorderforid")
    @ResponseBody
    public ServerResponse deleteorderforid(@Param("orderid") String orderid){
        if(TbOrderService.deleteorderforid(orderid)>0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }

    @RequestMapping("/selectid")
    @ResponseBody
    public ServerResponse selectid(@Param("orderid") String orderid){
        List<TbOrder> tbOrderlist = TbOrderService.selectid(orderid);
        if (tbOrderlist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbOrderlist);
        } else {
            return ServerResponse.createByErrorMessage("找不订单信息");
        }
    }

    @RequestMapping("/selectcusid")
    @ResponseBody
    public ServerResponse selectcusid(@Param("customerid") String customerid){
        List<TbOrder> tbOrderlist = TbOrderService.selectcusid(customerid);
        if (tbOrderlist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbOrderlist);
        } else {
            return ServerResponse.createByErrorMessage("找不订单信息");
        }
    }

    @RequestMapping("/selectAllfororderdesc")
    @ResponseBody
    public ServerResponse selectAllfororderdesc(){
        List<TbOrder> tbOrderlist = TbOrderService.selectAllfororderdesc();
        if (tbOrderlist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbOrderlist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/addorder")
    @ResponseBody
    public ServerResponse addorder(@Param("orderid") String orderid, @Param("id") String id,@Param("customerid") String customerid, @Param("ordermount") Integer ordermount,@Param("message") String message, @Param("postmethod") String postmethod,@Param("paymethod") String paymethod, @Param("recevername") String recevername,@Param("receveraddr") String receveraddr, @Param("recevertel") String recevertel,@Param("memo") String memo,@Param("totalprice") Float totalprice){//管理员的信息应该是由客户端传送过来
        if(TbOrderService.addorder( orderid, id,  customerid,  ordermount,message,postmethod,paymethod,recevername,receveraddr,recevertel,memo,totalprice)!=0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("添加失败");
        }
    }
}
