package net.xicp.a807966224.backs.beans;

import net.xicp.a807966224.configs.myRepository.BaseBeans;

/**
 * @类名称：Department
 * @类描述：
 * @创建人：zhaoxin
 * @修改人：
 * @修改时间：17-8-23
 * @修改备注：
 * @version：
 */
public class Department extends BaseBeans{


    private String code;
    private String name;
    private long pId;
    private String deptAddr;
    private String deptBuildDate;
    private String description;
    private String deptTell;
    private String lft;
    private String rgt;
    private String sort;

    private String parentDepartmentName;

    public String getParentDepartmentName() {
        return parentDepartmentName;
    }

    public void setParentDepartmentName(String parentDepartmentName) {
        this.parentDepartmentName = parentDepartmentName;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getPid() {
        return pId;
    }

    public void setPid(long pid) {
        this.pId = pid;
    }

    public String getDeptAddr() {
        return deptAddr;
    }

    public void setDeptAddr(String deptAddr) {
        this.deptAddr = deptAddr;
    }

    public String getDeptBuildDate() {
        return deptBuildDate;
    }

    public void setDeptBuildDate(String deptBuildDate) {
        this.deptBuildDate = deptBuildDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDeptTell() {
        return deptTell;
    }

    public void setDeptTell(String deptTell) {
        this.deptTell = deptTell;
    }

    public String getLft() {
        return lft;
    }

    public void setLft(String lft) {
        this.lft = lft;
    }

    public String getRgt() {
        return rgt;
    }

    public void setRgt(String rgt) {
        this.rgt = rgt;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }
}
