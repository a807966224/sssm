package net.xicp.a807966224.backs.daos;

import net.xicp.a807966224.backs.beans.Authorities;
import net.xicp.a807966224.backs.beans.Menu;
import net.xicp.a807966224.configs.myRepository.MyBatisRepository;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;
import java.util.Set;

@MyBatisRepository
public interface MenusDao {
	
    List<Authorities> findSubMenusByMenuid(@Param("parent") String parent,@Param("username") String username);

    List<Menu> findMenus();

    List<Menu> findOptionsByMenuid(@Param("level") String level,@Param("id") Long id);

    void insert(Menu menu);

    void update(Menu menu);

    void delete(Menu menu);
    
    Menu getById(Menu menu);
    
    void insertOpt(Menu menu);
    
    void updateOpt(Menu menu);
    
    void deleteOpt(Menu menu);
    
    Menu getOptById(Menu menu);
    
    List<Menu> getCheckTreeOpts();
}
