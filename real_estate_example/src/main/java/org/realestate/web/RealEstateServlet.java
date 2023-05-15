package org.realestate.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.realestate.bean.RealEstateBean;
import org.realestate.dao.MySQLRealEstateDAO;
import org.realestate.dao.api.RealEstateDAO;

@WebServlet("/RealEstateServlet")
public class RealEstateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RealEstateServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RealEstateDAO realEstateDAO = new MySQLRealEstateDAO();
		List<RealEstateBean> realEstateBeans = realEstateDAO.readAll();
		request.setAttribute("realEstateBeans", realEstateBeans);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
