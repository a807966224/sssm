package net.xicp.a807966224.backs.beans;

import net.xicp.a807966224.configs.myRepository.BaseBeans;

/**
 * @类名称：Menu
 * @类描述：
 * @创建人：zhaoxin
 * @修改人：
 * @修改时间：17-5-22
 * @修改备注：
 * @version：
 */
public class Menu extends BaseBeans{

    private String name;
    private String pId;
    private String url;

    private String level;
    private String funchname;
    private String funenname;
    private String menu_id;
    
    private String pName;
    
    private int type;
    private boolean open;
    private boolean checked;
    private boolean isParent;

    public boolean isParent() {
        return isParent;
    }

    public void setParent(boolean isParent) {
        this.isParent = isParent;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getFunchname() {
        return funchname;
    }

    public void setFunchname(String funchname) {
        this.funchname = funchname;
    }

    public String getFunenname() {
        return funenname;
    }

    public void setFunenname(String funenname) {
        this.funenname = funenname;
    }

    public String getMenu_id() {
        return menu_id;
    }

    public void setMenu_id(String menu_id) {
        this.menu_id = menu_id;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public boolean isOpen() {
		return open;
	}

	public void setOpen(boolean open) {
		this.open = open;
	}

	public boolean isChecked() {
		return checked;
	}

	public void setChecked(boolean checked) {
		this.checked = checked;
	}
}
