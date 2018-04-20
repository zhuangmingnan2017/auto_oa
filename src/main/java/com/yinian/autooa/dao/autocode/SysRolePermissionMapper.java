package com.yinian.autooa.dao.autocode;

import com.yinian.autooa.model.SysRolePermission;
import com.yinian.autooa.model.SysRolePermissionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysRolePermissionMapper {
    /**
     *  根据指定的条件获取数据库记录数,sys_role_permission
     *
     * @param example
     */
    int countByExample(SysRolePermissionExample example);

    /**
     *  根据指定的条件删除数据库符合条件的记录,sys_role_permission
     *
     * @param example
     */
    int deleteByExample(SysRolePermissionExample example);

    /**
     *  根据主键删除数据库的记录,sys_role_permission
     *
     * @param id
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *  新写入数据库记录,sys_role_permission
     *
     * @param record
     */
    int insert(SysRolePermission record);

    /**
     *  动态字段,写入数据库记录,sys_role_permission
     *
     * @param record
     */
    int insertSelective(SysRolePermission record);

    /**
     *  根据指定的条件查询符合条件的数据库记录,sys_role_permission
     *
     * @param example
     */
    List<SysRolePermission> selectByExample(SysRolePermissionExample example);

    /**
     *  根据指定主键获取一条数据库记录,sys_role_permission
     *
     * @param id
     */
    SysRolePermission selectByPrimaryKey(Integer id);

    /**
     *  动态根据指定的条件来更新符合条件的数据库记录,sys_role_permission
     *
     * @param record
     * @param example
     */
    int updateByExampleSelective(@Param("record") SysRolePermission record, @Param("example") SysRolePermissionExample example);

    /**
     *  根据指定的条件来更新符合条件的数据库记录,sys_role_permission
     *
     * @param record
     * @param example
     */
    int updateByExample(@Param("record") SysRolePermission record, @Param("example") SysRolePermissionExample example);

    /**
     *  动态字段,根据主键来更新符合条件的数据库记录,sys_role_permission
     *
     * @param record
     */
    int updateByPrimaryKeySelective(SysRolePermission record);

    /**
     *  根据主键来更新符合条件的数据库记录,sys_role_permission
     *
     * @param record
     */
    int updateByPrimaryKey(SysRolePermission record);

    int insertBatchSelective(List<SysRolePermission> records);
}