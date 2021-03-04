package hs.com.controller;


import hs.com.common.ResponseCode;
import hs.com.common.ServerResponse;
import hs.com.entity.TbBook;
import hs.com.entity.TbComment;
import hs.com.entity.TbCustomer;
import hs.com.entity.TbManager;
import hs.com.service.TbCustomerService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller //这是控制器的的注解，代码当前类为一个控制器
@RequestMapping("/TbCustomer")  //这个注解表示控制器的映射的地址为服务器地址+TbComment
public class TbCustomerController {
    @Resource(name="TbCustomerServiceImpl")  //这个注解表示自动注入TbCommentServiceImpl业务实现类

    @Autowired      //该注解表示后紧跟的变量进行封装，即自动产生getter和setter
    private TbCustomerService TbCustomerService;

    @RequestMapping("/delete")
    @ResponseBody
    public ServerResponse deleteByPrimaryKey(String id){
        if(TbCustomerService.deleteByPrimaryKey(id)>0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }

    @RequestMapping("/insert")
    @ResponseBody
    public ServerResponse insert(TbCustomer record){//管理员的信息应该是由客户端传送过来
        TbCustomer tbCustomer=new TbCustomer();
        tbCustomer.setCustomerid(record.getCustomerid());
        tbCustomer.setCustomername(record.getCustomername());
        tbCustomer.setCustomerpwd(record.getCustomerpwd());
        tbCustomer.setCustomertruename(record.getCustomertruename());
        tbCustomer.setCustomersex(record.getCustomersex());
        tbCustomer.setCustomertel(record.getCustomertel());
        tbCustomer.setCustomeraddr(record.getCustomeraddr());
        tbCustomer.setCustomerregtime(record.getCustomerregtime());
        tbCustomer.setCustomerquer(record.getCustomerquer());
        tbCustomer.setCustomeranswer(record.getCustomeranswer());
        if(TbCustomerService.insert(tbCustomer)>0){
            return ServerResponse.createBySuccess("添加数据成功",tbCustomer);
        }else{
            return ServerResponse.createByError();
        }
//        return null;
    }

    @RequestMapping("/insertSelective")
    @ResponseBody
    public ServerResponse insertSelective(TbCustomer record){
        TbCustomer tbCustomer=new TbCustomer();
        tbCustomer.setCustomerid(record.getCustomerid());
        tbCustomer.setCustomername(record.getCustomername());
        tbCustomer.setCustomerpwd(record.getCustomerpwd());
        tbCustomer.setCustomertruename(record.getCustomertruename());
        tbCustomer.setCustomersex(record.getCustomersex());
        tbCustomer.setCustomertel(record.getCustomertel());
        tbCustomer.setCustomeraddr(record.getCustomeraddr());
        tbCustomer.setCustomerregtime(record.getCustomerregtime());
        tbCustomer.setCustomerquer(record.getCustomerquer());
        tbCustomer.setCustomeranswer(record.getCustomeranswer());
        if(TbCustomerService.insert(tbCustomer)>0){
            return ServerResponse.createBySuccess("添加顾客数据成功",tbCustomer);
        }else{
            return ServerResponse.createByErrorMessage("添加顾客数据失败");
        }
//        return null;
    }

    @RequestMapping("/selectByPrimaryKey")
    @ResponseBody
    public ServerResponse selectByPrimaryKey(HttpServletRequest request, HttpServletResponse response) throws IOException {
        TbCustomer tbCustomer=TbCustomerService.selectByPrimaryKey("1");
        if(tbCustomer != null){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorMessage("找不到顾客");
        }
    }

    @RequestMapping("/listall")
    @ResponseBody
    public ServerResponse listall(HttpServletRequest request, HttpServletResponse response){
        List<TbCustomer> tbCustomer=TbCustomerService.selectAll();
        if(tbCustomer.size()>0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("找不到顾客信息");
        }
    }

    @RequestMapping("/updateByPrimaryKeySelective")
    @ResponseBody
    public ServerResponse updateByPrimaryKeySelective(TbCustomer record){
        TbCustomer tbCustomer=new TbCustomer();
        tbCustomer.setCustomerid(record.getCustomerid());
        tbCustomer.setCustomername(record.getCustomername());
        tbCustomer.setCustomerpwd(record.getCustomerpwd());
        tbCustomer.setCustomertruename(record.getCustomertruename());
        tbCustomer.setCustomersex(record.getCustomersex());
        tbCustomer.setCustomertel(record.getCustomertel());
        tbCustomer.setCustomeraddr(record.getCustomeraddr());
        tbCustomer.setCustomerregtime(record.getCustomerregtime());
        tbCustomer.setCustomerquer(record.getCustomerquer());
        tbCustomer.setCustomeranswer(record.getCustomeranswer());
        if(TbCustomerService.updateByPrimaryKeySelective(tbCustomer)>0){
            return ServerResponse.createBySuccess("更新顾客数据成功",tbCustomer);
        }else{
            return ServerResponse.createByErrorMessage("更新顾客数据失败");
        }
//        return null;
    }

    @RequestMapping("/updateByPrimaryKey")
    @ResponseBody
    public ServerResponse updateByPrimaryKey(TbCustomer record){
        TbCustomer tbCustomer=new TbCustomer();
        tbCustomer.setCustomerid(record.getCustomerid());
        tbCustomer.setCustomername(record.getCustomername());
        tbCustomer.setCustomerpwd(record.getCustomerpwd());
        tbCustomer.setCustomertruename(record.getCustomertruename());
        tbCustomer.setCustomersex(record.getCustomersex());
        tbCustomer.setCustomertel(record.getCustomertel());
        tbCustomer.setCustomeraddr(record.getCustomeraddr());
        tbCustomer.setCustomerregtime(record.getCustomerregtime());
        tbCustomer.setCustomerquer(record.getCustomerquer());
        tbCustomer.setCustomeranswer(record.getCustomeranswer());
        if(TbCustomerService.updateByPrimaryKeySelective(tbCustomer)>0){
            return ServerResponse.createBySuccess("更新顾客数据成功",tbCustomer);
        }else{
            return ServerResponse.createByErrorMessage("更新顾客数据失败");
        }
//        return  null;
    }

    @RequestMapping("/login")
    @ResponseBody
    public ServerResponse  login(HttpSession session, @Param("customerid") String customerid, @Param("customerpwd") String customerpwd){
        session.setAttribute("customerid",customerid);
        if(TbCustomerService.login(customerid,customerpwd)!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("登录失败");
        }
    }

    @RequestMapping("/register")
    @ResponseBody
    public ServerResponse register(@Param("customerid") String customerid, @Param("customerpwd") String customerpwd){//管理员的信息应该是由客户端传送过来
        if(TbCustomerService.register(customerid,customerpwd)!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("注册失败");
        }
//        return null;
    }

    @RequestMapping("/selectid")
    @ResponseBody
    public ServerResponse selectid(@Param("customerid") String customerid){
        List<TbCustomer> TbCustomerlist = TbCustomerService.selectid(customerid);
        if (TbCustomerlist.size() > 0) {
            return ServerResponse.createBySuccess(0,TbCustomerlist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/selectname")
    @ResponseBody
    public ServerResponse selectname(@Param("customername") String customername){
        List<TbCustomer> TbCustomerlist = TbCustomerService.selectname(customername);
        if (TbCustomerlist.size() > 0) {
            return ServerResponse.createBySuccess(0,TbCustomerlist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/cancellation")
    @ResponseBody
    public ServerResponse cancellation(HttpSession session){
        session.invalidate();
        return null;
    }

    @RequestMapping("/fileUpLoad")
    public void upLoadFile(MultipartFile filename) {
        if (filename != null) {
            //获取所传文件的名称
            String originalFilename = filename.getOriginalFilename();
            if (originalFilename != null && originalFilename.length() > 0) {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
                //定义新文件的名称
                String newFileName = sdf.format(new Date()) + "/" + UUID.randomUUID().toString() + originalFilename.substring(originalFilename.lastIndexOf("."));
                //上传文件保存的路径
                File saveFile = new File("E:\\idea_text\\OBSS\\src\\main\\webapp\\upload" + newFileName);
                if (!saveFile.exists()) {
                    saveFile.mkdirs();
                }
                try {
                    //执行传输操作
                    filename.transferTo(saveFile);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @RequestMapping("/selectids")
    @ResponseBody
    public ServerResponse selectids(@Param("customerid") String customerid){
        List<TbCustomer> TbCustomerlist = TbCustomerService.selectids(customerid);
        if (TbCustomerlist.size() > 0) {
            return ServerResponse.createBySuccess(0,TbCustomerlist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/updateTbCustomer")
    @ResponseBody
    public ServerResponse updateTbCustomer(@Param("customerid") String customerid,@Param("customername") String customername,@Param("customertruename") String customertruename,@Param("customersex") String customersex,@Param("customertel") String customertel,@Param("customeraddr") String customeraddr,@Param("customerquer") String customerquer,@Param("customeranswer")String customeranswer){
        if(TbCustomerService.updateTbCustomer(customerid,customername,customertruename,customersex,customertel,customeraddr,customerquer,customeranswer)!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("更新失败");
        }
//        return  null;
    }

    @RequestMapping("/selectAll")           //
    @ResponseBody
    public ServerResponse selectAll(){
        List<TbCustomer> tbCustomerlist = TbCustomerService.selectAll();
        if (tbCustomerlist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbCustomerlist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

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

    @RequestMapping("/addcus")
    @ResponseBody
    public ServerResponse addcus(@Param("customerid") String customerid, @Param("customername") String customername,@Param("customerpwd") String customerpwd, @Param("customertruename") String customertruename,@Param("customersex") String customersex, @Param("customertel") String customertel,@Param("customeraddr") String customeraddr, @Param("customerregtime") String customerregtime,@Param("customerquer") String customerquer, @Param("customeranswer") String customeranswer){//管理员的信息应该是由客户端传送过来
        if(TbCustomerService.addcus( customerid, customername,  customerpwd,  customertruename, customersex,  customertel, customeraddr,customerregtime, customerquer, customeranswer)!=0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("添加失败");
        }
    }

    @RequestMapping("/deletecusforid")
    @ResponseBody
    public ServerResponse deletecusforid(@Param("customerid") String customerid){
        if(TbCustomerService.deletecusforid(customerid)>0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }

    @RequestMapping("/updatapwd")
    @ResponseBody
    public ServerResponse updatapwd(@Param("customerid") String customerid,@Param("customerpwd") String customerpwd){
        if(TbCustomerService.updatapwd(customerid,customerpwd)!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("更新失败");
        }
    }

    @RequestMapping("/updataanswerand")
    @ResponseBody
    public ServerResponse updataanswerand(@Param("customerid") String customerid,@Param("customerquer") String customerquer,@Param("customeranswer") String customeranswer){
        if(TbCustomerService.updataanswerand(customerid,customerquer,customeranswer)!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("更新失败");
        }
    }

}
