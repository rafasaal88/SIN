Haz un programa que dado un conjunto de hechos de tipo dato y un único valor numérico, 
imprima  los  valores  numéricos  por  pantalla  de  menor  a  mayor.  
Vigila  que  el  programa  funciona correctamente incluso con la estrategia de ejecución de reglas Random.

(deffacts hechos
	(datos hola adios "5" 5)
	(datos pepito hola "3" "4" 7)
	(datos hola hola hola 4)
)

(defrule regla

	?d1<-(datos $? ?x)
	(test(numberp ?x))
	(not(datos $? ?y&:(> ?x ?y)))


=>	
	(retract ?d1)
	(printout t ?x crlf)
)
