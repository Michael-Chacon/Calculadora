Algoritmo CalculadoraTotal
	
	Escribir 'Cuantos números va a ingresar';
	Leer cantidad
	
	Definir valores Como Entero
	Dimension valores[cantidad]
	
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir 'ingresa un número'
		Leer valores[i]
	FinPara
	
	Definir flag Como Logico
	flag = Verdadero // cuando la vandera sea falso se sale del ciclo mientras 
	
	Mientras flag Hacer
		
		Definir operacion Como Entero
		Escribir 'que operacion quiere hacer: 1 suma, 2 resta, 3 multiplicación, 4 división'
		Leer operacion 
		
		Segun operacion Hacer
			1:
				flag = Falso; // Esto es para salir del ciclo mientras 
				sumar(valores, cantidad) // valores: el arreglo con los numeros ingresados por el usuario 
			2: 
				flag = Falso;	
				restar(valores, cantidad)
			3:
				flag = Falso;
				multiplicar(valores, cantidad)
			4:
				flag = Falso;
				dividir(valores, cantidad)
		FinSegun
		
	FinMientras
	
FinAlgoritmo


Funcion sumar(valores, cantidad)
	resultado = 0 // variable acumuladora 
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		resultado <- resultado + valores[i]
	FinPara
	Escribir 'El resultado de la suma es = ', resultado;
FinFuncion


Funcion restar(valores, cantidad)
	Para i <- 1 Hasta cantidad - 1 Con Paso 1 Hacer // cantidad - 1: como puede ver más abajo en (valores[i + 1]) me estoy adelantando una posicion, por ende, tengo que hacer una iteracion menos en el cliclo, si no coloco el -1, daria error
		//...porque si el siclo tiene 5 numeros tendria que hacer  5 iteraciones, en la ultima iteracion seria valores[5+1] o sea 6 y la posicion 6 no existe, colocando cantidad -1, la ultima iteracion llega a [4+1]
		Si i == 1 Entonces // cuando el ciclo haga SOLO la primer iteracion resultado = a valores[1] - valores[1 + 1] o sea  la posicion 2
			resultado <- valores[i] - valores[i + 1]
		SiNo
			resultado <- resultado - valores[i + 1] // acá resultado ya tiene el valor de ul primer numero del array menos el segundo numero del array, e i ya vale 2 por que aca solo entra despues de la primer vuelta
			//.. entonces resultado = resultado - valores[2 + 1] o sea la posicion 3.
		FinSi
	FinPara
	Escribir 'El resultado de la resta es =', resultado
FinFuncion


Funcion multiplicar(valores, cantidad)
	resultado = 1
	Escribir 'Que tipo de operacion quiere hacer'
	Escribir '1: Todos contra todos?'
	Escribir '2: Solo pares'
	Escribir '3: Solo impares';
	Leer operacionEscogida;
	
	Si operacionEscogida == 1 Entonces
		Para i <- 1 Hasta cantidad Con Paso 1 Hacer
			resultado <- resultado * valores[i]
		FinPara					
	FinSi
	
	Si operacionEscogida == 2 Entonces
		Para i <- 1 Hasta cantidad Con Paso 1 Hacer
			Si valores[i] es par Entonces
				resultado <- resultado * valores[i]
			FinSi
		FinPara
	FinSi
	
	Si operacionEscogida == 3 Entonces
		Para i <- 1 Hasta cantidad Con Paso 1 Hacer
			Si valores[i] es impar Entonces
				resultado <- resultado * valores[i]
			FinSi
		FinPara
	FinSi
	Escribir 'El resultado de la multiplicación es =', resultado
FinFuncion


Funcion dividir(valores, cantidad)
	Escribir 'Que tipo de operacion quiere hacer'
	Escribir '1: Todos contra todos?'
	Escribir '2: Solo pares'
	Escribir '3: Solo impares';
	Leer operacionEscogida;
	
	Si operacionEscogida == 1 Entonces // aca se hace lo mismo que en la resta
		Para i <- 1 Hasta cantidad - 1 Con Paso 1 Hacer
			Si i == 1 Entonces 
				resultado <- valores[i] / valores[i + 1]
			SiNo
				resultado <- resultado / valores[i + 1]
			FinSi
			Escribir 'res=', resultado
		FinPara					
	FinSi
	
	Si operacionEscogida == 2 Entonces
		countPar <- 0
		Para i <- 1 Hasta cantidad Con Paso 1 Hacer
			Si valores[i] es par Entonces
				countPar <- countPar + 1
				Si countPar == 1 Entonces
					resultado <- valores[i]
				SiNo
					resultado <- resultado / valores[i]
				FinSi
			FinSi
		FinPara
	FinSi
	
	Si operacionEscogida == 3 Entonces
		countImpar <- 0
		Para i <- 1 Hasta cantidad Con Paso 1 Hacer
			Si valores[i] es impar Entonces
				countImpar <- countImpar + 1
				Si countImpar == 1 Entonces
					resultado <- valores[i]
				SiNo
					resultado <- resultado / valores[i]
				FinSi
			FinSi
		FinPara
	FinSi
	
	Escribir 'El resultado de la division es = ', resultado
FinFuncion
	