package net.xicp.a807966224.backs.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;
import net.xicp.a807966224.backs.beans.Authorities;
import net.xicp.a807966224.backs.beans.Menu;
import net.xicp.a807966224.backs.beans.Roles;
import net.xicp.a807966224.backs.beans.Users;
import net.xicp.a807966224.backs.services.AuthoritiesService;
import net.xicp.a807966224.backs.services.MenusService;
import net.xicp.a807966224.backs.services.RolesService;
import net.xicp.a807966224.configs.myRepository.BaseController;

@Controller
@RequestMapping("/roles")
public class RolesController extends BaseController{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	@Autowired
	RolesService rolesSerivce;
	@Autowired
    MenusService menusService;
	@Autowired
	AuthoritiesService authoritiesSerivce;
	
	@RequestMapping("/list")
	public ModelAndView list(ModelAndView mv,HttpServletRequest request){
        String id = request.getParameter("id");
        mv.addObject("excuteName",getAuthNames(id));
		mv.setViewName("roles/roles_list");
		return mv;
	}

	@RequestMapping("/pageJson")
	@ResponseBody
	public Map pageJson(@RequestParam(value="pageCurrent",required = false)Integer pageCurrent,@RequestParam(value="pageSize",required = false)Integer pageSize){
        Map resultMap = new HashMap();
        List<Roles> list = rolesSerivce.findAllRoles();
        resultMap.put("list", list);
        int totalRow = 0;
        if(list.size() > 0){
        	totalRow = list.size();
        }
        resultMap.put("totalRow", totalRow);
        int totalPage = 1;
        if(totalRow > 0){
        	int yushu = totalRow % 10;
        	if(yushu > 0 ){
        		totalPage = totalRow / 10 +1;
        	}else{
        		totalPage = totalRow / 10 ;
        	}
        }
        resultMap.put("totalPage", totalPage);
		return resultMap;
	}

	@RequestMapping("/edit")
	public String edit(@RequestParam(value="id",required=false)Long id,HttpServletRequest request){
		if(id != null && !"".equals(id)){
			Roles tmp = new Roles();
			tmp.setId(id);
			Roles Roles = rolesSerivce.getById(tmp);
			request.setAttribute("beans", Roles);
			List<Authorities> hasAuths = authoritiesSerivce.selectMenusByAuthId(id+"");
			List<Menu> list = menusService.getCheckTreeOpts();
			List<String> menus = new ArrayList<String>();
	        for(int i=0,j=list.size();i<j;i++){
	        	boolean flag = false;
	        	for(int m=0,n=hasAuths.size();m<n;m++){
	        		String tmpM = hasAuths.get(m).getMenuId() + "";
	        		String tmpI = list.get(i).getId() + "";
	        		if(tmpM.equals(tmpI)){
	    	        	flag = true;
	    	        	break;
	        		}
	        	}
	        	if(flag){
	        		String str = new String("{id:"+list.get(i).getId()+",name:'"+list.get(i).getName()+"',pId:"+list.get(i).getpId()+",type:"+list.get(i).getType()+",open:"+list.get(i).isOpen()+",checked:'true'}");
    	        	menus.add(str);
	        	}else{
	        		String str = new String("{id:"+list.get(i).getId()+",name:'"+list.get(i).getName()+"',pId:"+list.get(i).getpId()+",type:"+list.get(i).getType()+",open:"+list.get(i).isOpen()+"}");
    	        	menus.add(str);
	        	}
	        }
			request.setAttribute("treeList", menus);
		}else{
			List<Menu> list = menusService.getCheckTreeOpts();
			List<String> menus = new ArrayList<String>();
	        for(int i=0,j=list.size();i<j;i++){
	        	String str = new String("{id:"+list.get(i).getId()+",name:'"+list.get(i).getName()+"',pId:"+list.get(i).getpId()+",type:"+list.get(i).getType()+",open:"+list.get(i).isOpen()+"}");
	        	menus.add(str);
	        }
			request.setAttribute("treeList", menus);
		}
		return "roles/roles_edit";
	}

	@RequestMapping("/submit")
    @ResponseBody
	public Roles submit(Roles Roles,@RequestParam(value="menus",required=false)String menus,@RequestParam(value="opts",required=false)String opts){
		if(Roles.getId() == null){
			rolesSerivce.insert(Roles);
			String[] m_ss = menus.split(",");
			String[] o_ss = opts.split(",");
			Authorities authorities = null;
			if(m_ss.length != 0 && !"".equals(menus)){
				for(String m : m_ss){
					authorities = new Authorities();
					authorities.setAuthId(Roles.getId()+"");
					authorities.setType("1");
					authorities.setMenuId(m);
					authoritiesSerivce.insertAms(authorities);
				}
			}
			if(o_ss.length != 0 && !"".equals(opts)){
				for(String o : o_ss){
					authorities = new Authorities();
					authorities.setAuthId(Roles.getId()+"");
					authorities.setType("2");
					authorities.setMenuId(o);
					authoritiesSerivce.insertAms(authorities);
				}
			}
		}else{
			rolesSerivce.update(Roles);
			
			authoritiesSerivce.deleteAms(Roles.getId()+"");
			
			String[] m_ss = menus.split(",");
			String[] o_ss = opts.split(",");
			Authorities authorities = null;
			if(m_ss.length != 0 && !"".equals(menus)){
				for(String m : m_ss){
					authorities = new Authorities();
					authorities.setAuthId(Roles.getId()+"");
					authorities.setType("1");
					authorities.setMenuId(m);
					authoritiesSerivce.insertAms(authorities);
				}
			}
			if(o_ss.length != 0 && !"".equals(opts)){
				for(String o : o_ss){
					authorities = new Authorities();
					authorities.setAuthId(Roles.getId()+"");
					authorities.setType("2");
					authorities.setMenuId(o);
					authoritiesSerivce.insertAms(authorities);
				}
			}
        }
		return Roles;
	}

    @RequestMapping("/del")
    @ResponseBody
    public Roles del(Roles Roles){
        if(Roles.getId() == null){
            return Roles;
        }else{
        	rolesSerivce.delete(Roles);
        	authoritiesSerivce.deleteAms(Roles.getId()+"");
            return Roles;
        }
    }
}
