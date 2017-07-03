package net.xicp.a807966224.backs.services;

import java.util.List;
import java.util.Set;

import net.xicp.a807966224.backs.beans.Authorities;
import net.xicp.a807966224.backs.beans.Menu;
import net.xicp.a807966224.backs.beans.Users;
import net.xicp.a807966224.backs.daos.UsersDao;

import net.xicp.a807966224.configs.mySecurity.MyPasswordEncoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("usersService")
public class UsersService {

	@Autowired
	UsersDao usersDao;
	
	public Users findByUsername(String username){
		Users users = usersDao.findByUsername(username);
		Set<Authorities> auths = usersDao.findAuthsByUserid(users.getId());
		users.setAuths(auths);
		return users;
	}

    public Set<Authorities> findMenusByUsername(String username,String level){
        Set<Authorities> menus = usersDao.findMenusByUsername(username,level);
        return menus;
    }
    
    public Set<Authorities> findAuthsByUserid(Long userid){
    	return usersDao.findAuthsByUserid(userid);
    }
    
    public List<Users> findAllUsers(){
    	return usersDao.findAllUsers();
    }
    
    public void insert(Users users){
        users.setPassword(new MyPasswordEncoder().encode(users.getPassword()));
    	usersDao.insert(users);
    }

    public void update(Users users){
        users.setPassword(new MyPasswordEncoder().encode(users.getPassword()));
        usersDao.update(users);
    }

    public void delete(Users users){
        usersDao.delete(users);
    }
    
    public void insertG(Users users){
    	usersDao.insertG(users);
    }
    
    public void deleteG(Long userId){
    	usersDao.deleteG(userId);
    }
    public List<Menu> getUserHasAuthByUserId(Long id){
    	return usersDao.getUserHasAuthByUserId(id);
    }
	
}
