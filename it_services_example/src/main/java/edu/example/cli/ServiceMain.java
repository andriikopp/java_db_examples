package edu.example.cli;

import java.util.List;

import edu.example.bean.ServiceBean;
import edu.example.dao.MySQLServiceDAO;
import edu.example.dao.api.ServiceDAO;

public class ServiceMain {

	public static void main(String[] args) {
		ServiceDAO serviceDAO = new MySQLServiceDAO();

		List<ServiceBean> services = serviceDAO.readAll();

		for (ServiceBean obj : services) {
			System.out.println(obj);
		}
	}
}
