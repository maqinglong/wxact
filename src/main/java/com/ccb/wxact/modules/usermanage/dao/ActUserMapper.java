package com.ccb.wxact.modules.usermanage.dao;

import com.ccb.wxact.modules.usermanage.model.ActUser;
import com.ccb.wxact.modules.usermanage.model.ActUserKey;

public interface ActUserMapper {
    int deleteByPrimaryKey(ActUserKey key);

    int insert(ActUser record);

    int insertSelective(ActUser record);

    ActUser selectByPrimaryKey(ActUserKey key);

    int updateByPrimaryKeySelective(ActUser record);

    int updateByPrimaryKey(ActUser record);
}