package net.xicp.a807966224.backs.controllers;

import net.xicp.a807966224.backs.beans.Department;
import net.xicp.a807966224.backs.services.DepartmentService;
import net.xicp.a807966224.configs.myRepository.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/departments")
public class DepartmentController extends BaseController{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

    @Value("#{dbProps.ROOT_NODE}")
    private Long ROOT_NODE;

    @Autowired
    DepartmentService departmentService;

    @RequestMapping("/list")
    public ModelAndView list(ModelAndView mv,HttpServletRequest request){
        String id = request.getParameter("id");
        mv.addObject("excuteName",getAuthNames(id));
        mv.addObject("departments",departmentService.findDepartmentTree());
        mv.setViewName("departments/departments_list");
        return mv;
    }

    @RequestMapping("pageJson")
    @ResponseBody
    public List<Department> pageJson(@RequestParam("id") Long id){
        Department department = departmentService.getById(id.equals(null)?ROOT_NODE:id);
        return departmentService.findAllDepartments(department);
    }

    @RequestMapping("findDepartmentTree")
    @ResponseBody
    public List<Department> findDepartmentTree(){
        return departmentService.findDepartmentTree();
    }
}
