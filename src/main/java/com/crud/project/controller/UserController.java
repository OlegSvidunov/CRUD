package com.crud.project.controller;

import com.crud.project.model.User;
import com.crud.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller
public class UserController {
    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "users", method = RequestMethod.GET)
    public String listUsers(@RequestParam(value="page", required = false) Integer page, Model model) {
        if (page == null) page = 1;
        model.addAttribute("user", new User());
        model.addAttribute("searcheduser", new User());
        model.addAttribute("listUsers", userService.getUsers(page));
        model.addAttribute("page", page);

        return "users";
    }

    @RequestMapping(value = "/users/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user") User user) {
        userService.addUser(user);

        return "redirect:/users";
    }
    @RequestMapping(value = "/users/edit", method = RequestMethod.POST)
    public String editUser(@ModelAttribute("user") User user) {
        userService.updateUser(user);

        return "redirect:/users";
    }

    @RequestMapping("/remove/{id}")
    public String removeUser(@PathVariable("id") int id) {
        userService.removeUser(id);

        return "redirect:/users";
    }

    @RequestMapping("edit/{id}")
    public String editUser(@PathVariable("id") int id, @RequestParam(value="page", required = false) Integer page, Model model) {
        if (page == null) page = 1;
        model.addAttribute("user", userService.getUser(id));
        model.addAttribute("searcheduser", new User());
        model.addAttribute("listUsers", userService.getUsers(page));
        model.addAttribute("page", page);

        return "edituser";
    }

    @RequestMapping("adduser")
    public String createUser(@ModelAttribute User user) {

        return "adduser";
    }

    @RequestMapping(value="searchresults", method = RequestMethod.POST)
    public String searchResults(@ModelAttribute("searcheduser") User user, Model model) {
        List<User> searchResult = userService.getUsers(user.getName());
        model.addAttribute("listUsers", searchResult);

        return "searchresults";
    }
}
