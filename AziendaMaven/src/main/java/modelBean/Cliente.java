package modelBean;

import java.io.Serializable;

import javax.persistence.Entity;

@Entity
public class Cliente extends Utente implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String ragioneSociale;
	private String pIva;
	
	public Cliente(){
		super();
	}
	
	public Cliente(String nome, String cognome, String username, String ruolo, String password, String ragioneSociale, String pIva) {
		super(nome,cognome,username,ruolo,password);
		this.ragioneSociale = ragioneSociale;
		this.pIva = pIva;
	}

	public String getRagioneSociale() {
		return ragioneSociale;
	}

	public void setRagioneSociale(String ragioneSociale) {
		this.ragioneSociale = ragioneSociale;
	}

	public String getpIva() {
		return pIva;
	}

	public void setpIva(String pIva) {
		this.pIva = pIva;
	}
	
}
