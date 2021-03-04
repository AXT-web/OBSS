package hs.com.controller;


import hs.com.common.ResponseCode;
import hs.com.common.ServerResponse;
import hs.com.entity.TbBook;
import hs.com.entity.TbManager;
import hs.com.service.TbManagerService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller //这是控制器的的注解，代码当前类为一个控制器
@RequestMapping("/TbManager")  //这个注解表示控制器的映射的地址为服务器地址+TbManager
public class TbManagerController {
    @Resource(name="TbManagerServiceImpl")  //这个注解表示自动注入TbManagerServiceImpl业务实现类

    @Autowired      //该注解表示后紧跟的变量进行封装，即自动产生getter和setter
    private TbManagerService TbManagerService;


    @RequestMapping("/delete")
    @ResponseBody
    public ServerResponse deleteByPrimaryKey(String id){
        if(TbManagerService.deleteByPrimaryKey(id)>0){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }

    @RequestMapping("/insert")
    @ResponseBody
    public ServerResponse insert(TbManager record){//管理员的信息应该是由客户端传送过来
        TbManager tbManager=new TbManager();
        tbManager.setAdminid(record.getAdminid());
        tbManager.setAdminpwd(record.getAdminpwd());
        tbManager.setAdminname(record.getAdminname());
        if(TbManagerService.insert(tbManager)>0){
            return ServerResponse.createBySuccess("添加数据成功",tbManager);
        }else{
            return ServerResponse.createByError();
        }
    }

    @RequestMapping("/insertSelective")
    @ResponseBody
    public ServerResponse insertSelective(TbManager record){
        TbManager tbManager=new TbManager();
        tbManager.setAdminid(record.getAdminid());
        tbManager.setAdminpwd(record.getAdminpwd());
        tbManager.setAdminname(record.getAdminname());
        if(TbManagerService.insert(tbManager)>0){
            return ServerResponse.createBySuccess("添加管理数据成功",tbManager);
        }else{
            return ServerResponse.createByErrorMessage("添加管理员数据失败");
        }
    }

    @RequestMapping("/selectByPrimaryKey")
    @ResponseBody
    public ServerResponse selectByPrimaryKey(HttpServletRequest request, HttpServletResponse response) throws IOException {
        TbManager tbManager=TbManagerService.selectByPrimaryKey("1");
        if(tbManager != null){
            return ServerResponse.createBySuccess(1);
        }else{

            return ServerResponse.createByErrorMessage("找不到管理员");
        }
    }

    @RequestMapping("/listall")
    @ResponseBody

    public ServerResponse listall(HttpServletRequest request, HttpServletResponse response){
        List<TbManager> tbManagerlist=TbManagerService.selectAll();
        if(tbManagerlist.size()>0){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorMessage("找不到管理员信息");
        }
    }

    @RequestMapping("/updateByPrimaryKeySelective")
    @ResponseBody
    public ServerResponse updateByPrimaryKeySelective(TbManager record){
        TbManager tbManager=new TbManager();
        tbManager.setAdminid(record.getAdminid());
        tbManager.setAdminpwd(record.getAdminpwd());
        tbManager.setAdminname(record.getAdminname());
        if(TbManagerService.updateByPrimaryKeySelective(tbManager)>0){
            return ServerResponse.createBySuccess("更新管理数据成功",tbManager);
        }else{
            return ServerResponse.createByErrorMessage("更新管理数据失败");
        }
    }

    @RequestMapping("/updateByPrimaryKey")
    @ResponseBody
    public ServerResponse updateByPrimaryKey(TbManager record){
        TbManager tbManager=new TbManager();
        tbManager.setAdminid(record.getAdminid());
        tbManager.setAdminpwd(record.getAdminpwd());
        tbManager.setAdminname(record.getAdminname());
        if(TbManagerService.updateByPrimaryKeySelective(tbManager)>0){
            return ServerResponse.createBySuccess("更新管理数据成功",tbManager);
        }else{
            return ServerResponse.createByErrorMessage("更新管理员数据失败");
        }
    }

    @RequestMapping("/login")
    @ResponseBody
    public ServerResponse  login(HttpSession session, @Param("adminid") String adminid, @Param("adminpwd") String adminpwd){
        System.out.println(adminid);
        System.out.println(adminpwd);
        session.setAttribute("adminid",adminid);
        if(TbManagerService.login(adminid,adminpwd)!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("管理员登录失败");
        }
    }

    @RequestMapping("/cancellation")
    @ResponseBody
    public ServerResponse cancellation(HttpSession session){
        session.invalidate();
        return null;
    }
    @RequestMapping("/selectAll")           //类似名字查询按BookStoremount升序
    @ResponseBody
    public ServerResponse selectAll(){
        List<TbManager> tbManagerlist = TbManagerService.selectAll();
        if (tbManagerlist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbManagerlist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }
}
