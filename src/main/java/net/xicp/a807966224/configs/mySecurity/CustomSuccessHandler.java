package net.xicp.a807966224.configs.mySecurity;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.google.code.kaptcha.Constants;

@Component
public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler{
	
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	
	@Override
	protected void handle(HttpServletRequest request,
			HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		String captcha = request.getParameter("captcha");
		String code = (String)session.getAttribute(Constants.KAPTCHA_SESSION_CONFIG_KEY);
		if(captcha.equals(code)){
			String targetUrl = determineTargetUrl(authentication);
			if(response.isCommitted()){
				System.out.println("can't redirect");
				return;
			}
			redirectStrategy.sendRedirect(request, response, targetUrl);
		}else{
			redirectStrategy.sendRedirect(request, response, "/login?errorMeg=2");
		}
		
	}
	
	protected String determineTargetUrl(Authentication authentication) {
		String url = "";
		Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
		List<String> roles = new ArrayList<String>();
		for(GrantedAuthority authority : authorities){
			roles.add(authority.getAuthority());
		}
//		if(roles.contains("ROLE_DBA")){
//			url = "/db";
//		}else if(roles.contains("ROLE_ADMIN")){
//			url = "/";
//		}else if(roles.contains("ROLE_USER")){
//			url = "/";
//		}else{
//			url = "/Access_Denied";
//		}
		if(roles.size() != 0){
			url = "/";
		}else{
			url = "/Access_Denied";
		}
		return url;
	}

	public RedirectStrategy getRedirectStrategy() {
		return redirectStrategy;
	}

	public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
		this.redirectStrategy = redirectStrategy;
	}
}