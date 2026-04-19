package com.university.dkhp.service.user;

import org.springframework.stereotype.Service;

import com.university.dkhp.entity.User;
import com.university.dkhp.repository.UserRepository;


@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;

    public UserServiceImpl(UserRepository userRepository) {
    	this.userRepository = userRepository;
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
}