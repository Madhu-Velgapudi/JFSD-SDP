package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService 
{
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Override
	public String EmployeeRegistration(Employee emp) 
	{
		employeeRepository.save(emp);
		return "Employee Registered Successfully";
	}

	@Override
	public Employee checkemployeelogin(String eemail, String epwd) 
	{
		return employeeRepository.checkemployeelogin(eemail, epwd);
	}

	@Override
	public String updateEmlpoyeeProfile(Employee employee) 
	{
		Employee e = employeeRepository.findById(employee.getId()).get();
	    
	    e.setContact(employee.getContact());
	    e.setDateofbirth(employee.getDateofbirth());
	    e.setDepartment(employee.getDepartment());
	    e.setGender(employee.getGender());
	    e.setLocation(employee.getLocation());
	    e.setName(employee.getName());
	    e.setPassword(employee.getPassword());
	    e.setSalary(employee.getSalary());
	    
	    employeeRepository.save(e);
	    
	    return "Employee Updated Successfully";
	}

	@Override
	public Employee displayEmployeebyID(int eid) 
	{
		return employeeRepository.findById(eid).get();
	}

	@Override
	public List<Employee> displayEmployeeByDept(String department)
	{
			
		return employeeRepository.findByDepartment(department);
	}
	
}
