package hs.com.mapper;

import hs.com.entity.TbBook;
import hs.com.entity.TbComment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbCommentMapper {
    int deleteByPrimaryKey(String commentid);

    int insert(TbComment record);

    int insertSelective(TbComment record);

    TbComment selectByPrimaryKey(String commentid);

    int updateByPrimaryKeySelective(TbComment record);

    int updateByPrimaryKey(TbComment record);

    List<TbComment> selectAll(); //查询所有管理员的信息

    List<TbComment> selectid(@Param("bookid") String bookid); //根据id查询

    List<TbComment> selectidtwoid(@Param("bookid") String bookid,@Param("customerid") String customerid); //根据id查询

    List<TbComment> selectAlldesc(); //查询所有管理员的信息

    int addcommon(@Param("commentid") String commentid, @Param("customerid") String customerid,@Param("customername") String customername, @Param("commentcontent") String commentcontent,@Param("bookid") Integer bookid );

    List<TbComment> selectcusid(@Param("customerid") String customerid); //根据id查询

    Boolean updatacommon(@Param("commentid") String commentid,@Param("commentcontent") String commentcontent);
}