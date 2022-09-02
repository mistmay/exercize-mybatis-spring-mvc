package com.advancia.myBatisMvc.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.advancia.myBatisMvc.dao.CustomerDao;
import com.advancia.myBatisMvc.model.Customer;

@Controller
public class WelcomeController {
	@Resource
	CustomerDao customerDao;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showWelcomePage(ModelMap model) {
		model.addAttribute("customers", customerDao.findAllCustomers());
		return "welcome";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(ModelMap model, @RequestParam String name, @RequestParam String email, @RequestParam String address) {
		if (name != "" && email != "" && address != "") {
			Customer customer = new Customer(name, email, address);
			customerDao.insertCustomer(customer);
		}
		model.addAttribute("customers", customerDao.findAllCustomers());
		return "welcome";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(ModelMap model, @RequestParam String delete) {
		if (delete != "") {
			customerDao.delCustomer(Integer.parseInt(delete));
		}
		model.addAttribute("customers", customerDao.findAllCustomers());
		return "welcome";
	}
}
