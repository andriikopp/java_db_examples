package org.realestate.cli;

import java.util.List;

import org.realestate.bean.RealEstateBean;
import org.realestate.dao.MySQLRealEstateDAO;
import org.realestate.dao.api.RealEstateDAO;

public class RealEstateMain {

	public static void main(String[] args) {
		RealEstateDAO realEstateDAO = new MySQLRealEstateDAO();

		List<RealEstateBean> realEstateBeans = realEstateDAO.readAll();

		for (RealEstateBean bean : realEstateBeans) {
			System.out.println(bean);
		}
	}
}
