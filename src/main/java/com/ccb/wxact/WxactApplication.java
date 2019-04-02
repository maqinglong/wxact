package com.ccb.wxact;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@SpringBootApplication(scanBasePackages= {"com.ccb","com.ccb.wxact.modules"})
@RequestMapping(value="/wxact")
@MapperScan(basePackages = {"com.ccb.wxact.modules.*.dao"}, sqlSessionFactoryRef = "sqlSessionFactory")
@EnableAutoConfiguration
@Configuration
public class WxactApplication {
	
	@RequestMapping("/hello")
	@ResponseBody
	String home() {
		return "{name: wxact}" ;
	}
	public static void main(String[] args) {
		SpringApplication.run(WxactApplication.class, args);
	}

}
