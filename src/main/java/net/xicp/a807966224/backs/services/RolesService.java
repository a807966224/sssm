package net.xicp.a807966224.backs.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.xicp.a807966224.backs.beans.Roles;
import net.xicp.a807966224.backs.daos.RolesDao;

@Service("rolesService")
public class RolesService {
	
	@Autowired
	RolesDao rolesDao;
	
	public List<Roles> findAllRoles(){
		return rolesDao.findAllRoles();
	}
	
	public void insert(Roles roles){
		rolesDao.insert(roles);
	}

    public void update(Roles roles){
    	rolesDao.update(roles);
    }

    public void delete(Roles roles){
    	rolesDao.delete(roles);
    }
    
    public Roles getById(Roles roles){
    	return rolesDao.getById(roles);
    }
}
