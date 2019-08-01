package com.jxsrlsl.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jxsrlsl.demo.model.Employee;
import com.jxsrlsl.demo.service.EmployeeManager;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeManager emp;
	List<Employee> employees;
@RequestMapping("index.do")
    public ModelAndView index() {
		employees = emp.listAllEmployees();
        ModelAndView view = new ModelAndView("employeesListDisplay");
        view.addObject("employees",employees);     
        return view;
    }	
}
