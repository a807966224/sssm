package net.xicp.a807966224.backs.beans;

import java.util.Set;

import net.xicp.a807966224.configs.myRepository.BaseBeans;

public class Users extends BaseBeans{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String username;
	private String password;
	private String state;
	
	private Set<Authorities> auths;
	
	private String authId;
	private Long userId;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Set<Authorities> getAuths() {
		return auths;
	}
	public void setAuths(Set<Authorities> auths) {
		this.auths = auths;
	}
	public String getAuthId() {
		return authId;
	}
	public void setAuthId(String authId) {
		this.authId = authId;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	
}
