package cn.cqswxy.ljf.service;

import cn.cqswxy.ljf.dao.UserRepository;
import cn.cqswxy.ljf.po.User;
import cn.cqswxy.ljf.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User checkUser(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, MD5Utils.code(password));
        return user;
    }
}
