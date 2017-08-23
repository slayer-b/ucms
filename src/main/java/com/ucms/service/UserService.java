package com.ucms.service;

import com.ucms.domain.User;

import java.util.List;

public interface UserService {

    User save(User user);

    List<User> getList();

}
