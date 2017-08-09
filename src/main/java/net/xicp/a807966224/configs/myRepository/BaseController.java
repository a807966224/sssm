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

    /**
     * 通过安全框架获取系统登录人员用户名
     * @return
     */
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

    /**
     * 获取项目名称
     * @param request
     * @return
     */
	public String getProjectName(HttpServletRequest request){
		String proName = request.getContextPath();
		return proName;
	}

    /**
     * 获取系统登录人员所具有菜单的相应功能按钮集合
     * @param menuId    菜单id
     * @return  add,edit,del
     */
	public String getAuthNames(String menuId){
		Cache cache = cacheManager.getCache("userCache");
		Element element = cache.get(menuId);
		String authNames = (String)element.getObjectValue();
		return authNames;
	}

    /**
     * 通过安全框架获取已认证的用户名
     * @return
     */
    public String getCurrentUsername() {
        return SecurityContextHolder.getContext().getAuthentication().getName();
    }

}
