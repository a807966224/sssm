package net.xicp.a807966224.backs.daos;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import net.xicp.a807966224.backs.beans.Authorities;
import net.xicp.a807966224.configs.myRepository.MyBatisRepository;

@MyBatisRepository
public interface AuthoritiesDao {

	List<Authorities> findAllAuthorities();
	
	void insertAms(Authorities authorities);
	
	void deleteAms(@Param("authId") String authId);
	
	List<Authorities> selectMenusByAuthId(@Param("authId") String authId);
}
