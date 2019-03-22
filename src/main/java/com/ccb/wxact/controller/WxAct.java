package com.ccb.wxact.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/waqitest")
public class WxAct {
	@RequestMapping("/hello11")
	@ResponseBody
	String home() {
		return "{name: wangqiest}" ;
	}
}
