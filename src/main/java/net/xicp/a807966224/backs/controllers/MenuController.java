package net.xicp.a807966224.backs.controllers;

import net.xicp.a807966224.backs.beans.Authorities;
import net.xicp.a807966224.backs.beans.Menu;
import net.xicp.a807966224.backs.services.MenusService;
import net.xicp.a807966224.configs.myRepository.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

/**
 * @类名称：MenuController
 * @类描述：
 * @创建人：zhaoxin
 * @修改人：
 * @修改时间：17-5-19
 * @修改备注：
 * @version：
 */
@Controller
@RequestMapping("menu")
public class MenuController extends BaseController{

    @Autowired
    MenusService menusService;

    @RequestMapping(value="submenus",method = RequestMethod.POST)
    @ResponseBody
    public List<Map> submenus(String id,HttpServletRequest request){
        List<Authorities> sets = menusService.findSubMenusByMenuid(id,getPrincipal());
        List<Map> datas = new ArrayList<Map>();
        Map map;
        for(Authorities auth : sets){
            map = new HashMap();
            map.put("target","navtab");
            map.put("id","menus_"+auth.getId());
            map.put("url",getProjectName(request)+auth.getUrl()+"?id="+auth.getId());
            map.put("name",auth.getMenuname());
            datas.add(map);
        }
        return datas;
    }

    @RequestMapping("toAll")
    public String toAll(Model model){
//        List<Menu> datas = menusService.findMenus();
//        List<String> menus = new ArrayList<String>();
//        for(int i=0,j=datas.size();i<j;i++){
//        	String str = new String("{id:"+datas.get(i).getId()+",name:'"+datas.get(i).getName()+"',pId:"+datas.get(i).getpId()+"}");
//        	menus.add(str);
//        }
//        model.addAttribute("menus",menus);
        return "menus/menus";
    }

    @RequestMapping("findMenus")
    @ResponseBody
    public List<Menu> findMenus(Menu menu){
    	List<Menu> datas = menusService.findMenus(menu);
        return datas;
    }
    
    @RequestMapping("pageJson")
    @ResponseBody
    public  List<Menu> pageJson(@RequestParam(value="level",required=false)String level,@RequestParam(value="id",required=false)Long id){
        List<Menu> opts = menusService.findOptionsByMenuid(level,id);
        return opts;
    }
    
    @RequestMapping("menuEdit")
    public ModelAndView menuEdit(Menu menu){
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("menus/menus_edit");
    	if(menu.getId() != null){
    		menu = menusService.getById(menu);
    	}
    	mv.addObject("beans", menu);
    	return mv;
    }
    
    @RequestMapping("save")
    @ResponseBody
    public Menu save(Menu menu){
    	if(menu.getId() == null){
    		menusService.insert(menu);
    	}else{
    		menusService.update(menu);
    	}
    	return menu;
    }
    
    @RequestMapping("del")
    @ResponseBody
    public Menu del(Menu menu){
    	if(menu.getId() != null){
    		menusService.delete(menu);
    		return menu;
    	}else{
    		return menu;
    	}
    }
    
    @RequestMapping("optEdit")
    public ModelAndView optEdit(Menu menu){
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("menus/opts_edit");
    	if(menu.getId() != null){
    		menu = menusService.getOptById(menu);
    	}
    	mv.addObject("beans", menu);
    	return mv;
    }
    
    @RequestMapping("saveOpt")
    @ResponseBody
    public Menu saveOpt(Menu menu){
    	if(menu.getId() == null){
    		menusService.insertOpt(menu);
    	}else{
    		menusService.updateOpt(menu);
    	}
    	return menu;
    }
    
    @RequestMapping("delOpt")
    @ResponseBody
    public Menu delOpt(Menu menu){
    	if(menu.getId() != null){
    		menusService.deleteOpt(menu);
    		return menu;
    	}else{
    		return menu;
    	}
    }
    
    @RequestMapping("getCheckTreeOpts")
    @ResponseBody
    public List<Menu> getCheckTreeOpts(){
    	return menusService.getCheckTreeOpts();
    }
}
