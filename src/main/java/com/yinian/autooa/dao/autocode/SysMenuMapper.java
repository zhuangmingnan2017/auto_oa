package com.yinian.autooa.dao.autocode;

import com.yinian.autooa.model.SysMenu;
import com.yinian.autooa.model.SysMenuExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysMenuMapper {
    /**
     *  根据指定的条件获取数据库记录数,sys_menu
     *
     * @param example
     */
    int countByExample(SysMenuExample example);

    /**
     *  根据指定的条件删除数据库符合条件的记录,sys_menu
     *
     * @param example
     */
    int deleteByExample(SysMenuExample example);

    /**
     *  根据主键删除数据库的记录,sys_menu
     *
     * @param id
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *  新写入数据库记录,sys_menu
     *
     * @param record
     */
    int insert(SysMenu record);

    /**
     *  动态字段,写入数据库记录,sys_menu
     *
     * @param record
     */
    int insertSelective(SysMenu record);

    /**
     *  根据指定的条件查询符合条件的数据库记录,sys_menu
     *
     * @param example
     */
    List<SysMenu> selectByExample(SysMenuExample example);

    /**
     *  根据指定主键获取一条数据库记录,sys_menu
     *
     * @param id
     */
    SysMenu selectByPrimaryKey(Integer id);

    /**
     *  动态根据指定的条件来更新符合条件的数据库记录,sys_menu
     *
     * @param record
     * @param example
     */
    int updateByExampleSelective(@Param("record") SysMenu record, @Param("example") SysMenuExample example);

    /**
     *  根据指定的条件来更新符合条件的数据库记录,sys_menu
     *
     * @param record
     * @param example
     */
    int updateByExample(@Param("record") SysMenu record, @Param("example") SysMenuExample example);

    /**
     *  动态字段,根据主键来更新符合条件的数据库记录,sys_menu
     *
     * @param record
     */
    int updateByPrimaryKeySelective(SysMenu record);

    /**
     *  根据主键来更新符合条件的数据库记录,sys_menu
     *
     * @param record
     */
    int updateByPrimaryKey(SysMenu record);

    int insertBatchSelective(List<SysMenu> records);
}