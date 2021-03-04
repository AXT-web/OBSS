package hs.com.service;

import hs.com.entity.TbShopbook;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbShopbookService {
    int deleteByPrimaryKey(String customerid);

    int insert(TbShopbook record);

    int insertSelective(TbShopbook record);

    TbShopbook selectByPrimaryKey(String customerid);

    int updateByPrimaryKeySelective(TbShopbook record);

    int updateByPrimaryKey(TbShopbook record);

    List<TbShopbook> selectAll();

    List<TbShopbook> selectAlldesc();

    List<TbShopbook> selectid(String customerid);

    Boolean updataforid(@Param("shopbookid") String shopbookid, @Param("price") Float price, @Param("ordermount") Integer ordermount);

    int addbookshop(@Param("shopbookid") String shopbookid, @Param("customerid") String customerid,@Param("bookid") Integer bookid, @Param("ordermount") Integer ordermount,@Param("price") Float price, @Param("ispay") String ispay);

    List<TbShopbook> selectidt(@Param("customerid") String customerid,@Param("bookid") String bookid);

    int deleteshopbook(@Param("shopbookid") String shopbookid);
}
