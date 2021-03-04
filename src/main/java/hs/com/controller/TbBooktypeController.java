package hs.com.controller;

import hs.com.common.ResponseCode;
import hs.com.common.ServerResponse;
import hs.com.entity.TbBook;
import hs.com.entity.TbBooktype;
import hs.com.service.TbBooktypeService;
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
@RequestMapping("/TbBooktype")  //这个注解表示控制器的映射的地址为服务器地址+TbBooktype
public class TbBooktypeController {
    @Resource(name="TbBooktypeServiceImpl")  //这个注解表示自动注入TbBooktypeServiceImpl业务实现类

    @Autowired      //该注解表示后紧跟的变量进行封装，即自动产生getter和setter
    private TbBooktypeService TbBooktypeService;

    @RequestMapping("/delete")
    @ResponseBody
    public ServerResponse deleteByPrimaryKey(Integer id){
        if(TbBooktypeService.deleteByPrimaryKey(id)>0){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }

    @RequestMapping("/insert")
    @ResponseBody
    public ServerResponse insert(TbBooktype record){//管理员的信息应该是由客户端传送过来
        TbBooktype tbBooktype=new TbBooktype();
        tbBooktype.setBooktypeid(record.getBooktypeid());
        tbBooktype.setBooktypename(record.getBooktypename());
        if(TbBooktypeService.insert(tbBooktype)>0){
            return ServerResponse.createBySuccess("添加数据成功",tbBooktype);
        }else{
            return ServerResponse.createByError();
        }
    }

    @RequestMapping("/insertSelective")
    @ResponseBody
    public ServerResponse insertSelective(TbBooktype record){
        TbBooktype tbBooktype=new TbBooktype();
        tbBooktype.setBooktypeid(record.getBooktypeid());
        tbBooktype.setBooktypename(record.getBooktypename());
        if(TbBooktypeService.insert(tbBooktype)>0){
            return ServerResponse.createBySuccess("添加书籍数据成功",tbBooktype);
        }else{
            return ServerResponse.createByErrorMessage("添加书籍数据失败");
        }
    }

    @RequestMapping("/selectByPrimaryKey")
    @ResponseBody
    public ServerResponse selectByPrimaryKey(HttpServletRequest request, HttpServletResponse response) throws IOException {
        TbBooktype tbBook=TbBooktypeService.selectByPrimaryKey(1);
        if(tbBook != null){
            return ServerResponse.createBySuccess(1);
        }else{

            return ServerResponse.createByErrorMessage("找不到书籍");
        }
    }

    @RequestMapping("/listall")
    @ResponseBody
    public ServerResponse listall(HttpServletRequest request, HttpServletResponse response){
        List<TbBooktype> tbBooklist=TbBooktypeService.selectAll();
        if(tbBooklist.size()>0){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorMessage("找不到书籍信息");
        }
    }

    @RequestMapping("/updateByPrimaryKeySelective")
    @ResponseBody
    public ServerResponse updateByPrimaryKeySelective(TbBooktype record){
        TbBooktype tbBooktype=new TbBooktype();
        tbBooktype.setBooktypeid(record.getBooktypeid());
        tbBooktype.setBooktypename(record.getBooktypename());
        if(TbBooktypeService.updateByPrimaryKeySelective(tbBooktype)>0){
            return ServerResponse.createBySuccess("更新书籍数据成功",tbBooktype);
        }else{
            return ServerResponse.createByErrorMessage("更新书籍数据失败");
        }
    }

    @RequestMapping("/updateByPrimaryKey")
    @ResponseBody
    public ServerResponse updateByPrimaryKey(TbBooktype record){
        TbBooktype tbBooktype=new TbBooktype();
        tbBooktype.setBooktypeid(record.getBooktypeid());
        tbBooktype.setBooktypename(record.getBooktypename());
        if(TbBooktypeService.updateByPrimaryKeySelective(tbBooktype)>0){
            return ServerResponse.createBySuccess("更新书籍数据成功",tbBooktype);
        }else{
            return ServerResponse.createByErrorMessage("更新书籍数据失败");
        }
    }

    @RequestMapping("/selectid")
    @ResponseBody
    public ServerResponse selectid(@Param("BookTypeId") String BookTypeId){
        List<TbBooktype> tbBooktypelist = TbBooktypeService.selectid(BookTypeId);
        if (tbBooktypelist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooktypelist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/selectname")
    @ResponseBody
    public ServerResponse selectname(@Param("BookTypeName") String BookTypeName){
        List<TbBooktype> tbBooktypelist = TbBooktypeService.selectname(BookTypeName);
        if (tbBooktypelist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooktypelist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
//        return null;
    }

    @RequestMapping("/selectAll")
    @ResponseBody
    public ServerResponse selectAll(){
        List<TbBooktype> tbBooktypelist = TbBooktypeService.selectAll();
        if (tbBooktypelist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbBooktypelist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/deletebooktypeforid")
    @ResponseBody
    public ServerResponse deletebooktypeforid(@Param("booktypeid") Integer booktypeid){
        if(TbBooktypeService.deletebooktypeforid(booktypeid)>0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }

    @RequestMapping("/updatabooktype")
    @ResponseBody
    public ServerResponse updatabooktype( @Param("booktypeid") Integer booktypeid ,@Param("booktypename") String booktypename ){//管理员的信息应该是由客户端传送过来
        System.out.println("测试开始");
        System.out.println(booktypeid);
        System.out.println(booktypename);
        System.out.println("测试结束");
        if(TbBooktypeService.updatabooktype(booktypeid,booktypename)!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("更新失败");
        }
    }

    @RequestMapping("/addbooktype")
    @ResponseBody
    public ServerResponse addbooktype(@Param("booktypeid") Integer booktypeid, @Param("booktypename") String booktypename ){//管理员的信息应该是由客户端传送过来
        System.out.println(booktypeid);
        System.out.println(booktypename);
        if(TbBooktypeService.addbooktype( booktypeid, booktypename)!=0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("添加失败");
        }
    }
}
