package net.xicp.a807966224.backs.daos;

import java.util.List;

import net.xicp.a807966224.backs.beans.Roles;
import net.xicp.a807966224.configs.myRepository.MyBatisRepository;

@MyBatisRepository
public interface RolesDao{
	List<Roles> findAllRoles();
	
	void insert(Roles roles);

    void update(Roles roles);

    void delete(Roles roles);
    
    Roles getById(Roles roles);
}
