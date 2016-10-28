package modelBean;

import java.io.Serializable;

import javax.persistence.Entity;

@Entity
public class Dipendente extends Utente implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private double stipendio;
	private String posizione;
	
	public Dipendente(){
		super();
	}

	public Dipendente(String nome, String cognome, String username, String ruolo, String password, double stipendio, String posizione) {
		super(nome,cognome,username,ruolo,password);
		this.stipendio = stipendio;
		this.posizione = posizione;
	}

	public double getStipendio() {
		return stipendio;
	}

	public void setStipendio(double stipendio) {
		this.stipendio = stipendio;
	}

	public String getPosizione() {
		return posizione;
	}

	public void setPosizione(String posizione) {
		this.posizione = posizione;
	}
	
}
