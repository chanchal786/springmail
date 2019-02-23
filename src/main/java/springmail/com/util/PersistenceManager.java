package springmail.com.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public enum PersistenceManager {
	
	INSANCE;
	private EntityManagerFactory emFactory;
	
	private PersistenceManager() {
		emFactory=Persistence.createEntityManagerFactory("jpa-example");
	}
	
	public EntityManager geEntityManager() {
		return emFactory.createEntityManager();
	}

}
