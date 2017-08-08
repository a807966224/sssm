package net.xicp.a807966224.configs.myRepository;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

public class BaseController implements Serializable{

	@Autowired
	CacheManager cacheManager;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String getPrincipal(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(principal instanceof UserDetails){
			userName = ((UserDetails)principal).getUsername();
		}else{
			userName = principal.toString();
		}
		return userName;
	}
	
	public String getProjectName(HttpServletRequest request){
		String proName = request.getContextPath();
		return proName;
	}
	
	public String getAuthNames(String menuId){
		Cache cache = cacheManager.getCache("userCache");
		Element element = cache.get(menuId);
		String authNames = (String)element.getObjectValue();
		return authNames;
	}

    public String getCurrentUsername() {
        return SecurityContextHolder.getContext().getAuthentication().getName();
    }

}
