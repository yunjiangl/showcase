package com.exqoo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.exqoo.dao")
public class Launch {

	public static void main(String[] args) {
		SpringApplication.run(Launch.class, args);
	}
}
