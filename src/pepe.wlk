object pepe {
	var faltas=0
	var categoria
	var resultado
	
	//sueldo = neto + bono x presentismo + bono x resultados. 
	method sueldo(){
		return categoria.neto() + presentismo.faltas(faltas) + presentismoFijo.valor() + resultado.resultado()
	}
	
	method neto(){
		return categoria.neto()
	}
	
	method categoria(){
		return categoria
	}
	
	method resultado(){
		return resultado
	}
	
	method faltas(){
		return faltas
	}
	
	method faltar(cantidad){
		faltas=faltas+cantidad
	}
	
	method setresultado(tipoderesultado){
		resultado=tipoderesultado
	}
	
	method setcategoria(ponercategoria){
		categoria=ponercategoria
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
	
	method faltas(cantidad){
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

object neto{
	method resultado(){
		return pepe.neto()*0.1
	}
}

object fijo{
	method resultado(){
		return 80
	}
}

object nada{
	method resultado(){
		return 0
	}
}

object presentismoFijo{
	method valor(){
		return 0
	}
}