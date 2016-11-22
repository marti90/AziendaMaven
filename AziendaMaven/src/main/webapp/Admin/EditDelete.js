function editCliente(){
	var result=confirm("Sei sicuro di voler modificare questo cliente?")
	if(result==true){
		document.getElementById("form").action='editCliente.jsp';
		document.getElementById("form").submit();
	}
}

function deleteCliente(){
	var result=confirm("Sei sicuro di voler eliminare questo cliente?")
	if(result==true){
		document.getElementById("form").action='deleteCliente.jsp';
		document.getElementById("form").submit();
	}
}