Haz un programa que dado un conjunto de hechos de tipo datos
con un numero indefinido de valores, detecte e imprima
aquellos tal que el primer valor sea par y menor o igual
al ultimo.

(deffacts hechos
  (datos 2 34 23 1)
  (datos 2 34 23 3)

)

(defrule regla
	
	?d1 <- (datos ?x&:(evenp ?x)&:(numberp ?x) $? ?y&:(<= ?x ?y))
	
=>

	(printout t ?d1 crlf)
)
-----------------------------------------------------------------
Haz un programa que dado un unico hecho datos con un numero
indefinido de valores (ejemplo: (datos hola 1 3 nuevo 1 adios)),
elimine todas las apariciones del valor 1.

(deffacts hechos
	(datos hola 1 3 nuevo 1 adios)
)

(defrule regla
	?d1<-(datos $?antes ?x&:(numberp ?x)&:(= ?x 1) $?despues)
	
	
=>
	(retract ?d1)
	(assert(datos $?antes $?despues))
)
-----------------------------------------------------------------
Haz un programa que detecte e imprima los hechos
(vector <nombreVector> ...) que contengan los
valores 3 y 4 en alguna posicion, y que entre éstos
haya un numero impar de valores. Se debe utilizar la
función length$

(deffacts hechos
	(vector v1 1 2 3 4 5 6)
	(vector v2 1 2 3 6 4 5)
	(vector v3 1 3 7 9 7 8 6 4)
)

(defrule regla
	(vector ?nombre $? ?x&:(= ?x 3) $?mitad ?y&:(= ?y 4) $?)
	(test(oddp(length $?mitad)))
=>

	(printout t "El vector " ?nombre " cumple las condiciones" crlf)
)
-----------------------------------------------------------------
Haz un programa que dado un único hecho datos con un número
indefinido de valores, elimine los que no sean numericos.

(deffacts hechos
  (datos hola 1 3 nuevo 1 adios)
)

(defrule regla

	?d1 <-(datos $?antes ?x $?despues)
	(test(numberp ?x))
=>
	(retract ?d1)
	(assert(datos $?antes $?despues))

)
-----------------------------------------------------------------
Haz un programa que dado un conjunto de hechos
(vector <nombreVector> <val1> ... <valN>), detecte aquellos
hechos cuyos valores no estan ordenados de menor a mayor e
imprima el mensaje "El vector <nombreVector> no esta¡ ordenado".
Se entendera¡ que en la base de hechos no habra¡ dos hechos
vector con mismo nombre de vector.

(deffacts hechos
   (vector v1 1 3 5 )
   (vector v2 1 3 5 2)
   (vector v3 1 3 5 2 6 7)
   (vector v4 1 2 3 4 5)
 )

(defrule regla

	(vector ?nombre $? ?x ?y $?)
	(test(> ?x ?y))

=>

	(printout t "El vector " ?nombre " no esta ordenado" crlf)


)
-----------------------------------------------------------------
Haz un programa que dado un conjunto de hechos de la
forma (dato 1), (dato 5), (dato verde)..., cree un unico hecho
(todos-los-datos ...) con todos los valores de los hechos
anteriores.

(deffacts hechos
  (dato 1)
  (dato 3)
  (todos-los-datos)
)

(defrule regla
	?d1 <- (dato ?x)
	?d2 <- (todos-los-datos $?datos)
	

=>
	(retract ?d1 ?d2)
	(assert (todos-los-datos ?x $?datos))

)
-----------------------------------------------------------------
Haz un programa que dado un conjunto hechos
(vector <nombreVector> <val1> ... <valN>)
con valores numÃ©ricos, ordene sus valores de menor a mayor.

(deffacts hechos
  (vector v1 2 3 4)
  (vector v2 3 4 2 1 4 9)
)

(defrule regla

	?d1 <- (vector ?nombre $?ant ?x ?y&:(< ?y ?x) $?des)
	

=>
	(retract ?d1)
	(assert (vector ?nombre $?ant ?y ?x $?des))


)
-----------------------------------------------------------------

-----------------------------------------------------------------

-----------------------------------------------------------------

-----------------------------------------------------------------

-----------------------------------------------------------------

-----------------------------------------------------------------

-----------------------------------------------------------------

-----------------------------------------------------------------

-----------------------------------------------------------------

-----------------------------------------------------------------

-----------------------------------------------------------------

-----------------------------------------------------------------








)