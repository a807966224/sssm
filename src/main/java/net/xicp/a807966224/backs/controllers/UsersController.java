package net.xicp.a807966224.backs.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.xicp.a807966224.backs.beans.Authorities;
import net.xicp.a807966224.backs.beans.Users;
import net.xicp.a807966224.backs.services.AuthoritiesService;
import net.xicp.a807966224.backs.services.UsersService;
import net.xicp.a807966224.configs.myRepository.BaseController;

@Controller
@RequestMapping("/users")
public class UsersController extends BaseController{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	@Autowired
	UsersService usersSerivce;
	@Autowired
	AuthoritiesService authoritiesSerivce;

	@RequestMapping("/list")
	public ModelAndView list(ModelAndView mv,HttpServletRequest request){
        mv.addObject("excuteName",getAuthNames("2"));
		mv.setViewName("users/users_list");
		return mv;
	}

	@RequestMapping("/pageJson")
	@ResponseBody
	public List<Users> pageJson(@RequestParam(value="pageCurrent",required = false)Integer pageCurrent,@RequestParam(value="pageSize",required = false)Integer pageSize){
//        PageHelper.startPage(pageCurrent,5);
        List<Users> list = usersSerivce.findAllUsers();
		return list;
	}

	@RequestMapping("/edit")
	public String edit(@RequestParam(value="username",required=false)String username,HttpServletRequest request){
		if(username != null && !"".equals(username)){
			Users users = usersSerivce.findByUsername(username);
			Set<Authorities> myAuths = usersSerivce.findAuthsByUserid(users.getId());
			request.setAttribute("beans", users);
			request.setAttribute("myAuths", myAuths);
		}
		List<Authorities> auths = authoritiesSerivce.findAllAuthorities();
		request.setAttribute("auths", auths);
		return "users/users_edit";
	}

	@RequestMapping("/submit")
    @ResponseBody
	public Users submit(Users users,String[] roles){
		if(users.getId() == null){
			usersSerivce.insert(users);
			Users u = null;
			if(roles != null){
				for(String role : roles){
					u = new Users();
					u.setAuthId(role);
					u.setUserId(users.getId());
					usersSerivce.insertG(u);
				}
			}
		}else{
            usersSerivce.update(users);

            usersSerivce.deleteG(users.getId());
            
            Users u = null;
			if(roles != null){
				for(String role : roles){
					u = new Users();
					u.setAuthId(role);
					u.setUserId(users.getId());
					usersSerivce.insertG(u);
				}
			}
        }
		return users;
	}

    @RequestMapping("/del")
    @ResponseBody
    public Users del(Users users){
        if(users.getId() == null){
            return users;
        }else{
            usersSerivce.delete(users);
            usersSerivce.deleteG(users.getId());
            return users;
        }
    }
}
