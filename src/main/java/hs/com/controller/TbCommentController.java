package hs.com.controller;


import hs.com.common.ResponseCode;
import hs.com.common.ServerResponse;
import hs.com.entity.TbBook;
import hs.com.entity.TbComment;
import hs.com.service.TbCommentService;
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
@RequestMapping("/TbComment")  //这个注解表示控制器的映射的地址为服务器地址+TbComment
public class TbCommentController {
    @Resource(name="TbCommentServiceImpl")  //这个注解表示自动注入TbCommentServiceImpl业务实现类

    @Autowired      //该注解表示后紧跟的变量进行封装，即自动产生getter和setter
    private TbCommentService TbCommentService;

    @RequestMapping("/delete")
    @ResponseBody
    public ServerResponse deleteByPrimaryKey(String id){
        if(TbCommentService.deleteByPrimaryKey(id)>0){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ERROR.getCode(),"删除数据失败");
        }
    }

    @RequestMapping("/insert")
    @ResponseBody
    public ServerResponse insert(TbComment record){//管理员的信息应该是由客户端传送过来
        TbComment tbComment=new TbComment();
        tbComment.setCommentid(record.getCommentid());
        tbComment.setBookid(record.getBookid());
        tbComment.setCustomerid(record.getCustomerid());
        tbComment.setCommentname(record.getCommentname());
        tbComment.setCommentdate(record.getCommentdate());
        tbComment.setCommentcontent(record.getCommentcontent());
        if(TbCommentService.insert(tbComment)>0){
            return ServerResponse.createBySuccess("添加数据成功",tbComment);
        }else{
            return ServerResponse.createByError();
        }
    }

    @RequestMapping("/insertSelective")
    @ResponseBody
    public ServerResponse insertSelective(TbComment record){
        TbComment tbComment=new TbComment();
        tbComment.setCommentid(record.getCommentid());
        tbComment.setBookid(record.getBookid());
        tbComment.setCustomerid(record.getCustomerid());
        tbComment.setCommentname(record.getCommentname());
        tbComment.setCommentdate(record.getCommentdate());
        tbComment.setCommentcontent(record.getCommentcontent());
        if(TbCommentService.insert(tbComment)>0){
            return ServerResponse.createBySuccess("添加书籍数据成功",tbComment);
        }else{
            return ServerResponse.createByErrorMessage("添加书籍数据失败");
        }
    }

    @RequestMapping("/selectByPrimaryKey")
    @ResponseBody
    public ServerResponse selectByPrimaryKey(HttpServletRequest request, HttpServletResponse response) throws IOException {
        TbComment tbComment=TbCommentService.selectByPrimaryKey("1");
        if(tbComment != null){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorMessage("找不到书籍");
        }
    }

    @RequestMapping("/listall")
    @ResponseBody
    public ServerResponse listall(HttpServletRequest request, HttpServletResponse response){
        List<TbComment> tbComment=TbCommentService.selectAll();
        if(tbComment.size()>0){
            return ServerResponse.createBySuccess(1);
        }else{
            return ServerResponse.createByErrorMessage("找不到书籍信息");
        }
    }

    @RequestMapping("/updateByPrimaryKeySelective")
    @ResponseBody
    public ServerResponse updateByPrimaryKeySelective(TbComment record){
        TbComment tbComment=new TbComment();
        tbComment.setCommentid(record.getCommentid());
        tbComment.setBookid(record.getBookid());
        tbComment.setCustomerid(record.getCustomerid());
        tbComment.setCommentname(record.getCommentname());
        tbComment.setCommentdate(record.getCommentdate());
        tbComment.setCommentcontent(record.getCommentcontent());
        if(TbCommentService.updateByPrimaryKeySelective(tbComment)>0){
            return ServerResponse.createBySuccess("更新书籍数据成功",tbComment);
        }else{
            return ServerResponse.createByErrorMessage("更新书籍数据失败");
        }
    }

    @RequestMapping("/updateByPrimaryKey")
    @ResponseBody
    public ServerResponse updateByPrimaryKey(TbComment record){
        TbComment tbComment=new TbComment();
        tbComment.setCommentid(record.getCommentid());
        tbComment.setBookid(record.getBookid());
        tbComment.setCustomerid(record.getCustomerid());
        tbComment.setCommentname(record.getCommentname());
        tbComment.setCommentdate(record.getCommentdate());
        tbComment.setCommentcontent(record.getCommentcontent());
        if(TbCommentService.updateByPrimaryKeySelective(tbComment)>0){
            return ServerResponse.createBySuccess("更新书籍数据成功",tbComment);
        }else{
            return ServerResponse.createByErrorMessage("更新书籍数据失败");
        }
    }

    @RequestMapping("/selectid")
    @ResponseBody
    public ServerResponse selectid(@Param("BookId") String bookid){
        List<TbComment> tbCommentlist = TbCommentService.selectid(bookid);
        if (tbCommentlist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbCommentlist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }
    @RequestMapping("/selectidtwoid")
    @ResponseBody
    public ServerResponse selectidtwoid(@Param("bookid") String bookid,@Param("customerid") String customerid){
        List<TbComment> tbCommentlist = TbCommentService.selectidtwoid(bookid,customerid);
        if (tbCommentlist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbCommentlist);
        } else {
            return ServerResponse.createByErrorMessage("找不到评论信息");
        }
    }

    @RequestMapping("/selectcusid")
    @ResponseBody
    public ServerResponse selectcusid(@Param("customerid") String customerid){
        List<TbComment> tbCommentlist = TbCommentService.selectcusid(customerid);
        if (tbCommentlist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbCommentlist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }
    @RequestMapping("/selectAlldesc")
    @ResponseBody
    public ServerResponse selectAlldesc(){
        List<TbComment> tbCommentlist = TbCommentService.selectAlldesc();
        if (tbCommentlist.size() > 0) {
            return ServerResponse.createBySuccess(0,tbCommentlist);
        } else {
            return ServerResponse.createByErrorMessage("找不书籍信息");
        }
    }

    @RequestMapping("/addcommon")
    @ResponseBody
    public ServerResponse addcommon(@Param("commentid") String commentid, @Param("customerid") String customerid,@Param("customername") String customername, @Param("commentcontent") String commentcontent ,@Param("bookid") Integer bookid){//管理员的信息应该是由客户端传送过来
        if(TbCommentService.addcommon(commentid,customerid,customername,commentcontent,bookid)!=0){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("添加失败");
        }
    }
    @RequestMapping("/updatacommon")
    @ResponseBody
    public ServerResponse updatacommon(@Param("commentid") String commentid,@Param("commentcontent") String commentcontent){//管理员的信息应该是由客户端传送过来
        System.out.println(commentcontent);
        if(TbCommentService.updatacommon(commentid,commentcontent)!=null){
            return ServerResponse.createBySuccess(0);
        }else{
            return ServerResponse.createByErrorMessage("更新失败");
        }
    }
}
