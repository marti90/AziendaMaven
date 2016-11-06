/**
 * 
 */

jQuery(document).ready(function() {
	
	
$("#btn").click(function(){
	
	var nomeVoce=$("#nome").val();
	var cognomeVoce=$("#cognome").val();
	var nomeRubrica=$("#nomeRubrica").val();
	
	var parametroInput="nome="+nomeVoce+"cognome="+cognomeVoce+"nomeRubrica="+nomeRubrica;
	
	
	$.ajax({
		  
		  type: "POST", 
		  url : "prendiVoce",
		  data:parametroInput,
		  dataType : "JSON" ,
		  
		  
		  success: function(data,txtStatus,jqXHR){
                 
              if(data.success){
				  
				  $("#risposta").html("");
				  $("#risposta").append("<p>nome =" + data.voce.nome+"</p>");
				  $("#risposta").append("<p>cognome =" + data.voce.cognome+"</p>");
				  $("#risposta").append("<p>telefono =" + data.voce.telefono+"</p>");
			  }else{
				  $("#risposta").html("");
				  $("#risposta").append("<p> quella voce non esiste </p>");
				  
			  }
			  
			  
		  } 
          ,

          error: function(jqXHR,txtStatus,erroreLanciato){
	 
	          console.log("Qualcosa e' andato storto :" +txtStatus);
	      }
	  
	  
	  
    });
	
});
	
});