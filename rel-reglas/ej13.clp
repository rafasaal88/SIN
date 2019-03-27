Haz  un  programa  que  resuelva  el  ejercicio  9,  pero  que  sólo  utilice  los  hechos  con  valores  numéricos y los inserte de forma ordenada (de menor a mayor) en el hecho todos-los-datos.

Haz  un  programa  que  dado  un  conjunto  de  hechos  de  la  forma  (dato 1), (dato 5), (dato  verde)...,  
cree  un  único  hecho  (todos-los-datos  ...)  con  todos  los  valores de los hechos anteriores. 

(deffacts hechos
	(dato 1)
	(dato 5)
	(dato 3)
	(dato 2)
	(dato verde)
	(todos-los-datos)
)

(defrule regla
	
	?d1<-(todos-los-datos $?datos)
	?d2<-(dato ?x)
	(test(numberp ?x))
	
	

	(not(dato ?y&:(numberp ?y)&:(> ?x ?y)))


=>
	(retract ?d1)
	(retract ?d2)
	(assert (todos-los-datos $?datos ?x))
	
)