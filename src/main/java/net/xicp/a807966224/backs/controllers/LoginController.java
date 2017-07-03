package net.xicp.a807966224.backs.controllers;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;
import net.xicp.a807966224.backs.beans.Authorities;
import net.xicp.a807966224.backs.beans.Menu;
import net.xicp.a807966224.backs.beans.Users;
import net.xicp.a807966224.backs.services.UsersService;
import net.xicp.a807966224.backs.utils.SpringUtils;
import net.xicp.a807966224.configs.myRepository.BaseController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class LoginController extends BaseController{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
	UsersService usersService;
	@Value("#{dbProps.ECHARTS_PATH_PRO}")
	private String ECHARTS_PATH;
	
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request){
		String error = (String)request.getSession().getAttribute("error");
        request.getSession().setAttribute("error",null);
		request.setAttribute("error", error);
		return new ModelAndView("blps/login");
	}

	@RequestMapping("/Access_Denied")
	public ModelAndView access_Denied(){
		return new ModelAndView("blps/accessDenied");
	}

    @RequestMapping("/captchaErr")
    public ModelAndView captchaErr(HttpServletRequest request){
        String error = request.getParameter("error");
        request.getSession().setAttribute("error",error);
        return new ModelAndView("redirect:/login");
    }
	
	@RequestMapping("/sessionTimeout")
	public ModelAndView sessionTimeout(){
		return new ModelAndView("blps/sessionTimeout");
	}
	
	@RequestMapping("/none/session_authentication_error")
	public ModelAndView session_authentication_error(){
		return new ModelAndView("blps/session_authentication_error");
	}
	
	@RequestMapping("/expired")
	public ModelAndView expired(){
		return new ModelAndView("blps/expired");
	}
	
	@Autowired
	CacheManager cacheManager;
	@RequestMapping("/")
	public String indexPage(HttpServletRequest request){
		request.setAttribute("user", getPrincipal());
        Set<Authorities> menus = usersService.findMenusByUsername(getPrincipal(),"1");
        Users users = usersService.findByUsername(getPrincipal());
        request.setAttribute("menus", menus);
        List<Menu> list = usersService.getUserHasAuthByUserId(users.getId());//用户具有的操作权限
        for(Menu menu : list){
          Cache cache = cacheManager.getCache("userCache");
          Element element = new Element(menu.getMenu_id(),menu.getFunenname());
          cache.put(element);
        }
		return "blps/index";
	}

	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpServletRequest request,HttpServletResponse response){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth != null){
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}
	
	@RequestMapping("/captchaImage")
	public ModelAndView getKaptchaImage(HttpServletRequest request,HttpServletResponse response) throws IOException{
		HttpSession session = request.getSession();
		Producer producer = (Producer)SpringUtils.getBean("captchaProducer");
		response.setDateHeader("Expires", 0);
		response.setHeader("Cache-Control", "no-store,no-cache,must-revalidate");
		response.addHeader("Cache-Control", "post-check=0,pre-check=0");
		response.setHeader("Pragma", "no-cache");
		response.setContentType("image/jpeg");
		String capText = producer.createText();
		session.setAttribute(Constants.KAPTCHA_SESSION_CONFIG_KEY, capText);
		BufferedImage bi = producer.createImage(capText);
		ServletOutputStream out = response.getOutputStream();
		ImageIO.write(bi, "jpg", out);
		try{
			out.flush();
		}finally{
			out.close();
		}
		return null;
	}
	
	@RequestMapping("/captcha")
    @ResponseBody
	public String captcha(String captcha,HttpServletRequest request){
		String code = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_CONFIG_KEY);
		if(code.equals(captcha)){
			return "true";
		}
		return "false";
	}
	
	/******************************************************************************************************/
	
	@RequestMapping("/toECharts")
	public ModelAndView toECharts(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("echarts/line_echarts");
		mv.addObject("ECHARTS_PATH", ECHARTS_PATH);
		return mv;
	}

	public String getECHARTS_PATH() {
		return ECHARTS_PATH;
	}

	public void setECHARTS_PATH(String eCHARTS_PATH) {
		ECHARTS_PATH = eCHARTS_PATH;
	}

}
