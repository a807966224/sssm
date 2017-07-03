package net.xicp.a807966224.configs.myRepository;

import java.io.Serializable;
import java.util.List;

/**
 * @类名称：MyPagings
 * @类描述：
 * @创建人：zhaoxin
 * @修改人：
 * @修改时间：17-5-22
 * @修改备注：
 * @version：
 */
public class MyPagings<T> implements Serializable{

    int pageSize = 30;//默认每页显示30条数据
    int pageCurrent = 1;//默认显示第一页
    int totalRow = 0;//默认总条数为0
    List<T> list = null;//默认返回数据为空

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageCurrent() {
        return pageCurrent;
    }

    public void setPageCurrent(int pageCurrent) {
        this.pageCurrent = pageCurrent;
    }

    public int getTotalRow() {
        List<T> alls = this.list;
        if(alls != null ){
            return alls.size();
        }
        return 0;
    }

    public void setTotalRow(int totalRow) {
        this.totalRow = totalRow;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }
}
