package hs.com.service.impl;

import hs.com.entity.TbBook;
import hs.com.entity.TbCustomer;
import hs.com.mapper.TbBookMapper;
import hs.com.service.TbBookService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("TbBookServiceImpl")  //注解为业务类，并且方便在控制器中注入我们这个业务类
public class TbBookServiceImpl implements TbBookService {
    @Autowired  //注解表示后面的定义的变量spring自动为我们进行封装

    private TbBookMapper TbBookMapper;  //这里声明了数据表的接口类，主要是因为我们业务要调用持久层接口来操作数据表（增删改查操作等）


    @Override
    public int deleteByPrimaryKey(Integer bookid) {
        return TbBookMapper.deleteByPrimaryKey(bookid);
    }


    @Override
    public int insert(TbBook record) {
        return TbBookMapper.insert(record);
    }


    @Override
    public int insertSelective(TbBook record) {
        return TbBookMapper.insertSelective(record);
    }

    @Override
    public TbBook selectByPrimaryKey(Integer id) {
        return TbBookMapper.selectByPrimaryKey(id);
    }


    @Override
    public int updateByPrimaryKeySelective(TbBook record) {
        return TbBookMapper.updateByPrimaryKeySelective(record);
    }


    @Override
    public int updateByPrimaryKey(TbBook record) {
        return TbBookMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<TbBook> selectAll() {
        return TbBookMapper.selectAll();
    }

    @Override
    public List<TbBook> selectid(String BookId) {
        return TbBookMapper.selectid(BookId);
    }

    @Override
    public List<TbBook> selectname(String BookName) {
        return TbBookMapper.selectname(BookName);
    }

    @Override
    public List<TbBook> selectnamebyBookDealmountdesc(String BookName) {
        return TbBookMapper.selectname(BookName);
    }

    @Override
    public List<TbBook> selectnamebyBookDealmountasc(String BookName) {
        return TbBookMapper.selectname(BookName);
    }

    @Override
    public List<TbBook> selectnamebyBookLookmountdesc(String BookName) {
        return TbBookMapper.selectname(BookName);
    }

    @Override
    public List<TbBook> selectnamebyBookLookmountasc(String BookName) {
        return TbBookMapper.selectname(BookName);
    }

    @Override
    public List<TbBook> selectnamebyBookStoremountdesc(String BookName) {
        return TbBookMapper.selectname(BookName);
    }

    @Override
    public List<TbBook> selectnamebyBookStoremountasc(String BookName) {
        return TbBookMapper.selectname(BookName);
    }

    @Override
    public Boolean updatabook(Integer bookid,Integer booktypeid, String bookname, String bookpress,Integer bookpages, String bookauthor,String booktanslor,  Integer bookprice,String bookoutline,Integer bookdealmount,Integer booklookmount,Integer bookstoremount) {
        return TbBookMapper.updatabook( bookid, booktypeid,  bookname,  bookpress, bookpages,  bookauthor, booktanslor,   bookprice, bookoutline, bookdealmount, booklookmount, bookstoremount);
    }

    @Override
    public int addbook(Integer bookid,Integer booktypeid, String bookname, String bookpress,Integer bookpages, String bookauthor,String booktanslor,  Integer bookprice,String bookoutline,Integer bookdealmount,Integer booklookmount,Integer bookstoremount) {
        return TbBookMapper.addbook( bookid, booktypeid,  bookname,  bookpress, bookpages,  bookauthor, booktanslor,   bookprice, bookoutline, bookdealmount, booklookmount, bookstoremount);
    }

    @Override
    public int deletebookforid(Integer bookid) {
        return TbBookMapper.deletebookforid(bookid);
    }

    @Override
    public List<TbBook> selectbooktypeid(Integer booktypeid) {
        return TbBookMapper.selectbooktypeid(booktypeid);
    }
}
