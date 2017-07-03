package net.xicp.a807966224.configs.mySecurity;

import org.springframework.security.core.userdetails.UserCache;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.cache.NullUserCache;

public class CachingUserDetailsService implements UserDetailsService {
	private UserCache userCache = new NullUserCache();
	private final UserDetailsService delegate;

	CachingUserDetailsService(UserDetailsService delegate) {
		this.delegate = delegate;
	}

	public UserCache getUserCache() {
		return userCache;
	}

	public void setUserCache(UserCache userCache) {
		this.userCache = userCache;
	}

	public UserDetails loadUserByUsername(String username) {
		UserDetails user = userCache.getUserFromCache(username);
		if (user == null) {
			user = delegate.loadUserByUsername(username);
		}
		userCache.putUserInCache(user);
		return user;
	}
}