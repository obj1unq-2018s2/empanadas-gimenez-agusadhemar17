object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	
	var  total = 0
	var sueldo = 15000
	method sueldo() { 
		return sueldo
	}
	method sueldo(nuevoValor) { 
		sueldo = nuevoValor
	}
	method totalCobrado() {
		return total
	}
	method cobrarSueldo() { 
		total += sueldo 
	}
}

object baigorria {
	
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var property totalDeuda = 0
	var totalDinero = 0
	
	method gasta(monto){
		// TODO No respeta el enunciado.
		// No está teniendo en cuenta los casos en los que el dinero no alcanza para pagar el monto.
		totalDeuda += monto
		totalDinero -= monto
		}
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada

	method saldarDeuda(){
		if(totalDeuda > 0  ){
		// TODO Incompleto	
		}
	}
	method totalCobrado() {
		// TODO Debería ser una pregunta y en cambio es una orden.
		 totalDinero += self.sueldo()
		 totalDeuda -= self.sueldo()
		 }
	
	method cobrarSueldo() { 
	//	total += sueldo()
	
		// TODO ¿Por qué cobra el sueldo dos veces?
		totalDinero += self.sueldo() 
		totalDinero += self.sueldo()
		totalDeuda -= self.sueldo()
	}

}
/*1.Baigorria arranca con 15000 de sueldo, deuda en 0, dinero en 0.
2.Baigorria gasta 4000,  totalDeuda()  debe ser 4000,  totalDinero()  debe ser 0.
3.Baigorria gasta otros 8000,  totalDeuda()  pasa a 12000,  totalDinero()  sigue en 0.
4.Baigorria cobra, con los 15000 que recibe paga toda su deuda y le sobran 3000 pesos. Por lo tanto,  totalDeuda()  debe ser 0, y  totalDinero()  debe ser 3000.
5.Baigorria gasta 25000, cubre 3000 con el dinero que tiene, el resto es deuda.  totalDeuda()  queda en 22000,  totalDinero()  en 0.
6.Baigorria cobra, tiene que dedicar los 15000 a pagar deudas, y no le alcanza. Ahora,  totalDeuda()  pasa a 7000, y  totalDinero()  a 0.
 */


object galvan {
	var dinero = 300000
	method dinero() { 
		return dinero
	}
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
