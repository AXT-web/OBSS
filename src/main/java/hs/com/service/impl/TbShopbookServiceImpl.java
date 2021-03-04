package hs.com.service.impl;

import hs.com.entity.TbBook;
import hs.com.mapper.TbShopbookMapper;
import hs.com.service.TbShopbookService;
import hs.com.entity.TbShopbook;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("TbShopbookServiceImpl")  //注解为业务类，并且方便在控制器中注入我们这个业务类
public class TbShopbookServiceImpl implements TbShopbookService {
    @Autowired  //注解表示后面的定义的变量spring自动为我们进行封装

    private TbShopbookMapper TbShopbookMapper;  //这里声明了数据表的接口类，主要是因为我们业务要调用持久层接口来操作数据表（增删改查操作等）


    @Override
    public int deleteByPrimaryKey(String id) {
        return TbShopbookMapper.deleteByPrimaryKey(id);
    }


    @Override
    public int insert(TbShopbook record) {
        return TbShopbookMapper.insert(record);
    }


    @Override
    public int insertSelective(TbShopbook record) {
        return TbShopbookMapper.insertSelective(record);
    }

    @Override
    public TbShopbook selectByPrimaryKey(String id) {
        return TbShopbookMapper.selectByPrimaryKey(id);
    }


    @Override
    public int updateByPrimaryKeySelective(TbShopbook record) {
        return TbShopbookMapper.updateByPrimaryKeySelective(record);
    }


    @Override
    public int updateByPrimaryKey(TbShopbook record) {
        return TbShopbookMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<TbShopbook> selectAll() {
        return TbShopbookMapper.selectAll();
    }

    @Override
    public List<TbShopbook> selectAlldesc() {
        return TbShopbookMapper.selectAlldesc();
    }

    @Override
    public List<TbShopbook> selectid(String customerid) {
        return TbShopbookMapper.selectid(customerid);
    }

    @Override
    public Boolean updataforid(@Param("shopbookid") String shopbookid, @Param("price") Float price, @Param("ordermount") Integer ordermount){
        return TbShopbookMapper.updataforid(shopbookid,price,ordermount);
    }

    @Override
    public int addbookshop(@Param("shopbookid") String shopbookid, @Param("customerid") String customerid,@Param("bookid") Integer bookid, @Param("ordermount") Integer ordermount,@Param("price") Float price, @Param("ispay") String ispay){
        return TbShopbookMapper.addbookshop(shopbookid,customerid,bookid,ordermount,price,ispay);
    }

    @Override
    public List<TbShopbook> selectidt(@Param("customerid") String customerid,@Param("bookid") String bookid) {
        return TbShopbookMapper.selectidt(customerid,bookid);
    }

    @Override
    public int deleteshopbook(String shopbookid) {
        return TbShopbookMapper.deleteshopbook(shopbookid);
    }
}
