Haz un programa que dado un conjunto de hechos de tipo datos con un número indefinido
de valores, detecte e imprima aquellos tal que el primer valor sea par y menor o igual al
último. 



(deffacts hechos
	(datos datos1 4 5 6 7 9)
	(datos datos2 3 4 5 6 8)
	(datos datos3 6 4 5 5 3)
)

(defrule comprobar
	(datos ?nombre ?x $? ?y)
	(test(evenp ?x))
	(test(<= ?x ?y))
=>
	(printout t "El conjunto de hechos " ?nombre " cumple los requisitos." crlf)
)