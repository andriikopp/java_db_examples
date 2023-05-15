package org.realestate.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.realestate.bean.RealEstateBean;
import org.realestate.dao.api.RealEstateDAO;
import org.realestate.utils.Variables;

public class MySQLRealEstateDAO implements RealEstateDAO {

	public MySQLRealEstateDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public List<RealEstateBean> readAll() {
		List<RealEstateBean> realEstateBeans = new ArrayList<>();

		String sql = "SELECT reo_id, reo_title, reo_description, ret_name, reo_address, "
				+ "reo_city, reo_country, reo_price, reo_img_url "
				+ "FROM real_estate_offers INNER JOIN real_estate_types USING (ret_id)";

		try (Connection conn = DriverManager.getConnection(Variables.DB_URL, Variables.DB_USER, Variables.DB_PASSWORD);
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql)) {
			while (rs.next()) {
				RealEstateBean bean = new RealEstateBean();

				bean.setId(rs.getInt("reo_id"));
				bean.setTitle(rs.getString("reo_title"));
				bean.setDescription(rs.getString("reo_description"));
				bean.setType(rs.getString("ret_name"));
				bean.setAddress(rs.getString("reo_address"));
				bean.setCity(rs.getString("reo_city"));
				bean.setCountry(rs.getString("reo_country"));
				bean.setPrice(rs.getBigDecimal("reo_price").longValueExact());
				bean.setImageURL(rs.getString("reo_img_url"));

				realEstateBeans.add(bean);
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

		return realEstateBeans;
	}
}
