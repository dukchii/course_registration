package com.university.dkhp.service.user;

import com.university.dkhp.entity.User;

public interface UserService {
    User findByUsername(String username);
}