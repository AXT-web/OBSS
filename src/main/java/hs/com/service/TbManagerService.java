package hs.com.service;

import hs.com.entity.TbCustomer;
import hs.com.entity.TbManager;
import org.apache.ibatis.annotations.Param;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface TbManagerService {
    int deleteByPrimaryKey(String adminid);

    int insert(TbManager record);

    int insertSelective(TbManager record);

    TbManager selectByPrimaryKey(String adminid);

    int updateByPrimaryKeySelective(TbManager record);

    int updateByPrimaryKey(TbManager record);

    List<TbManager> selectAll();

    TbManager login( @Param("adminid") String adminid, @Param("adminpwd") String adminpwd); //管理员登录
}
