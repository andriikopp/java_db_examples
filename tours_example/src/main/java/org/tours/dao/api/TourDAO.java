package org.tours.dao.api;

import java.util.List;

import org.tours.bean.Tour;

public interface TourDAO {

	List<Tour> readAll();
}
