package hs.com.service;

import hs.com.entity.TbCustomer;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface TbCustomerService {
    int deleteByPrimaryKey(String customerid);

    int insert(TbCustomer record);

    int insertSelective(TbCustomer record);

    TbCustomer selectByPrimaryKey(String customerid);

    int updateByPrimaryKeySelective(TbCustomer record);

    int updateByPrimaryKey(TbCustomer record);

    List<TbCustomer> selectAll();

    TbCustomer login(@Param("customerid") String customerid, @Param("customerpwd") String customerpwd); //用户登录

    Boolean register(@Param("customerid") String customerid, @Param("customerpwd") String customerpwd);//用户注册

    List<TbCustomer> selectid(@Param("customerid") String customerid); //根据id查询

    List<TbCustomer> selectname(@Param("customerid") String customername); //根据id查询

    List<TbCustomer> selectids(@Param("customerid") String customerid); //根据id查询所有数据

    Boolean updateTbCustomer(@Param("customerid") String customerid,@Param("customername") String customername,@Param("customersex") String customersex,@Param("customertruename") String customertruename,@Param("customertel") String customertel,@Param("customeraddr") String customeraddr,@Param("customerquer")String customerquer,@Param("customeranswer")String customeranswer);//更新数据

    int addcus(@Param("customerid") String customerid, @Param("customername") String customername, @Param("customerpwd") String customerpwd, @Param("customertruename") String customertruename, @Param("customersex") String customersex, @Param("customertel") String customertel, @Param("customeraddr") String customeraddr, @Param("customerregtime") String customerregtime, @Param("customerquer") String customerquer, @Param("customeranswer") String customeranswer);

    int deletecusforid(@Param("customerid") String customerid);

    Boolean updatapwd(@Param("customerid") String customerid,@Param("customerpwd") String customerpwd);

    Boolean updataanswerand(@Param("customerid") String customerid,@Param("customerquer") String customerquer,@Param("customeranswer") String customeranswer);
}
