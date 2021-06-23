package com.nagarro.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.model.Employee;
import com.nagarro.model.User;
import com.nagarro.service.EmployeeService;
import com.nagarro.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private EmployeeService employeeService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	static ApplicationContext context = new ClassPathXmlApplicationContext("Bean.xml");

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String encryptPassword = BCrypt.hashpw(password, BCrypt.gensalt());
		User newUser = context.getBean("user", User.class);

		newUser.setUsername(username);
		newUser.setPassword(encryptPassword);
		userService.addLoginDetails(newUser);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index.jsp");
		return modelAndView;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView verifyUser(HttpServletRequest request, HttpServletRequest response) {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		ModelAndView modelAndView = new ModelAndView();

		if (userService.isValidateUser(username, password)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			List<Employee> employeeList = employeeService.getAllEmployee();
			modelAndView.addObject("employeeList", employeeList);
			modelAndView.setViewName("home.jsp");
			return modelAndView;
		}
		modelAndView.setViewName("invaliduser.jsp");

		return modelAndView;

	}

}
