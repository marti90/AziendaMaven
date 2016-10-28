package main;

//import org.hibernate.Session;
//import org.hibernate.Transaction;

//import utility.HibernateUtility;
//import dao.UtenteDAO;
import service.Gestione;
import modelBean.Admin;
import modelBean.Utente;

public class EsempioMain {

	public static void main(String[] args) {
		
		Gestione g = new Gestione();
		//UtenteDAO uDao = new UtenteDAO();
		Utente a = new Admin();
		a.setNome("Martina");
		a.setCognome("Debernardi");
		a.setUsername("marti90");
		a.setPassword("ml90");
		a.setRuolo("A");
		
		g.registraUtente(a);
		
		
		
		/*Session session=HibernateUtility.openSession();
		Transaction tx=null;
		
		try{
	        tx=session.getTransaction();
	        tx.begin();
	       
	        session.persist(a);
	       
	        tx.commit(); 
            
	    }catch(Exception ex){
	         tx.rollback();

	    }finally{
	         session.close();
	    }*/

	}

}
