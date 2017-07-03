package net.xicp.a807966224.configs.mySecurity;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.password.StandardPasswordEncoder;

public class MyPasswordEncoder implements PasswordEncoder{

	private static final PasswordEncoder ENCODER = new StandardPasswordEncoder("my-secret-key");
	
	@Override
	public String encode(CharSequence arg0) {
		return ENCODER.encode(arg0);
	}

	@Override
	public boolean matches(CharSequence arg0, String arg1) {
        boolean canGo = ENCODER.matches(arg0, arg1);
		return canGo;
	}

	public static void main(String[] args) {
		System.out.println(new MyPasswordEncoder().encode("admin"));
		System.out.println(new MyPasswordEncoder().encode("admin"));
		System.out.println(new MyPasswordEncoder().encode("admin"));
		System.out.println("============");
		System.out.println(new MyPasswordEncoder().matches("admin", "f2abb8c558d18a771c4d090c64d0eaa1ea8a6079d51f1c2b462e4fd9c51c5050957fde5c1a9b085a"));
		System.out.println(new MyPasswordEncoder().matches("admin", new MyPasswordEncoder().encode("admin")));
		System.out.println(new MyPasswordEncoder().matches("admin", new MyPasswordEncoder().encode("admin")));
	}
}
