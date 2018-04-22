package com.yinian.autooa.service.system;

import com.yinian.autooa.model.SysMenu;

import java.util.List;

/**
 * 系统菜单资源服务逻辑
 * created by yinian on 18-4-21.
 */
public interface SysMenuService {

    /**
     * 列举全部的菜单
     * @return
     */
    List<SysMenu> listAllParentSysMenu();

    /**
     * 根据父id获取所有子菜单
     * @param parentId
     * @return
     */
    List<SysMenu> listSubMenuByParentId(Integer parentId);

    /**
     * 根据用户名获取菜单资源
     * @param account
     * @return
     */
    List<SysMenu> listSysMenuByUserAccount(String account);

    /**
     * 新增菜单
     * @param menu
     */
    void addNewSysMenu(SysMenu menu);

    /**
     * 删除菜单
     * @param menuId
     */
    void delSysMenuByMenuId(Integer menuId);

    /**
     * 选择性更新菜单信息
     * @param menu
     * @param menuId
     */
    void updateSelectiveSysMenuById(SysMenu menu, Integer menuId);

    /**
     * 列举所有的菜单
     * @return
     */
    List<SysMenu> listAllSysMenu();

    /**
     * 获取该用户拥有的菜单
     * @param account
     * @return
     */
    List<SysMenu> listAllSysMenuByAccount(String account);
}
