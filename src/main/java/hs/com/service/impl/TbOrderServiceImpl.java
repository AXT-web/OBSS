package hs.com.service.impl;

import hs.com.entity.TbBook;
import hs.com.mapper.TbOrderMapper;
import hs.com.service.TbOrderService;
import hs.com.entity.TbOrder;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

@Service("TbOrderServiceImpl")  //注解为业务类，并且方便在控制器中注入我们这个业务类
public class TbOrderServiceImpl implements TbOrderService {
    @Autowired  //注解表示后面的定义的变量spring自动为我们进行封装

    private TbOrderMapper TbOrderMapper;  //这里声明了数据表的接口类，主要是因为我们业务要调用持久层接口来操作数据表（增删改查操作等）


    @Override
    public int deleteByPrimaryKey(String id) {
        return TbOrderMapper.deleteByPrimaryKey(id);
    }


    @Override
    public int insert(TbOrder record) {
        return TbOrderMapper.insert(record);
    }


    @Override
    public int insertSelective(TbOrder record) {
        return TbOrderMapper.insertSelective(record);
    }

    @Override
    public TbOrder selectByPrimaryKey(String id) {
        return TbOrderMapper.selectByPrimaryKey(id);
    }


    @Override
    public int updateByPrimaryKeySelective(TbOrder record) {
        return TbOrderMapper.updateByPrimaryKeySelective(record);
    }


    @Override
    public int updateByPrimaryKey(TbOrder record) {
        return TbOrderMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<TbOrder> selectAll() {
        return TbOrderMapper.selectAll();
    }

    @Override
    public Boolean updataorder(@Param("orderid") String orderid, @Param("ordermount") Integer ordermount, @Param("message") String message, @Param("postmethod") String postmethod, @Param("paymethod") String paymethod, @Param("recevername") String recevername, @Param("recevertel") String recevertel, @Param("receveraddr") String receveraddr, @Param("memo") String memo, @Param("totalprice") Float totalprice) {
        return TbOrderMapper.updataorder(orderid,ordermount,message,postmethod,paymethod,recevername,recevertel,receveraddr,memo,totalprice);
    }

    @Override
    public int deleteorderforid(@Param("orderid") String orderid) {
        return TbOrderMapper.deleteorderforid(orderid);
    }

    @Override
    public List<TbOrder> selectid(String orderid) {
        return TbOrderMapper.selectid(orderid);
    }

    @Override
    public List<TbOrder> selectcusid(String customerid) {
        return TbOrderMapper.selectcusid(customerid);
    }

    @Override
    public List<TbOrder> selectAllfororderdesc() {
        return TbOrderMapper.selectAllfororderdesc();
    }

    @Override
    public int addorder(@Param("orderid") String orderid, @Param("id") String id,@Param("customerid") String customerid, @Param("ordermount") Integer ordermount,@Param("message") String message, @Param("postmethod") String postmethod,@Param("paymethod") String paymethod, @Param("recevername") String recevername,@Param("receveraddr") String receveraddr, @Param("recevertel") String recevertel,@Param("memo") String memo,@Param("totalprice") Float totalprice){
        return TbOrderMapper.addorder(orderid, id,  customerid,  ordermount,message,postmethod,paymethod,recevername,receveraddr,recevertel,memo,totalprice);
    }
}
