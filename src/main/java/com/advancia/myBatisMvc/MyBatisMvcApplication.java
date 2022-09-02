package com.advancia.myBatisMvc;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.advancia.myBatisMvc.dao")
public class MyBatisMvcApplication {

	public static void main(String[] args) {
		SpringApplication.run(MyBatisMvcApplication.class, args);
	}

}
