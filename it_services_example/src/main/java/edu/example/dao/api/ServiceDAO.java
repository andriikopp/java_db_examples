package edu.example.dao.api;

import java.util.List;

import edu.example.bean.ServiceBean;

public interface ServiceDAO {

	List<ServiceBean> readAll();
}
