Una planta industrial tiene diez sensores identificados por un código numérico entre 1 y 10. 
Cada  sensor  puede  encontrarse  en  un  estado  correcto  o  incorrecto.  Escribe  una  
plantilla  que  permita  representar  la  información  relativa  a  los  sensores  y  un  
conjunto  de  reglas  que  imprima  un  mensaje  de  advertencia  si  tres  o  más  sensores  
se  encuentran  en  un  estado  incorrecto.  Sólo  debe  mostrarse  un  mensaje  de  error  
aunque  haya  más  de  tres  sensores en estado incorrecto.

(deftemplate sensor
	(slot id (type INTEGER))
	(slot estado)
)

(deffacts hechos
	(sensor (id 1)(estado correcto))
	(sensor (id 2)(estado correcto))
	(sensor (id 3)(estado incorrecto))
	(sensor (id 4)(estado correcto))
	(sensor (id 5)(estado incorrecto))
	(sensor (id 6)(estado incorrecto))
	(sensor (id 7)(estado correcto))
	(sensor (id 8)(estado correcto))
	(sensor (id 9)(estado correcto))
)

(defrule regla

	(exists
		(sensor (id ?x)(estado incorrecto))
		(sensor (id ?y&~?x)(estado incorrecto))
		(sensor (id ?z&~?x&~?y)(estado incorrecto))
	)

=>
	(printout t "Peligro!! Tres o más sensores estan incorrectos" crlf)
)