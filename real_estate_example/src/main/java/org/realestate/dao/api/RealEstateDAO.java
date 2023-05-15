package org.realestate.dao.api;

import java.util.List;

import org.realestate.bean.RealEstateBean;

public interface RealEstateDAO {

	List<RealEstateBean> readAll();
}
