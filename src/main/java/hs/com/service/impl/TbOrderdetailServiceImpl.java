package hs.com.service.impl;

import hs.com.entity.TbBook;
import hs.com.mapper.TbOrderdetailMapper;
import hs.com.service.TbOrderdetailService;

import hs.com.entity.TbOrderdetail;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("TbOrderdetailServiceImpl")  //注解为业务类，并且方便在控制器中注入我们这个业务类
public class TbOrderdetailServiceImpl implements TbOrderdetailService {
    @Autowired  //注解表示后面的定义的变量spring自动为我们进行封装

    private TbOrderdetailMapper TbOrderdetailMapper;  //这里声明了数据表的接口类，主要是因为我们业务要调用持久层接口来操作数据表（增删改查操作等）


    @Override
    public int deleteByPrimaryKey(String id) {
        return TbOrderdetailMapper.deleteByPrimaryKey(id);
    }


    @Override
    public int insert(TbOrderdetail record) {
        return TbOrderdetailMapper.insert(record);
    }


    @Override
    public int insertSelective(TbOrderdetail record) {
        return TbOrderdetailMapper.insertSelective(record);
    }

    @Override
    public TbOrderdetail selectByPrimaryKey(String id) {
        return TbOrderdetailMapper.selectByPrimaryKey(id);
    }


    @Override
    public int updateByPrimaryKeySelective(TbOrderdetail record) {
        return TbOrderdetailMapper.updateByPrimaryKeySelective(record);
    }


    @Override
    public int updateByPrimaryKey(TbOrderdetail record) {
        return TbOrderdetailMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<TbOrderdetail> selectAll() {
        return TbOrderdetailMapper.selectAll();
    }

    @Override
    public int deleteordertailforid(@Param("orderid") String orderid) {
        return TbOrderdetailMapper.deleteordertailforid(orderid);
    }

    @Override
    public List<TbOrderdetail> selectid(String orderid) {
        return TbOrderdetailMapper.selectid(orderid);
    }

    @Override
    public Boolean updataorderdetail(String orderdetailid,String id,String orderid,Integer bookid,Integer ordermount, String poststatus,String recevstatus ,String sigletotalprice ) {
        return TbOrderdetailMapper.updataorderdetail(orderdetailid,id,orderid,bookid,ordermount,poststatus,recevstatus,sigletotalprice);
    }

    @Override
    public List<TbOrderdetail> selectpoststatus(String poststatus) {
        return TbOrderdetailMapper.selectpoststatus(poststatus);
    }

    @Override
    public List<TbOrderdetail> selectnoget(String poststatus ,String recevstatus,String orderid) {
        return TbOrderdetailMapper.selectnoget(poststatus,recevstatus,orderid);
    }

    @Override
    public Boolean updataorderstatus(String orderid,String poststatus,String recevstatus) {
        return TbOrderdetailMapper.updataorderstatus(orderid,poststatus,recevstatus);
    }

    @Override
    public List<TbOrderdetail> selectAllfororderdetaildesc() {
        return TbOrderdetailMapper.selectAllfororderdetaildesc();
    }

    @Override
    public int addorderdetail(@Param("orderdetailld") String orderdetailld, @Param("id") String id,@Param("orderid") String orderid, @Param("bookid") Integer bookid,@Param("ordermount") Integer ordermount, @Param("poststatus") String poststatus,@Param("recevstatus") String recevstatus, @Param("sigletotalprice") String sigletotalprice ){
        return TbOrderdetailMapper.addorderdetail( orderdetailld, id,orderid,bookid,ordermount,poststatus,recevstatus,sigletotalprice);
    }
}
