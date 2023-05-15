package org.tours.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.tours.bean.Tour;
import org.tours.dao.api.TourDAO;
import org.tours.utils.Variables;

public class MySQLTourDAO implements TourDAO {

	public MySQLTourDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<Tour> readAll() {
		List<Tour> tours = new ArrayList<>();

		String query = "SELECT tour_id, tour_title, tour_description, tour_type_name, tour_country, tour_city, "
				+ "tour_hotel, tour_price, tour_img_url FROM tour INNER JOIN tour_type USING (tour_type_id)";

		try (Connection conn = DriverManager.getConnection(Variables.DB_URL, Variables.DB_USER, Variables.DB_PASSWORD);
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(query);) {
			while (rs.next()) {
				Tour tour = new Tour();

				tour.setId(rs.getInt("tour_id"));
				tour.setTitle(rs.getString("tour_title"));
				tour.setDescription(rs.getString("tour_description"));
				tour.setType(rs.getString("tour_type_name"));
				tour.setCountry(rs.getString("tour_country"));
				tour.setCity(rs.getString("tour_city"));
				tour.setHotel(rs.getString("tour_hotel"));
				tour.setPrice(rs.getBigDecimal("tour_price").longValueExact());
				tour.setImageURL(rs.getString("tour_img_url"));

				tours.add(tour);
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

		return tours;
	}
}
