package hs.com.mapper;

import hs.com.entity.TbBook;
import hs.com.entity.TbOrder;
import hs.com.entity.TbOrderdetail;
import org.apache.ibatis.annotations.Param;

import java.sql.Date;
import java.util.List;

public interface TbOrderMapper {
    int deleteByPrimaryKey(String orderid);

    int insert(TbOrder record);

    int insertSelective(TbOrder record);

    TbOrder selectByPrimaryKey(String orderid);

    int updateByPrimaryKeySelective(TbOrder record);

    int updateByPrimaryKey(TbOrder record);

    List<TbOrder> selectAll(); //查询所有管理员的信息

    Boolean updataorder(@Param("orderid") String orderid, @Param("ordermount") Integer ordermount, @Param("message") String message, @Param("postmethod") String postmethod, @Param("paymethod") String paymethod, @Param("recevername") String recevername, @Param("recevertel") String recevertel, @Param("receveraddr") String receveraddr, @Param("memo") String memo, @Param("totalprice") Float totalprice);

    int deleteorderforid(@Param("orderid") String orderid);

    List<TbOrder> selectid(@Param("orderid") String orderid); //根据id查询

    List<TbOrder> selectcusid(@Param("customerid") String customerid); //根据顾客id查询

    List<TbOrder> selectAllfororderdesc(); //查询所有的信息

    int addorder(@Param("orderid") String orderid, @Param("id") String id,@Param("customerid") String customerid, @Param("ordermount") Integer ordermount,@Param("message") String message, @Param("postmethod") String postmethod,@Param("paymethod") String paymethod, @Param("recevername") String recevername,@Param("receveraddr") String receveraddr, @Param("recevertel") String recevertel,@Param("memo") String memo,@Param("totalprice") Float totalprice);
}