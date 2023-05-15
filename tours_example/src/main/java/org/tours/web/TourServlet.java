package org.tours.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.tours.bean.Tour;
import org.tours.dao.MySQLTourDAO;
import org.tours.dao.api.TourDAO;

@WebServlet("/TourServlet")
public class TourServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TourServlet() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		TourDAO tourDAO = new MySQLTourDAO();
		List<Tour> tours = tourDAO.readAll();
		request.setAttribute("tours", tours);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
