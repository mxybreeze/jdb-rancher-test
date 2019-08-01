package com.jxsrlsl.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jxsrlsl.demo.dao.EmployeeDAO;
import com.jxsrlsl.demo.model.Employee;

@Service
public class EmployeeManagerImpl implements EmployeeManager {
	
	@Autowired
    EmployeeDAO dao;
	
    public List<Employee> listAllEmployees()
    {
    	return dao.getAllEmployees();
    }
}
