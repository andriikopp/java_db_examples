package org.tours.cli;

import java.util.List;

import org.tours.bean.Tour;
import org.tours.dao.MySQLTourDAO;
import org.tours.dao.api.TourDAO;

public class ToursMain {

	public static void main(String[] args) {
		TourDAO tourDAO = new MySQLTourDAO();

		List<Tour> tours = tourDAO.readAll();

		for (Tour tour : tours) {
			System.out.println(tour);
		}
	}
}
