Haz  un  programa  que  dado  un  �nico  hecho  datos  con  un  n�mero  indefinido  de  valores  
(ejemplo: (datos hola 1 3 nuevo 1 adios)),  elimine  todas  las  apariciones  del  valor 1.

(deffacts hecho1
	(datos hola 1 3 nuevo 1 adios)
)

(defrule regla

	?d1 <- (datos $?antes ?x $?despues)
	(test (eq ?x 1))
=>
	(retract ?d1)
	(assert (datos $?antes $?despues))	

)