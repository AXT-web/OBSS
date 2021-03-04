package hs.com.service.impl;

import hs.com.entity.TbCustomer;
import hs.com.mapper.TbManagerMapper;
import hs.com.service.TbManagerService;
import hs.com.entity.TbManager;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service("TbManagerServiceImpl")  //注解为业务类，并且方便在控制器中注入我们这个业务类
public class TbManagerServiceImpl implements TbManagerService {
    @Autowired  //注解表示后面的定义的变量spring自动为我们进行封装

    private TbManagerMapper TbManagerMapper;  //这里声明了数据表的接口类，主要是因为我们业务要调用持久层接口来操作数据表（增删改查操作等）


    @Override
    public int deleteByPrimaryKey(String adminid) {
        return TbManagerMapper.deleteByPrimaryKey(adminid);
    }


    @Override
    public int insert(TbManager record) {
        return TbManagerMapper.insert(record);
    }


    @Override
    public int insertSelective(TbManager record) {
        return TbManagerMapper.insertSelective(record);
    }

    @Override
    public TbManager selectByPrimaryKey(String adminid) {
        return TbManagerMapper.selectByPrimaryKey(adminid);
    }

    @Override
    public List<TbManager> selectAll() {
        return TbManagerMapper.selectAll();
    }

    @Override
    public int updateByPrimaryKeySelective(TbManager record) {
        return TbManagerMapper.updateByPrimaryKeySelective(record);
    }


    @Override
    public int updateByPrimaryKey(TbManager record) {
        return TbManagerMapper.updateByPrimaryKey(record);
    }

    @Override
    public TbManager login(String adminid, String adminpwd) {
        return TbManagerMapper.login(adminid,adminpwd);
    }

}
