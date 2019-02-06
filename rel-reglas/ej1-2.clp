En una granja hay animales de los siguientes tipos: perros, gatos, patos, vacas, ovejas y
gallos. Escribe una serie de reglas de manera que en base a un hecho que indique el sonido
que hace un animal identifique qué clase de animal es. Por ejemplo, si se afirma un hecho
como (sonido kikiriki), el programa debe imprimir por pantalla el mensaje “Se
trata de un gallo”. 

(deftemplate animal
	(slot tipo)
	(slot sonido)
)

(deffacts hechos
	(animal (tipo perros)(sonido guau))
	(animal (tipo gatos)(sonido miau))
	(animal (tipo patos)(sonido cuack))
	(animal (tipo vacas)(sonido muuuu))
	(animal (tipo ovejas)(sonido beeee))
	(animal (tipo gallos)(sonido kikiriki))
)

(defrule regla
	(animal (tipo ?nombre)(sonido kikiriki))
=>
	(printout t "Se trata de un gallo" crlf)
)