package com.yinian.autooa.dao.autocode;

import com.yinian.autooa.model.SysUserRole;
import com.yinian.autooa.model.SysUserRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysUserRoleMapper {
    /**
     *  根据指定的条件获取数据库记录数,sys_user_role
     *
     * @param example
     */
    int countByExample(SysUserRoleExample example);

    /**
     *  根据指定的条件删除数据库符合条件的记录,sys_user_role
     *
     * @param example
     */
    int deleteByExample(SysUserRoleExample example);

    /**
     *  根据主键删除数据库的记录,sys_user_role
     *
     * @param id
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *  新写入数据库记录,sys_user_role
     *
     * @param record
     */
    int insert(SysUserRole record);

    /**
     *  动态字段,写入数据库记录,sys_user_role
     *
     * @param record
     */
    int insertSelective(SysUserRole record);

    /**
     *  根据指定的条件查询符合条件的数据库记录,sys_user_role
     *
     * @param example
     */
    List<SysUserRole> selectByExample(SysUserRoleExample example);

    /**
     *  根据指定主键获取一条数据库记录,sys_user_role
     *
     * @param id
     */
    SysUserRole selectByPrimaryKey(Integer id);

    /**
     *  动态根据指定的条件来更新符合条件的数据库记录,sys_user_role
     *
     * @param record
     * @param example
     */
    int updateByExampleSelective(@Param("record") SysUserRole record, @Param("example") SysUserRoleExample example);

    /**
     *  根据指定的条件来更新符合条件的数据库记录,sys_user_role
     *
     * @param record
     * @param example
     */
    int updateByExample(@Param("record") SysUserRole record, @Param("example") SysUserRoleExample example);

    /**
     *  动态字段,根据主键来更新符合条件的数据库记录,sys_user_role
     *
     * @param record
     */
    int updateByPrimaryKeySelective(SysUserRole record);

    /**
     *  根据主键来更新符合条件的数据库记录,sys_user_role
     *
     * @param record
     */
    int updateByPrimaryKey(SysUserRole record);

    int insertBatchSelective(List<SysUserRole> records);
}