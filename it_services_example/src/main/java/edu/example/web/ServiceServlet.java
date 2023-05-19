package edu.example.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.example.bean.ServiceBean;
import edu.example.dao.MySQLServiceDAO;
import edu.example.dao.api.ServiceDAO;

@WebServlet("/ServiceServlet")
public class ServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServiceServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ServiceDAO serviceDAO = new MySQLServiceDAO();
		List<ServiceBean> services = serviceDAO.readAll();
		request.setAttribute("services", services);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
