Haz un programa que detecte e imprima los hechos (vector <nombreVector> ...)
que contengan los valores 3 y 4 en alguna posici�n, y que entre �stos haya un 
n�mero impar de valores. Se debe utilizar la funci�n length$ (ver documentaci�n)

(deffacts hechos
	(vector v1 1 2 3 4 5 6)
	(vector v2 1 2 3 5 4 2)
	(vector v3 1 3 8 5 4)
)
	
(defrule regla
	
	(vector ?nombre $? ?x $?mitad ?y $?despues)
	
	(test 
		(and (eq ?x 3)(eq ?y 4))
	)	

	(test 
		(oddp (length $?mitad))
	)

=>

	(printout t "El vector " ?nombre " cumple la norma" crlf)
)