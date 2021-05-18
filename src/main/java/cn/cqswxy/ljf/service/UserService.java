package cn.cqswxy.ljf.service;

import cn.cqswxy.ljf.po.User;

public interface UserService {

    User checkUser(String username, String password);
}
