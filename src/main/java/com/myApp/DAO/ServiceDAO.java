package com.myApp.DAO;

import java.util.List;

import com.myApp.Entity.ServiceEntity;

public interface ServiceDAO {

	public void addNewServiceRequest(ServiceEntity service);
	
	public List<ServiceEntity> getAllServiceByUser(String user);
}	
