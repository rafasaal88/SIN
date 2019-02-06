Haz un programa que dado un conjunto de hechos (datos <val1> <val2>) (hechos
de tipo datos con dos valores numéricos), detecte qué hechos cumplen que el segundo
valor sea mayor que el primero y los imprima. 

(deffacts hechos
	(datos datos1 4 5)
	(datos datos2 6 5)
	(datos datos3 5 9)
	(datos datos4 5 8)
)

(defrule comprobar
	(datos ?nombre ?x ?y)
	(test(< ?x ?y))
=>

	(printout t "Los datos " ?nombre " tienen el segundo dato mayor que el primero" crlf)
)