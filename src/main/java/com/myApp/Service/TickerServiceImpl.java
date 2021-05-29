package com.myApp.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
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
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd MMMM yyyy");  
		String strDate = dateFormat.format(date);
		service.setDate(strDate);
		serviceDAO.addNewServiceRequest(service);
	}

	public List<ServiceEntity> getAllServiceByUser(String name) {
		return serviceDAO.getAllServiceByUser(name);
	}

	public void deleteTicketById(long id) {
		serviceDAO.deleteTicketById(id);
	}

	public List<ServiceEntity> getAllService() {
		return serviceDAO.getAllTickets();
	}

	public ServiceEntity getServiceById(long id) {
		return serviceDAO.getServiceById(id);
	}

}
