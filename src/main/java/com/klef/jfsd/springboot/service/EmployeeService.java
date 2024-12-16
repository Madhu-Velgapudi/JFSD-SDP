package com.klef.jfsd.springboot.service;


import java.util.List;

import com.klef.jfsd.springboot.model.Employee;

public interface EmployeeService 
{
	public String EmployeeRegistration(Employee emp);
	public Employee checkemployeelogin(String eemail,String epwd);
	public String updateEmlpoyeeProfile(Employee employee);
	public Employee displayEmployeebyID(int eid);
	public List<Employee> displayEmployeeByDept(String department);
}
