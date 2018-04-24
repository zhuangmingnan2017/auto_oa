package com.yinian.autooa.dao.autocode;

import com.yinian.autooa.model.Department;
import com.yinian.autooa.model.DepartmentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DepartmentMapper {
    /**
     *  根据指定的条件获取数据库记录数,department
     *
     * @param example
     */
    int countByExample(DepartmentExample example);

    /**
     *  根据指定的条件删除数据库符合条件的记录,department
     *
     * @param example
     */
    int deleteByExample(DepartmentExample example);

    /**
     *  根据主键删除数据库的记录,department
     *
     * @param id
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *  新写入数据库记录,department
     *
     * @param record
     */
    int insert(Department record);

    /**
     *  动态字段,写入数据库记录,department
     *
     * @param record
     */
    int insertSelective(Department record);

    /**
     *  根据指定的条件查询符合条件的数据库记录,department
     *
     * @param example
     */
    List<Department> selectByExample(DepartmentExample example);

    /**
     *  根据指定主键获取一条数据库记录,department
     *
     * @param id
     */
    Department selectByPrimaryKey(Integer id);

    /**
     *  动态根据指定的条件来更新符合条件的数据库记录,department
     *
     * @param record
     * @param example
     */
    int updateByExampleSelective(@Param("record") Department record, @Param("example") DepartmentExample example);

    /**
     *  根据指定的条件来更新符合条件的数据库记录,department
     *
     * @param record
     * @param example
     */
    int updateByExample(@Param("record") Department record, @Param("example") DepartmentExample example);

    /**
     *  动态字段,根据主键来更新符合条件的数据库记录,department
     *
     * @param record
     */
    int updateByPrimaryKeySelective(Department record);

    /**
     *  根据主键来更新符合条件的数据库记录,department
     *
     * @param record
     */
    int updateByPrimaryKey(Department record);

    int insertBatchSelective(List<Department> records);
}