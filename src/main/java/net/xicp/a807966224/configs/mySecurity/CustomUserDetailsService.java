package net.xicp.a807966224.configs.mySecurity;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import net.xicp.a807966224.backs.beans.Authorities;
import net.xicp.a807966224.backs.beans.Users;
import net.xicp.a807966224.backs.services.UsersService;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService{
	
	@Resource(name="usersService")
	UsersService usersService;
	
	public List<GrantedAuthority> getGrantedAuthorities(Users users){
		
		List<GrantedAuthority> grantedAuthoritys = new ArrayList<GrantedAuthority>();
		for(Authorities auth : users.getAuths()){
			grantedAuthoritys.add(new SimpleGrantedAuthority("ROLE_"+auth.getAuthname().toUpperCase()));
		}
		return grantedAuthoritys;
	}

	@Override
	@Transactional(readOnly=true)
	public UserDetails loadUserByUsername(String arg0)
			throws UsernameNotFoundException {
		try{
			Users users = usersService.findByUsername(arg0);
			if(users == null){
				throw new UsernameNotFoundException("USERNAME NOT FOUND!");
			}
			return new org.springframework.security.core.userdetails.User(users.getUsername(), users.getPassword(), users.getState().equals("1"), true, true, true, getGrantedAuthorities( users));
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

}
