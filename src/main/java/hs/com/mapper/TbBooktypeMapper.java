package hs.com.mapper;

import hs.com.entity.TbBook;
import hs.com.entity.TbBooktype;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbBooktypeMapper {
    int deleteByPrimaryKey(Integer booktypeid);

    int insert(TbBooktype record);

    int insertSelective(TbBooktype record);

    TbBooktype selectByPrimaryKey(Integer booktypeid);

    int updateByPrimaryKeySelective(TbBooktype record);

    int updateByPrimaryKey(TbBooktype record);

    List<TbBooktype> selectAll(); //查询所有管理员的信息

    List<TbBooktype> selectid(@Param("BookTypeId") String BookTypeId); //根据id查询

    List<TbBooktype> selectname(@Param("BookTypeName") String BookTypeName); //类似名字查询

    int deletebooktypeforid(@Param("booktypeid") Integer booktypeid);

    Boolean updatabooktype(@Param("booktypeid") Integer booktypeid , @Param("booktypename") String booktypename);

    int addbooktype(@Param("booktypeid") Integer booktypeid, @Param("booktypename") String booktypename );
}