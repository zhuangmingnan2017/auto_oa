package com.yinian.autooa.service.impl.system;

import com.yinian.autooa.common.ApiResponse;
import com.yinian.autooa.common.XMsg;
import com.yinian.autooa.dao.autocode.SysMenuMapper;
import com.yinian.autooa.model.SysMenu;
import com.yinian.autooa.model.SysMenuExample;
import com.yinian.autooa.model.SysPermission;
import com.yinian.autooa.service.system.SysMenuService;
import com.yinian.autooa.service.system.SysPermissionService;
import com.yinian.autooa.vo.output.common.BooleanOutWithMsg;
import jodd.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * created by yinian on 18-4-21.
 */
@Service
public class SysMenuServiceImpl implements SysMenuService {

    @Autowired
    private SysMenuMapper sysMenuMapper;

    @Autowired
    private SysPermissionService sysPermissionService;

    /**
     * 列举全部的菜单
     *
     * @return
     */
    @Override
    public List<SysMenu> listAllParentSysMenu() {
        SysMenuExample example = new SysMenuExample();
        example.createCriteria().andParent_idEqualTo(0);    // 0表示一级菜单

        return sysMenuMapper.selectByExample(example);
    }

    /**
     * 根据父id获取所有子菜单
     *
     * @param parentId
     * @return
     */
    @Override
    public List<SysMenu> listSubMenuByParentId(Integer parentId) {
        SysMenuExample example = new SysMenuExample();

        example.createCriteria().andParent_idEqualTo(parentId);

        return sysMenuMapper.selectByExample(example);
    }

    /**
     * 根据用户名获取菜单资源
     *
     * @param account
     * @return
     */
    @Override
    public List<SysMenu> listSysMenuByUserAccount(String account) {
        return null;
    }

    /**
     * 新增菜单
     *
     * @param menu
     */
    @Override
    public void addNewSysMenu(SysMenu menu) {
        assert menu != null;
        sysMenuMapper.insertSelective(menu);

        // 新增菜单的时候顺便配置权限
        SysPermission permission = new SysPermission();
        permission.setPermission_code(menu.getPermission());
        permission.setPermission_name(menu.getName());
        sysPermissionService.addNew(permission);
    }

    /**
     * 删除菜单
     *
     * @param menuId
     */
    @Override
    public void delSysMenuByMenuId(Integer menuId) {
        SysMenu menu = sysMenuMapper.selectByPrimaryKey(menuId);
        if(menu == null){
            return ;
        }

        // 删除菜单级联删除权限
        String permissionCode = menu.getPermission();
        sysPermissionService.delByPermissionCode(permissionCode);

        sysMenuMapper.deleteByPrimaryKey(menuId);
    }

    /**
     * 选择性更新菜单信息
     *
     * @param menu
     * @param menuId
     */
    @Override
    public void updateSelectiveSysMenuById(SysMenu menu, Integer menuId) {
        SysMenu oldMenu = sysMenuMapper.selectByPrimaryKey(menuId);

        sysMenuMapper.updateByPrimaryKeySelective(menu);

        // 编辑菜单的时候顺便更新权限信息
        sysPermissionService.updatePermissionMess(oldMenu.getPermission(), menu.getPermission(), menu.getName());

    }

    /**
     * 列举所有的菜单
     *
     * @return
     */
    @Override
    public List<SysMenu> listAllSysMenu() {
        return sysMenuMapper.selectByExample(new SysMenuExample());
    }

    /**
     * 获取该用户拥有的菜单
     *
     * @param account
     * @return
     */
    @Override
    public List<SysMenu> listAllSysMenuByAccount(String account) {
        List<String> permissionStrList = sysPermissionService.getPermissionStrListByUserAccount(account);
        if(permissionStrList == null || permissionStrList.isEmpty()){
            return null;
        }

        SysMenuExample example = new SysMenuExample();
        example.createCriteria().andPermissionIn(permissionStrList);

        return sysMenuMapper.selectByExample(example);
    }

    @Override
    public ApiResponse menuCheck(SysMenu menu) {
        ApiResponse response = new ApiResponse(XMsg.FAIL);

        BooleanOutWithMsg booleanOutWithMsg = isMenuValid(menu);
        if(booleanOutWithMsg.isSuccess()){
            return null;
        }

        response.setData(booleanOutWithMsg.getMessage());
        return response;
    }

    /**
     * 菜单可用性检查
     * @param menu
     * @return
     */
    private BooleanOutWithMsg isMenuValid(SysMenu menu){
        // 菜单为空
        if(menu == null){
            return BooleanOutWithMsg.fail("菜单为空");
        }

        // 菜单名称、权限编码为空
        if(StringUtil.isBlank(menu.getName()) || StringUtil.isBlank(menu.getPermission())){
            return BooleanOutWithMsg.fail("菜单名称/权限编码为空");
        }

        SysMenuExample example = new SysMenuExample();
        SysMenuExample.Criteria criteria1 = example.or().andPermissionEqualTo(menu.getPermission());
        SysMenuExample.Criteria criteria2 = example.or().andNameEqualTo(menu.getName());
        // if the operation is update, exclude itself to judge the repeat;
        if(menu.getId() != null){
            criteria1.andIdNotEqualTo(menu.getId());
            criteria2.andIdNotEqualTo(menu.getId());
        }

        if(sysMenuMapper.countByExample(example) <= 0){
            return BooleanOutWithMsg.success();
        }

        return BooleanOutWithMsg.fail("菜单名称/权限编码重复");
    }
}
