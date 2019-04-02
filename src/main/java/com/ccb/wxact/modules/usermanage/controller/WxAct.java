package com.ccb.wxact.modules.usermanage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.ccb.wxact.modules.usermanage.dao.ActUserMapper;
import com.ccb.wxact.modules.usermanage.model.ActUser;
import com.ccb.wxact.modules.usermanage.model.ActUserKey;

@Controller
@RequestMapping(value="/waqitest")
public class WxAct {
	@Autowired
	ActUserMapper actuserMapper;
	@RequestMapping("/hello11")
	@ResponseBody
	String home() {
		ActUserKey actUserKey = new ActUserKey();
		actUserKey.setId(1l);
		actUserKey.setUserNo("1");
		ActUser actUser = actuserMapper.selectByPrimaryKey(actUserKey);
		return JSONObject.toJSONString(actUser) ;
	}
}
