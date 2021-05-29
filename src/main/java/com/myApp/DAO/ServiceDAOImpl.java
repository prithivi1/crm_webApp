package com.myApp.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myApp.Entity.InvoiceEntity;
import com.myApp.Entity.ServiceEntity;

@Repository
public class ServiceDAOImpl implements ServiceDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void addNewServiceRequest(ServiceEntity service) 
	{
		sessionFactory.getCurrentSession().save(service);
	}

	@Transactional
	public List<ServiceEntity> getAllServiceByUser(String user) {
		String hql = "from ServiceEntity where customerName = '"+user+"'";
		List<ServiceEntity> list = (List<ServiceEntity>) sessionFactory.getCurrentSession().createQuery(hql).list();		
		return list;
	}

	@Transactional
	public void deleteTicketById(long id) {
		String hql = "Delete from ServiceEntity where serviceId = '"+id+"'";
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();		
	}

	@Transactional
	public List<ServiceEntity> getAllTickets() {
		String hql = "from ServiceEntity";
		List<ServiceEntity> list = (List<ServiceEntity>) sessionFactory.getCurrentSession().createQuery(hql).list();		
		return list;
	}

	@Transactional
	public ServiceEntity getServiceById(long id) {
		String hql = "from ServiceEntity where serviceId = '"+id+"'";
		return (ServiceEntity) sessionFactory.getCurrentSession().createQuery(hql).list().get(0);
	}

}
