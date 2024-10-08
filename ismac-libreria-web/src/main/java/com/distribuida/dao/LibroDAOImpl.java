package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.Libro;

@Repository
public class LibroDAOImpl implements LibroDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Libro> finALL() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from Libro", Libro.class).getResultList();
	}

	@Override
	@Transactional
	public Libro findOne(int id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Libro.class, id);
	}

	@Override
	@Transactional
	public void add(Libro libro) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(libro);
	}

	@Override
	@Transactional
	public void up(Libro libro) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(libro);

	}

	@Override
	@Transactional
	public void dell(int id) {
	    Session session = sessionFactory.getCurrentSession();
	    // Recuperar la entidad Libro usando el ID
	    Libro libro = session.get(Libro.class, id);
	    if (libro != null) {
	        // Eliminar la entidad si existe
	        session.delete(libro);
	    }
	}


}
