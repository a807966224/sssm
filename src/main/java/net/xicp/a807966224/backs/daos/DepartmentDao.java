package net.xicp.a807966224.backs.daos;

import net.xicp.a807966224.backs.beans.Department;
import net.xicp.a807966224.configs.myRepository.MyBatisRepository;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@MyBatisRepository
public interface DepartmentDao {

    public List<Department> findAllDepartments(Department department);

    public Department getById(@Param("id") Long id);

    public List<Department> findDepartmentTree();
}
