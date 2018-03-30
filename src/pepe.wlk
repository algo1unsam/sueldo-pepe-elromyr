
object pepe {
	var sueldo
	var categoria
	var diasFaltantes
	var bonoPresentismo
	var bonoResultados
	
	method set_categoria(cat){
		categoria=cat
	}
	
	method set_dias_faltantes(dias){
		diasFaltantes = dias
	}
	
	method set_presentismo(tipoPresentismo){
		bonoPresentismo = tipoPresentismo
	}
	
	method set_resultados(tipoResultados){
		bonoResultados = tipoResultados
	}
	
	method get_sueldo(){
		return sueldo
	}
	
	method get_categoria(){
		return categoria
	}
	
	method get_dias_faltantes(){
		return diasFaltantes
	}
	
	method get_bono_presentismo(){
		return bonoPresentismo
	}
	
	method get_bono_resultados(){
		return bonoResultados
	}
	
	method calcular_sueldo(){
		sueldo = categoria.neto() + bonoPresentismo.bono(diasFaltantes) + bonoResultados.bono(categoria.neto())
	}	
}


object gerente{
	method neto(){
		return 1000
	}
}

object cadete{
	method neto(){
		return 1500
	}
}

object presentismo{
	method bono(diasFaltantes){
		if (diasFaltantes==0){
			return 100
		}else if (diasFaltantes==1){
			return 50
		}else{
			return 0
		}
	}
}

object sinPresentismo{
	method bono(diasFaltantes){
		return 0
	}
}

object resultado1{
	method bono(neto){
		return ((10*neto)/100)
	}
}

object resultado2{
	method bono(neto){
		return 80
	}
}

object resultado3{
	method bono(neto){
		return 0
	}
}
