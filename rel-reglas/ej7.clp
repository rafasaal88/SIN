Haz  un  programa  que  dado  un  único  hecho  datos  con  un  número  indefinido  de  
valores,  elimine los que no sean numéricos.

(deffacts hechos
	(datos 1 prueba hola 3 4 5 6.4 7 9)
)

(defrule regla
	?d1<-(datos $?antes ?x $?despues)
	(not(test(numberp ?x)))
=>
	(retract ?d1)
	(assert (datos $?antes $?despues))
	
)