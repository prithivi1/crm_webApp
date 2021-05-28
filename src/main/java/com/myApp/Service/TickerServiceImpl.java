package com.myApp.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myApp.DAO.ServiceDAO;
import com.myApp.Entity.ServiceEntity;

@Service
public class TickerServiceImpl implements TicketService {

	@Autowired
	private ServiceDAO serviceDAO;
	
	public void addNewTicket(ServiceEntity service) {
		serviceDAO.addNewServiceRequest(service);
	}

	public List<ServiceEntity> getAllServiceByUser(String name) {
		return serviceDAO.getAllServiceByUser(name);
	}

}
