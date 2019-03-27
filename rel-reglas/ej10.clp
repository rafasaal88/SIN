Haz un programa que dado un conjunto hechos (vector <nombreVector> <val1> ... <valN>) 
con valores numéricos, ordene sus valores de menor a mayor.

(deffacts hechos
	(vector v1 1 2 3 4 5)
	(vector v2 4 2 5 6)
	(vector v3 1 3 6 3 1)
)

(defrule regla
	?d1<-(vector ?nombre $?antes ?x ?y $?despues)
	(test(> ?x ?y))

=>
	(retract ?d1)
	(assert (vector ?nombre $?antes ?y ?x $?despues))
)