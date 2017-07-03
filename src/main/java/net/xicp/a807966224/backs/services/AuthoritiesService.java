package net.xicp.a807966224.backs.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.xicp.a807966224.backs.beans.Authorities;
import net.xicp.a807966224.backs.daos.AuthoritiesDao;

@Service("authoritiesService")
public class AuthoritiesService {

	@Autowired
	AuthoritiesDao authoritiesDao;
	
	
	public List<Authorities> findAllAuthorities(){
		return authoritiesDao.findAllAuthorities();
	}
	
	public void insertAms(Authorities authorities){
		authoritiesDao.insertAms(authorities);
	}
	
	public void deleteAms(String authId){
		authoritiesDao.deleteAms(authId);
	}
	
	public List<Authorities> selectMenusByAuthId(String authId){
		return authoritiesDao.selectMenusByAuthId(authId);
	}
}
