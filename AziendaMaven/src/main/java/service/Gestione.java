package service;

import java.util.List;

import modelBean.Admin;
import modelBean.Cliente;
import modelBean.Dipendente;
import modelBean.Utente;
import modelRubrica.RubricaModel;
import modelRubrica.VoceModel;
import dao.AdminDAO;
import dao.ClienteDAO;
import dao.DipendenteDAO;
import dao.RubricaDAO;
import dao.UtenteDAO;
import dao.VoceDAO;
import utility.PasswordCodification;

public class Gestione {
	
private UtenteDAO uDao = new UtenteDAO();
private AdminDAO aDao = new AdminDAO();
private ClienteDAO cDao = new ClienteDAO();
private DipendenteDAO dDao = new DipendenteDAO();
private RubricaDAO rDao= new RubricaDAO();
private VoceDAO vDao= new VoceDAO();
	
	public boolean registraUtente(Utente u){
		
		boolean res = false;
		res = uDao.createUtente(u);
		return res;
	}
	
	public Utente getUtenteConUsernamePassword(String username, String password){
		
		Utente u = uDao.readUtente(username, password);
		return u;
	}
	
	public Utente getUtenteConUsername(String username){
		
		Utente u = uDao.readUtente(username);
		return u;
	}
	
	public Utente getUtenteConId(long id_utente){
		
		Utente u = uDao.readUtente(id_utente);
		return u;
	}
	
	public List<Utente> getTuttiUtenti(){
		
		return uDao.readUtenti();
	}
	
    public Admin getAdminConUsername(String username){
		
		Admin a = aDao.readAdmin(username);
		return a;
	}

    public boolean registraCliente(Cliente c){
    	
    	boolean res = false;
		res = cDao.createCliente(c);
		return res;
    }
    
    public Cliente getClienteConUsername(String username){
		
		Cliente c = cDao.readCliente(username);
		return c;
	}
    
    public List<Cliente> getTuttiClienti(){
		
		return cDao.readClienti();
	}  
    
    public boolean registraDipendente(Dipendente d){
    	
    	boolean res = false;
		res = dDao.createDipendente(d);
		
		return res;
    }
    
    public Dipendente getDipendenteConUsername(String username){
		
		Dipendente d = dDao.readDipendente(username);
		return d;
	}
    
    public List<Dipendente> getTuttiDipendenti(){
		
		return dDao.readDipendenti();
	}
    
    public boolean registraRubrica(String nome){
    	
    	RubricaModel r = new RubricaModel(nome);
    	boolean res= rDao.createRubrica(r);
    	return res;
    }
    
    public RubricaModel getRubricaConNome(String nome){
    	
    	RubricaModel r = rDao.readRubricaConNome(nome);
    	return r;
    }
    
    public boolean registraVoce(VoceModel v, RubricaModel r) {
		
    	boolean res = false;
		v.setRubrica(r);
		r.addVoce(v);
		boolean b= vDao.createVoce(v);
		rDao.aggiornaRubrica(r);
		if(b==true)
		{
			res =true;
		}
		
		return res;

	}
    
    public VoceModel getVoce(RubricaModel r, VoceModel v){
    	
    	VoceModel voce=null;
    	voce= vDao.readVoce(v.getNome(), v.getCognome(), r.getId_rubrica());
    	return voce;
    }
    
    public List<VoceModel> getVociDiUnaRubrica(RubricaModel r){
    	
    	List<VoceModel> listaVoci = vDao.getVociPerUnaRubrica(r.getNome());
    	return listaVoci;
    }
    
    public boolean eliminaUtenteDaRubrica(Utente u){
    	
    	boolean res = false;
    	RubricaModel r = rDao.readRubricaConNome(u.getUsername());
    	if(r!=null){
    		rDao.deleteRubrica(r);
    	}
    	res= uDao.deleteUtente(u);
    	return res;
    }
    
    public boolean eliminaVoceDaRubrica(RubricaModel r, String nome, String cognome){
    	
    	boolean res = false;
    	VoceModel v = vDao.trovaVoce(nome, cognome, r.getId_rubrica());
    	res= vDao.deleteVoce(v);
    	return res;
    }
    
    public String convertiPass(String pass){
		
		return PasswordCodification.codificatePass(pass);	
	}

}
