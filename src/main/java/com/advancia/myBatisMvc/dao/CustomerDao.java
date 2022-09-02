package com.advancia.myBatisMvc.dao;

import java.util.List;

import com.advancia.myBatisMvc.model.Customer;

public interface CustomerDao {
	List<Customer> findAllCustomers();

	Integer insertCustomer(Customer customer);

	Integer updCustomer(Customer customer);

	Integer delCustomer(Integer id);
}
