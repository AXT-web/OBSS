package hs.com.mapper;

import hs.com.entity.TbBook;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbBookMapper {
    int deleteByPrimaryKey(Integer bookid);

    int insert(TbBook record);

    int insertSelective(TbBook record);

    TbBook selectByPrimaryKey(Integer bookid);

    int updateByPrimaryKeySelective(TbBook record);

    int updateByPrimaryKey(TbBook record);

    List<TbBook> selectAll(); //查询所有书籍的信息

    List<TbBook> selectid(@Param("BookId") String BookId); //根据id查询

    List<TbBook> selectname(@Param("BookName") String BookName); //类似名字查询

    List<TbBook> selectnamebyBookDealmountdesc(@Param("BookName") String BookName); //类似名字查询按BookDealmount降序

    List<TbBook> selectnamebyBookDealmountasc(@Param("BookName") String BookName); //类似名字查询按BookDealmount升序

    List<TbBook> selectnamebyBookLookmountdesc(@Param("BookName") String BookName); //类似名字查询按BookLookmount降序

    List<TbBook> selectnamebyBookLookmountasc(@Param("BookName") String BookName); //类似名字查询按BookLookmount升序

    List<TbBook> selectnamebyBookStoremountdesc(@Param("BookName") String BookName); //类似名字查询按BookStoremount降序

    List<TbBook> selectnamebyBookStoremountasc(@Param("BookName") String BookName); //类似名字查询按BookStoremount升序

    Boolean updatabook(@Param("bookid") Integer bookid, @Param("booktypeid") Integer booktypeid,@Param("bookname") String bookname, @Param("bookpress") String bookpress,@Param("bookpages") Integer bookpages, @Param("bookauthor") String bookauthor,@Param("booktanslor") String booktanslor, @Param("bookprice") Integer bookprice,@Param("bookoutline") String bookoutline, @Param("bookdealmount") Integer bookdealmount,@Param("booklookmount") Integer booklookmount,@Param("bookstoremount") Integer bookstoremount);

    int addbook(@Param("bookid") Integer bookid, @Param("booktypeid") Integer booktypeid,@Param("bookname") String bookname, @Param("bookpress") String bookpress,@Param("bookpages") Integer bookpages, @Param("bookauthor") String bookauthor,@Param("booktanslor") String booktanslor, @Param("bookprice") Integer bookprice,@Param("bookoutline") String bookoutline, @Param("bookdealmount") Integer bookdealmount,@Param("booklookmount") Integer booklookmount,@Param("bookstoremount") Integer bookstoremount);

    int deletebookforid(@Param("bookid") Integer bookid);

    List<TbBook> selectbooktypeid(@Param("booktypeid") Integer booktypeid); //根据id查询
}