package hs.com.service;

import hs.com.entity.TbOrder;
import hs.com.entity.TbOrderdetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbOrderdetailService {
    int deleteByPrimaryKey(String id);

    int insert(TbOrderdetail record);

    int insertSelective(TbOrderdetail record);

    TbOrderdetail selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(TbOrderdetail record);

    int updateByPrimaryKey(TbOrderdetail record);

    List<TbOrderdetail> selectAll();

    int deleteordertailforid(@Param("orderid") String orderid);

    List<TbOrderdetail> selectid(@Param("orderid") String orderid); //根据id查询

    Boolean updataorderdetail(@Param("orderdetailid") String orderdetailid, @Param("id") String id, @Param("orderid") String orderid, @Param("bookid") Integer bookid, @Param("ordermount") Integer ordermount, @Param("poststatus") String poststatus,@Param("recevstatus") String recevstatus, @Param("sigletotalprice") String sigletotalprice );

    List<TbOrderdetail> selectpoststatus(@Param("poststatus") String poststatus); //根据收发货状态查询

    List<TbOrderdetail> selectnoget(@Param("poststatus") String poststatus,@Param("recevstatus") String recevstatus,@Param("orderid") String orderid); //根据收发货状态查询

    Boolean updataorderstatus(@Param("orderid") String orderid,@Param("poststatus") String poststatus,@Param("recevstatus") String recevstatus);

    List<TbOrderdetail> selectAllfororderdetaildesc();

    int addorderdetail(@Param("orderdetailld") String orderdetailld, @Param("id") String id,@Param("orderid") String orderid, @Param("bookid") Integer bookid,@Param("ordermount") Integer ordermount, @Param("poststatus") String poststatus,@Param("recevstatus") String recevstatus, @Param("sigletotalprice") String sigletotalprice );
}
