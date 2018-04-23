package com.yinian.autooa.dao.autocode;

import com.yinian.autooa.model.File;
import com.yinian.autooa.model.FileExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FileMapper {
    /**
     *  根据指定的条件获取数据库记录数,file
     *
     * @param example
     */
    int countByExample(FileExample example);

    /**
     *  根据指定的条件删除数据库符合条件的记录,file
     *
     * @param example
     */
    int deleteByExample(FileExample example);

    /**
     *  根据主键删除数据库的记录,file
     *
     * @param id
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *  新写入数据库记录,file
     *
     * @param record
     */
    int insert(File record);

    /**
     *  动态字段,写入数据库记录,file
     *
     * @param record
     */
    int insertSelective(File record);

    /**
     *  根据指定的条件查询符合条件的数据库记录,file
     *
     * @param example
     */
    List<File> selectByExample(FileExample example);

    /**
     *  根据指定主键获取一条数据库记录,file
     *
     * @param id
     */
    File selectByPrimaryKey(Integer id);

    /**
     *  动态根据指定的条件来更新符合条件的数据库记录,file
     *
     * @param record
     * @param example
     */
    int updateByExampleSelective(@Param("record") File record, @Param("example") FileExample example);

    /**
     *  根据指定的条件来更新符合条件的数据库记录,file
     *
     * @param record
     * @param example
     */
    int updateByExample(@Param("record") File record, @Param("example") FileExample example);

    /**
     *  动态字段,根据主键来更新符合条件的数据库记录,file
     *
     * @param record
     */
    int updateByPrimaryKeySelective(File record);

    /**
     *  根据主键来更新符合条件的数据库记录,file
     *
     * @param record
     */
    int updateByPrimaryKey(File record);

    int insertBatchSelective(List<File> records);
}