Haz  un  programa  que  dado  un  conjunto  de  hechos  (vector  <nombreVector>  <val1> ... <valN>),  
detecte  aquellos  hechos  cuyos  valores  no  est�n  ordenados  de  menor  a  mayor  e  imprima  el  
mensaje  �El  vector  <nombreVector>  no  est�  ordenado�.  Se  entender�  que  en  la  base  de  hechos  no  
habr�  dos  hechos  vector  con  mismo nombre de vector.

(deffacts hechos
	(vector v1 1 2 3 4 5 6)
	(vector v2 1 2 3 5 4 2)
	(vector v3 1 3 8 5 4)
)

(defrule regla
	(vector ?nombre $?)

	(not(forall 
		(vector ?nombre $? ?x ?y $?)
		(test (< ?x ?y))
	))



=>
	(printout t "El vector " ?nombre " esta ordenado" crlf)
)
