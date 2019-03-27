Haz  un  programa  que  dado  un  conjunto  de  hechos  de  la  forma  (dato 1), (dato 5), (dato  verde)...,  
cree  un  único  hecho  (todos-los-datos  ...)  con  todos  los  valores de los hechos anteriores. 

(deffacts hechos
	(dato 1)
	(dato 5)
	(dato verde)
	(todos-los-datos)
)

(defrule regla
	
	?d1<-(todos-los-datos $?datos)
	(dato ?x)

	(not(todos-los-datos $? ?x $?))

=>
	(retract ?d1)
	(assert (todos-los-datos ?x $?datos))
	

)