package net.xicp.a807966224.backs.beans;

import net.xicp.a807966224.configs.myRepository.BaseBeans;

public class Authorities extends BaseBeans{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String authname;
    private String url;
    private String parent;
    private String funchnames;
    private String funennames;
    private String menuname;
    
    private String authId;
    private String menuId;
    private String type;
    
    

	public String getAuthId() {
		return authId;
	}

	public void setAuthId(String authId) {
		this.authId = authId;
	}

	public String getMenuId() {
		return menuId;
	}

	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAuthname() {
		return authname;
	}

	public void setAuthname(String authname) {
		this.authname = authname;
	}

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getParent() {
        return parent;
    }

    public void setParent(String parent) {
        this.parent = parent;
    }

    public String getFunchnames() {
        return funchnames;
    }

    public void setFunchnames(String funchnames) {
        this.funchnames = funchnames;
    }

    public String getFunennames() {
        return funennames;
    }

    public void setFunennames(String funennames) {
        this.funennames = funennames;
    }

    public String getMenuname() {
        return menuname;
    }

    public void setMenuname(String menuname) {
        this.menuname = menuname;
    }
}
