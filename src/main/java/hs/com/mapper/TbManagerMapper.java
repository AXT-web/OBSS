package hs.com.mapper;

import hs.com.entity.TbCustomer;
import hs.com.entity.TbManager;
import org.apache.ibatis.annotations.Param;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface TbManagerMapper {
    int deleteByPrimaryKey(String adminid);

    int insert(TbManager record);

    int insertSelective(TbManager record);

    TbManager selectByPrimaryKey(String adminid);

    int updateByPrimaryKeySelective(TbManager record);

    int updateByPrimaryKey(TbManager record);

    List<TbManager> selectAll(); //查询所有管理员的信息

    TbManager login( @Param("adminid") String adminid, @Param("adminpwd") String adminpwd); //管理员登录
}