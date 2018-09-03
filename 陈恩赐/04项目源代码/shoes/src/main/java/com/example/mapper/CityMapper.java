package com.example.mapper;

import java.util.List;

import com.example.model.City;

public interface CityMapper {
	List<City> findAllCity();
    City findOneCity(int cityId);
	
	int insertCity(City city);
	
	int updateCity(City city);
	int deleteCity(int id);
}
