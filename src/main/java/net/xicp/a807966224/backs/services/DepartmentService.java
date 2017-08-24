package net.xicp.a807966224.backs.services;

import net.xicp.a807966224.backs.beans.Department;
import net.xicp.a807966224.backs.daos.DepartmentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("departmentService")
public class DepartmentService {

    @Autowired
    DepartmentDao departmentDao;

    public List<Department> findAllDepartments(Department department){
        return departmentDao.findAllDepartments(department);
    }

    public Department getById(Long id){
        return departmentDao.getById(id);
    }

    public List<Department> findDepartmentTree(){
        return departmentDao.findDepartmentTree();
    }
}
