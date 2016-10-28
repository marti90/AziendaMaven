package modelBean;

import java.io.Serializable;

import javax.persistence.Entity;

@Entity
public class Admin extends Utente implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String livelloAccesso;
	
	public Admin(){
		super();
	}

	public Admin(String nome, String cognome, String username, String ruolo, String password, String livelloAccesso) {
		super(nome,cognome,username,ruolo,password);
		this.setLivelloAccesso(livelloAccesso);
	}

	public String getLivelloAccesso() {
		return livelloAccesso;
	}

	public void setLivelloAccesso(String livelloAccesso) {
		this.livelloAccesso = livelloAccesso;
	}
	
	

}
