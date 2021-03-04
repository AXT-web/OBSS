package hs.com.service.impl;

import hs.com.entity.TbBook;
import hs.com.mapper.TbCommentMapper;
import hs.com.service.TbCommentService;
import hs.com.entity.TbComment;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("TbCommentServiceImpl")  //注解为业务类，并且方便在控制器中注入我们这个业务类
public class TbCommentServiceImpl implements TbCommentService {
    @Autowired  //注解表示后面的定义的变量spring自动为我们进行封装

    private TbCommentMapper TbCommentMapper;  //这里声明了数据表的接口类，主要是因为我们业务要调用持久层接口来操作数据表（增删改查操作等）


    @Override
    public int deleteByPrimaryKey(String id) {
        return TbCommentMapper.deleteByPrimaryKey(id);
    }


    @Override
    public int insert(TbComment record) {
        return TbCommentMapper.insert(record);
    }


    @Override
    public int insertSelective(TbComment record) {
        return TbCommentMapper.insertSelective(record);
    }

    @Override
    public TbComment selectByPrimaryKey(String id) {
        return TbCommentMapper.selectByPrimaryKey(id);
    }


    @Override
    public int updateByPrimaryKeySelective(TbComment record) {
        return TbCommentMapper.updateByPrimaryKeySelective(record);
    }


    @Override
    public int updateByPrimaryKey(TbComment record) {
        return TbCommentMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<TbComment> selectAll() {
        return TbCommentMapper.selectAll();
    }

    @Override
    public List<TbComment> selectid(String bookid) {
        return TbCommentMapper.selectid(bookid);
    }

    @Override
    public List<TbComment> selectidtwoid(String bookid,String customerid) {
        return TbCommentMapper.selectidtwoid(bookid,customerid);
    }

    @Override
    public List<TbComment> selectAlldesc() {
        return TbCommentMapper.selectAlldesc();
    }

    @Override
    public int addcommon(@Param("commentid") String commentid, @Param("customerid") String customerid, @Param("customername") String customername, @Param("commentcontent") String commentcontent ,@Param("bookid") Integer bookid) {
        return TbCommentMapper.addcommon(commentid,customerid,customername,commentcontent,bookid);
    }

    @Override
    public List<TbComment> selectcusid(String customerid) {
        return TbCommentMapper.selectcusid(customerid);
    }

    @Override
    public Boolean updatacommon(@Param("commentid") String commentid,@Param("commentcontent") String commentcontent) {
        return TbCommentMapper.updatacommon(commentid,commentcontent);
    }
}
