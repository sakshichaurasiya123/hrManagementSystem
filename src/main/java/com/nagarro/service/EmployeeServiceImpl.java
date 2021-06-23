package com.nagarro.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nagarro.apiutil.ConsumeApiUtil;
import com.nagarro.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	public void addEmployee(Employee emp) {

		ConsumeApiUtil.addEmployee(emp);
	}

	public Employee getEmployeeById(int id) {
		return ConsumeApiUtil.getEmployeeById(id);
	}

	public List<Employee> getAllEmployee() {
		return ConsumeApiUtil.getAllEmployee();
	}

	public void deleteEmployeeById(int id) {

		ConsumeApiUtil.deleteEmployee(id);
	}

	public void updateEmployee(Employee employee) {

		ConsumeApiUtil.updateEmployee(employee);
	}

}
