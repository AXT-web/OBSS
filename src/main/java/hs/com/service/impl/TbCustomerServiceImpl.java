package hs.com.service.impl;

import hs.com.entity.TbCustomer;
import hs.com.mapper.TbCustomerMapper;
import hs.com.service.TbCustomerService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("TbCustomerServiceImpl")  //注解为业务类，并且方便在控制器中注入我们这个业务类
public class TbCustomerServiceImpl implements TbCustomerService {
    @Autowired  //注解表示后面的定义的变量spring自动为我们进行封装

    private TbCustomerMapper TbCustomerMapper;  //这里声明了数据表的接口类，主要是因为我们业务要调用持久层接口来操作数据表（增删改查操作等）


    @Override
    public int deleteByPrimaryKey(String id) {
        return TbCustomerMapper.deleteByPrimaryKey(id);
    }


    @Override
    public int insert(TbCustomer record) {
        return TbCustomerMapper.insert(record);
    }


    @Override
    public int insertSelective(TbCustomer record) {
        return TbCustomerMapper.insertSelective(record);
    }

    @Override
    public TbCustomer selectByPrimaryKey(String id) {
        return TbCustomerMapper.selectByPrimaryKey(id);
    }


    @Override
    public int updateByPrimaryKeySelective(TbCustomer record) {
        return TbCustomerMapper.updateByPrimaryKeySelective(record);
    }


    @Override
    public int updateByPrimaryKey(TbCustomer record) {
        return TbCustomerMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<TbCustomer> selectAll() {
        return TbCustomerMapper.selectAll();
    }

    @Override
    public TbCustomer login(String customerid,String customerpwd) {
        return TbCustomerMapper.login(customerid,customerpwd);
    }

    @Override
    public Boolean register(String customerid,String customerpwd) {
        return TbCustomerMapper.register(customerid,customerpwd);
    }

    @Override
    public List<TbCustomer> selectid(String customerid) {
        return TbCustomerMapper.selectid(customerid);
    }

    @Override
    public List<TbCustomer> selectname(String customername) {
        return TbCustomerMapper.selectname(customername);
    }

    @Override
    public List<TbCustomer> selectids(String customerid) {
        return TbCustomerMapper.selectids(customerid);
    }

    @Override
    public Boolean updateTbCustomer(String customerid, String customername, String customertruename, @Param("customersex") String customersex,@Param("customertel") String customertel, @Param("customeraddr") String customeraddr, @Param("customerquer") String customerquer, @Param("customeranswer") String customeranswer) {
        return TbCustomerMapper.updateTbCustomer(customerid,customername,customertruename,customersex,customertel,customeraddr,customerquer,customeranswer);
    }

    @Override
    public int addcus(String customerid, String customername, String customerpwd, String customertruename, String customersex, String customertel, String customeraddr, String customerregtime, String customerquer, String customeranswer) {
        return TbCustomerMapper.addcus(customerid, customername,  customerpwd,  customertruename, customersex,  customertel, customeraddr, customerregtime , customerquer, customeranswer);
    }

    @Override
    public int deletecusforid(String customerid) {
        return TbCustomerMapper.deletecusforid(customerid);
    }

    @Override
    public Boolean updatapwd(@Param("customerid")String customerid ,@Param("customerpwd")String customerpwd) {
        return TbCustomerMapper.updatapwd(customerid,customerpwd);
    }

    @Override
    public Boolean updataanswerand(String customerid,  @Param("customerquer") String customerquer, @Param("customeranswer") String customeranswer) {
        return TbCustomerMapper.updataanswerand(customerid,customerquer,customeranswer);
    }

}
