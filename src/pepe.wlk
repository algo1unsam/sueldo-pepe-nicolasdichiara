object pepe {
	var faltas=0
	var categoria= gerente
	var resultado= neto
	
	//sueldo = neto + bono x presentismo + bono x resultados. 
	method sueldo(){
		return categoria.neto()
	}

}

object gerente{
	
	var neto=1000
	
	method neto(){
		return neto
	}
}

object cadete{
	
	var neto=1500
	
	method neto(){
		return neto
	}
}

object presentismo{
	
	method faltas(cantidad,neto){
		if (cantidad==0){
			return 100
		} 
		else{
			if (cantidad==1){
				return 50
			}
			else return 0
		}
	}
	
}

object resultados{
	
}