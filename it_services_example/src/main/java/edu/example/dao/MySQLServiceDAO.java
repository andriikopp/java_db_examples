package edu.example.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import edu.example.bean.ServiceBean;
import edu.example.dao.api.ServiceDAO;
import edu.example.utils.Variables;

public class MySQLServiceDAO implements ServiceDAO {

	public MySQLServiceDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<ServiceBean> readAll() {
		List<ServiceBean> services = new ArrayList<>();

		String sql = "SELECT service_id, service_title, service_description, service_type_name, "
				+ "service_terms, service_price_min, service_price_max, service_img_url "
				+ "FROM service INNER JOIN service_type USING (service_type_id)";

		try (Connection conn = DriverManager.getConnection(Variables.DB_URL, Variables.DB_USER, Variables.DB_PASSWORD);
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
			while (rs.next()) {
				ServiceBean serviceObj = new ServiceBean();

				serviceObj.setId(rs.getInt("service_id"));
				serviceObj.setTitle(rs.getString("service_title"));
				serviceObj.setDescription(rs.getString("service_description"));
				serviceObj.setType(rs.getString("service_type_name"));
				serviceObj.setTerms(rs.getInt("service_terms"));
				serviceObj.setPriceMin(rs.getBigDecimal("service_price_min").longValueExact());
				serviceObj.setPriceMax(rs.getBigDecimal("service_price_max").longValueExact());
				serviceObj.setImageURL(rs.getString("service_img_url"));

				services.add(serviceObj);
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

		return services;
	}
}
