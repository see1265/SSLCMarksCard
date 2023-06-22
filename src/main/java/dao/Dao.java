package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;


import dto.DtoStd;

public class Dao {
	EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();

	public void insert(DtoStd s)
	{
		et.begin();
		em.persist(s);
		et.commit();
	}

	public DtoStd fetchById(long no)
	{
		 DtoStd s=em.find( DtoStd.class, no);
	  
	  return s;
	}
	public DtoStd login(long s2) {
		DtoStd e2=em.find(DtoStd.class, s2);
		return e2;
	}

	
}
