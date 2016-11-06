package utility;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelRubrica.RubricaModel;
import modelRubrica.VoceModel;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import dao.RubricaDAO;
import dao.VoceDAO;


@WebServlet(urlPatterns = { "/prendiVoce" })
public class ServletTrovaVoce extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String nome=request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String nomeRubrica = request.getParameter("nomeRubrica");		
		
		PrintWriter out=response.getWriter();
		
		Gson gson=new Gson();
		
		JsonObject jobj= new JsonObject();
		
		VoceModel v=this.getVoceConNomeCogn(nome, cognome, nomeRubrica);
		
		
		JsonElement voceJson= gson.toJsonTree(v);
		
		if(v== null){
			jobj.addProperty("success",false);
			
		}else{
			jobj.addProperty("success",true);
		}
		
		jobj.add("voce", voceJson);
		
		out.println(jobj.toString());
		
		System.out.println(jobj);
		
		
		out.close();
	}
	
	public VoceModel getVoceConNomeCogn(String nome, String cognome, String nomeRubrica){
		
		VoceDAO vDao = new VoceDAO();
		RubricaDAO rDao = new RubricaDAO();
		RubricaModel r = rDao.readRubricaConNome(nomeRubrica);
		return vDao.readVoce(nome, cognome, r.getId_rubrica());
		
}

}
