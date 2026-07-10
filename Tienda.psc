Algoritmo ejersubproceso
	Dimension tienda[10,3]
	Definir opcion Como Entero
	
	Repetir
		Limpiar Pantalla
		Escribir " ===== MENU ====="
		Escribir "1. Registrar"
		Escribir "2. Mostrar"
		Escribir "3. Actualizar"
		Escribir "4. Eliminar"
		Escribir "5. Salir"
		Leer opcion
		
		Segun opcion Hacer
			1:
				
				Limpiar Pantalla
				Escribir " *=* REGISTRAR PRODUCTOS === "
				Registrar(tienda)
				Escribir "Presione cualquier tecla para continuar ... "
				Esperar Tecla
				
				Limpiar Pantalla
				Escribir " === MOSTRAR PRODUCTOS === "
				MostrarE(tienda)
				Escribir "Presione cualquier tecla para continuar ... "
				Esperar Tecla
				
				Limpiar Pantalla
				Escribir " === ACTUALIZAR PRODUCTOS === "
				Actualizar(tienda)
				Escribir "Presione cualquier tecla para continuar ... "
				Esperar Tecla
				
				Limpiar Pantalla
				Escribir " === ELIMINAR PRODUCTOS === "
				Eliminar(tienda)
				Escribir "Presione cualquier tecla para continuar ... "
				Esperar Tecla
		FinSegun
	Hasta Que opcion = 5
FinAlgoritmo

SubProceso Registrar(tienda)
	Definir i Como Entero
	
	Para i=1 Hasta 2
		Si tienda[i,1]="" Entonces
			Escribir "Codigo:"
			Leer tienda[i,1]
			Escribir "Nombre del producto:"
			Leer tienda[i,2]
			Escribir "Cantidad:"
			Leer tienda[i,3]
			Escribir "Producto registrado"
		FinSi
	FinPara
	
	Escribir "Matriz llena."
FinSubProceso

SubProceso MostrarE(tienda)
	Definir i Como Entero
	
	Escribir "CODIGO"
	Para i=1 Hasta 10
		Si tienda[i,1] <>"" Entonces
			Escribir tienda[i,1],"   ", tienda[i,2],"   ", tienda[i,3]
		FinSi
	FinPara
FinSubProceso

SubProceso Actualizar (tienda)
	Definir i Como Entero
	Definir codigo Como Cadena
	
	Escribir "Codigo a buscar:"
	Leer codigo
	
	Para i=1 Hasta 10
		Si tienda[i, 1]=codigo Entonces
			Escribir "Nuevo Nombre:"
			Leer tienda[i, 2]
			Escribir "Nueva Cantidad:"
			Leer tienda[i, 3]
			Escribir "Registro actualizado."
		FinSi
	FinPara
FinSubProceso

SubProceso Eliminar(tienda)
	Definir i Como Entero
	Definir codigo Como Cadena
	
	Escribir "Codigo a eliminar:"
	Leer codigo
	
	Para i=1 Hasta 10
		Si tienda[i, 1]=codigo Entonces
			tienda[i, 1]=""
			tienda[i,2]=""
			tienda[i, 3]=""
			Escribir "Registro eliminado."
		FinSi
	FinPara
FinSubProceso