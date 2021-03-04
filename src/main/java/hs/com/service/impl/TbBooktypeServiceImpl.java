package hs.com.service.impl;

import hs.com.entity.TbBook;
import hs.com.mapper.TbBooktypeMapper;
import hs.com.service.TbBooktypeService;
import hs.com.entity.TbBooktype;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("TbBooktypeServiceImpl")  //注解为业务类，并且方便在控制器中注入我们这个业务类
public class TbBooktypeServiceImpl implements TbBooktypeService {
    @Autowired  //注解表示后面的定义的变量spring自动为我们进行封装

    private TbBooktypeMapper TbBooktypeMapper;  //这里声明了数据表的接口类，主要是因为我们业务要调用持久层接口来操作数据表（增删改查操作等）


    @Override
    public int deleteByPrimaryKey(Integer id) {
        return TbBooktypeMapper.deleteByPrimaryKey(id);
    }


    @Override
    public int insert(TbBooktype record) {
        return TbBooktypeMapper.insert(record);
    }


    @Override
    public int insertSelective(TbBooktype record) {
        return TbBooktypeMapper.insertSelective(record);
    }

    @Override
    public TbBooktype selectByPrimaryKey(Integer id) {
        return TbBooktypeMapper.selectByPrimaryKey(id);
    }


    @Override
    public int updateByPrimaryKeySelective(TbBooktype record) {
        return TbBooktypeMapper.updateByPrimaryKeySelective(record);
    }


    @Override
    public int updateByPrimaryKey(TbBooktype record) {
        return TbBooktypeMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<TbBooktype> selectAll() {
        return TbBooktypeMapper.selectAll();
    }

    @Override
    public List<TbBooktype> selectid(String BookTypeId) {
        return TbBooktypeMapper.selectid(BookTypeId);
    }

    @Override
    public List<TbBooktype> selectname(String BookTypeName) {
        return TbBooktypeMapper.selectname(BookTypeName);
    }

    @Override
    public int deletebooktypeforid(Integer booktypeid) {
        return TbBooktypeMapper.deletebooktypeforid(booktypeid);
    }

    @Override
    public Boolean updatabooktype(Integer booktypeid,String booktypename) {
        return TbBooktypeMapper.updatabooktype(booktypeid,booktypename);
    }

    @Override
    public int addbooktype(@Param("booktypeid") Integer booktypeid, @Param("booktypename") String booktypename) {
        return TbBooktypeMapper.addbooktype(booktypeid,booktypename);
    }
}
