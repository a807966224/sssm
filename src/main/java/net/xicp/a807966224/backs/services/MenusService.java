package net.xicp.a807966224.backs.services;

import net.xicp.a807966224.backs.beans.Authorities;
import net.xicp.a807966224.backs.beans.Menu;
import net.xicp.a807966224.backs.beans.Users;
import net.xicp.a807966224.backs.daos.MenusDao;
import net.xicp.a807966224.backs.daos.UsersDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Set;

@Service("menusService")
public class MenusService {

	@Autowired
	MenusDao menusDao;
	
    public List<Authorities> findSubMenusByMenuid(String parent,String username){
        List<Authorities> menus = menusDao.findSubMenusByMenuid(parent, username);
        return menus;
    }

    public List<Menu> findMenus(){
        List<Menu> list = menusDao.findMenus();
        return list;
    }

    public List<Menu> findOptionsByMenuid(String level,Long id){
        List<Menu> list = menusDao.findOptionsByMenuid(level,id);
        return list;
    }
    
    public void insert(Menu menu){
    	menusDao.insert(menu);
    }

    public void update(Menu menu){
    	menusDao.update(menu);
    }

    public void delete(Menu menu){
    	menusDao.delete(menu);
    }
    
    public Menu getById(Menu menu){
    	return menusDao.getById(menu);
    }
    
    public void insertOpt(Menu menu){
    	menusDao.insertOpt(menu);
    }
    
    public void updateOpt(Menu menu){
    	menusDao.updateOpt(menu);
    }
    
    public void deleteOpt(Menu menu){
    	menusDao.deleteOpt(menu);
    }
    
    public Menu getOptById(Menu menu){
    	return menusDao.getOptById(menu);
    }
    
    public List<Menu> getCheckTreeOpts(){
    	return menusDao.getCheckTreeOpts();
    }
}
