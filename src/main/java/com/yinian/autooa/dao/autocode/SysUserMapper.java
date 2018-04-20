package com.yinian.autooa.dao.autocode;

import com.yinian.autooa.model.SysUser;
import com.yinian.autooa.model.SysUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysUserMapper {
    /**
     *  根据指定的条件获取数据库记录数,sys_user
     *
     * @param example
     */
    int countByExample(SysUserExample example);

    /**
     *  根据指定的条件删除数据库符合条件的记录,sys_user
     *
     * @param example
     */
    int deleteByExample(SysUserExample example);

    /**
     *  根据主键删除数据库的记录,sys_user
     *
     * @param id
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *  新写入数据库记录,sys_user
     *
     * @param record
     */
    int insert(SysUser record);

    /**
     *  动态字段,写入数据库记录,sys_user
     *
     * @param record
     */
    int insertSelective(SysUser record);

    /**
     *  根据指定的条件查询符合条件的数据库记录,sys_user
     *
     * @param example
     */
    List<SysUser> selectByExample(SysUserExample example);

    /**
     *  根据指定主键获取一条数据库记录,sys_user
     *
     * @param id
     */
    SysUser selectByPrimaryKey(Integer id);

    /**
     *  动态根据指定的条件来更新符合条件的数据库记录,sys_user
     *
     * @param record
     * @param example
     */
    int updateByExampleSelective(@Param("record") SysUser record, @Param("example") SysUserExample example);

    /**
     *  根据指定的条件来更新符合条件的数据库记录,sys_user
     *
     * @param record
     * @param example
     */
    int updateByExample(@Param("record") SysUser record, @Param("example") SysUserExample example);

    /**
     *  动态字段,根据主键来更新符合条件的数据库记录,sys_user
     *
     * @param record
     */
    int updateByPrimaryKeySelective(SysUser record);

    /**
     *  根据主键来更新符合条件的数据库记录,sys_user
     *
     * @param record
     */
    int updateByPrimaryKey(SysUser record);

    int insertBatchSelective(List<SysUser> records);
}