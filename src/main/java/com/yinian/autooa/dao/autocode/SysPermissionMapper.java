package com.yinian.autooa.dao.autocode;

import com.yinian.autooa.model.SysPermission;
import com.yinian.autooa.model.SysPermissionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysPermissionMapper {
    /**
     *  根据指定的条件获取数据库记录数,sys_permission
     *
     * @param example
     */
    int countByExample(SysPermissionExample example);

    /**
     *  根据指定的条件删除数据库符合条件的记录,sys_permission
     *
     * @param example
     */
    int deleteByExample(SysPermissionExample example);

    /**
     *  根据主键删除数据库的记录,sys_permission
     *
     * @param id
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *  新写入数据库记录,sys_permission
     *
     * @param record
     */
    int insert(SysPermission record);

    /**
     *  动态字段,写入数据库记录,sys_permission
     *
     * @param record
     */
    int insertSelective(SysPermission record);

    /**
     *  根据指定的条件查询符合条件的数据库记录,sys_permission
     *
     * @param example
     */
    List<SysPermission> selectByExample(SysPermissionExample example);

    /**
     *  根据指定主键获取一条数据库记录,sys_permission
     *
     * @param id
     */
    SysPermission selectByPrimaryKey(Integer id);

    /**
     *  动态根据指定的条件来更新符合条件的数据库记录,sys_permission
     *
     * @param record
     * @param example
     */
    int updateByExampleSelective(@Param("record") SysPermission record, @Param("example") SysPermissionExample example);

    /**
     *  根据指定的条件来更新符合条件的数据库记录,sys_permission
     *
     * @param record
     * @param example
     */
    int updateByExample(@Param("record") SysPermission record, @Param("example") SysPermissionExample example);

    /**
     *  动态字段,根据主键来更新符合条件的数据库记录,sys_permission
     *
     * @param record
     */
    int updateByPrimaryKeySelective(SysPermission record);

    /**
     *  根据主键来更新符合条件的数据库记录,sys_permission
     *
     * @param record
     */
    int updateByPrimaryKey(SysPermission record);

    int insertBatchSelective(List<SysPermission> records);
}