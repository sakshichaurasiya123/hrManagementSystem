package com.nagarro.service;

import java.util.List;

import com.nagarro.model.Employee;

public interface EmployeeService {

	public void addEmployee(Employee emp);

	public Employee getEmployeeById(int id);

	public List<Employee> getAllEmployee();

	public void deleteEmployeeById(int id);

	public void updateEmployee(Employee employee);

}
