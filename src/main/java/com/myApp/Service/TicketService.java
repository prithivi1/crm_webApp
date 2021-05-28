package com.myApp.Service;

import java.util.List;

import com.myApp.Entity.ServiceEntity;

public interface TicketService {

	public void addNewTicket(ServiceEntity service);

	public List<ServiceEntity> getAllServiceByUser(String name);
}
