package com.yinian.autooa.dao.autocode;

import com.yinian.autooa.model.SysRole;
import com.yinian.autooa.model.SysRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysRoleMapper {
    /**
     *  根据指定的条件获取数据库记录数,sys_role
     *
     * @param example
     */
    int countByExample(SysRoleExample example);

    /**
     *  根据指定的条件删除数据库符合条件的记录,sys_role
     *
     * @param example
     */
    int deleteByExample(SysRoleExample example);

    /**
     *  根据主键删除数据库的记录,sys_role
     *
     * @param id
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *  新写入数据库记录,sys_role
     *
     * @param record
     */
    int insert(SysRole record);

    /**
     *  动态字段,写入数据库记录,sys_role
     *
     * @param record
     */
    int insertSelective(SysRole record);

    /**
     *  根据指定的条件查询符合条件的数据库记录,sys_role
     *
     * @param example
     */
    List<SysRole> selectByExample(SysRoleExample example);

    /**
     *  根据指定主键获取一条数据库记录,sys_role
     *
     * @param id
     */
    SysRole selectByPrimaryKey(Integer id);

    /**
     *  动态根据指定的条件来更新符合条件的数据库记录,sys_role
     *
     * @param record
     * @param example
     */
    int updateByExampleSelective(@Param("record") SysRole record, @Param("example") SysRoleExample example);

    /**
     *  根据指定的条件来更新符合条件的数据库记录,sys_role
     *
     * @param record
     * @param example
     */
    int updateByExample(@Param("record") SysRole record, @Param("example") SysRoleExample example);

    /**
     *  动态字段,根据主键来更新符合条件的数据库记录,sys_role
     *
     * @param record
     */
    int updateByPrimaryKeySelective(SysRole record);

    /**
     *  根据主键来更新符合条件的数据库记录,sys_role
     *
     * @param record
     */
    int updateByPrimaryKey(SysRole record);

    int insertBatchSelective(List<SysRole> records);
}