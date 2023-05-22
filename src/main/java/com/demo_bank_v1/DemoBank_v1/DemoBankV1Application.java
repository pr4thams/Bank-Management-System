package com.demo_bank_v1.DemoBank_v1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCrypt;

@SpringBootApplication
public class DemoBankV1Application {

	public static void main(String[] args) {
		SpringApplication.run(DemoBankV1Application.class, args);

//		String password = BCrypt.hashpw("pari", BCrypt.gensalt());
//		System.out.println(password);
	}

}
