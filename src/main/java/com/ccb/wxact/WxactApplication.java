package com.ccb.wxact;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@SpringBootApplication(scanBasePackages= {"com.ccb","com.ccb.wxact.controller"})
@RequestMapping(value="/wxact")
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
