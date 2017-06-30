package com.crud.project.service;

import com.crud.project.model.User;
import java.util.List;

public interface UserService {

    void addUser(User user);

    void updateUser(User user);

    void removeUser(int id);

    User getUser(int id);

    List<User> getUsers(Integer page);

    List<User> getUsers(String name);
}
