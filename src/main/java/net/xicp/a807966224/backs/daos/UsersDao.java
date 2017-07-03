package net.xicp.a807966224.backs.daos;

import java.util.List;
import java.util.Set;

import net.xicp.a807966224.backs.beans.Authorities;
import net.xicp.a807966224.backs.beans.Menu;
import net.xicp.a807966224.backs.beans.Users;
import net.xicp.a807966224.configs.myRepository.MyBatisRepository;
import org.apache.ibatis.annotations.Param;

@MyBatisRepository
public interface UsersDao{
	
	List<Users> findAllUsers();
	
	Users findByUsername(String username);
	
	Set<Authorities> findAuthsByUserid(Long userid);

    Set<Authorities> findMenusByUsername(@Param("username")String username,@Param("level") String level);
    
    void insert(Users users);

    void update(Users users);

    void delete(Users users);

    void insertG(Users users);
    
    void deleteG(@Param("userId") Long userId);
    
    List<Menu> getUserHasAuthByUserId(Long id);
}
