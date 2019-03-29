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

(defrule no-ordenado
		(vector ?nombre $?)
		(exists(vector ?nombre $? ?x ?y&:(> ?x ?y) $?))
		

	

=>

	(printout t "El vector " ?nombre " no esta ordenado" crlf)


)-----------------------------------------------------------------
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
Haz un programa que resuelva el ejercicio 7 pero
sin eliminar los hechos (dato 1), (dato 5), (dato verde)....
(Se presupone un único hecho todos-los-datos)

(deffacts hechos
  (dato 1)
  (dato 3)

  (todos-los-datos)
)

(defrule regla

	?d1 <- (todos-los-datos $?datos)
	(dato ?x)
	(not(exists(todos-los-datos $? ?x $?)))
=>

	(retract ?d1)
	(assert (todos-los-datos $?datos ?x))

)
-----------------------------------------------------------------
Haz un programa que dado un conjunto de hechos de tipo dato
y un único valor numérico, imprima los valores numéricos
por pantalla de menor a mayor. Vigila que el programa
funciona correctamente incluso con la estrategia de ejecución
de reglas Random.

(deffacts hechos
  (dato 1)
  (dato 3)
  (dato 9)
  (dato 5)
  (dato 4)
  (dato 0)

)

(defrule regla

	?d1 <- (dato ?x)
	(not(exists(dato ?y&:(< ?y ?x))))

=>
	(printout t ?x crlf)
	(retract ?d1)


)
-----------------------------------------------------------------
Haz un programa que resuelva el ejercicio 9, pero que sólo
utilice los hechos con valores numéricos y los inserte de
forma ordenada (de menor a mayor) en el hecho todos-los-datos.
(Se presupone un único hecho todos-los-datos)

(deffacts hechos
  (dato 1)
  (dato 3)
  (dato verde)
  (dato 2)
  (todos-los-datos)
)

(defrule regla
	
	?d1 <- (todos-los-datos $?datos)
	?d2 <- (dato ?x&:(numberp ?x))
	(not(exists(dato ?y&:(numberp ?y)&:(< ?y ?x))))
	

=>
	(retract ?d1 ?d2)
	(assert (todos-los-datos $?datos ?x))

)
-----------------------------------------------------------------
Haz un programa que calcule el factorial de un número,
de manera que ante un hecho (factorial 3), muestre por
pantalla el mensaje “El factorial de 3 es 6”.

(deffacts hecho
	(dato 4)
)

(deffacts hecho-auxiliar

	(acumulado 1)
	(multiplicando 1)

)

(defrule regla
	(dato ?x)
	?d1 <- (multiplicando ?y)
	?d2 <- (acumulado ?z)

	

	(test(>= ?x ?y))

=>
	(retract ?d1 ?d2)
	(assert (multiplicando (+ ?y 1)))
	(assert (acumulado (* ?z ?y)))
	
)

(defrule regla2
	(dato ?x)
	(multiplicando ?y)
	(not(test(>= ?x ?y)))
	(acumulado ?z)
=>

	(printout t "El factorial de " ?x " es " ?z crlf)

)
-----------------------------------------------------------------
Una planta industrial tiene diez sensores identificados
por un código numérico entre 1 y 10. Cada sensor puede
encontrarse en un estado correcto o incorrecto. Escribe
una plantilla que permita representar la información relativa
a los sensores y un conjunto de reglas que imprima un mensaje
de advertencia si tres o más sensores se encuentran en un
estado incorrecto. Sólo debe mostrarse un mensaje de error
aunque haya más de tres sensores en estado incorrecto.

(deftemplate sensor
	(slot codigo (type INTEGER) (range 1 10))
	(slot estado (allowed-values correcto incorrecto)))

(deffacts hechos
	(sensor(codigo 1)(estado incorrecto))
	(sensor(codigo 2)(estado incorrecto))
	(sensor(codigo 3)(estado incorrecto))
	(sensor(codigo 4)(estado incorrecto))
)


(defrule regla
	(exists
		(sensor (codigo ?x)(estado incorrecto))
		(sensor (codigo ?y&~?x)(estado incorrecto))
		(sensor (codigo ?z&~?y&~?x)(estado incorrecto))

	)
=>

	(printout t "Alerta, 3 o más sensores estan incorrectos" crlf)
)
-----------------------------------------------------------------
Haz un programa que dado un conjunto de hechos de tipo dato
y un único valor numérico, imprima los valores numéricos
por pantalla de menor a mayor. Vigila que el programa
funciona correctamente incluso con la estrategia de ejecución
de reglas Random.

(deffacts hechos
  (dato 1)
  (dato 3)
  (dato 9)
  (dato 5)
  (dato 4)
  (dato 0)

)

(defrule regla 
	?d1 <- (dato ?x)
	(not(exists(dato ?y&:(< ?y ?x))))

=>
	(retract ?d1)
	(printout t ?x crlf)
)	
-----------------------------------------------------------------
Haz un programa que resuelva el ejercicio 9, pero que sólo
utilice los hechos con valores numéricos y los inserte de
forma ordenada (de menor a mayor) en el hecho todos-los-datos.
(Se presupone un único hecho todos-los-datos)

(deffacts hechos
  (dato 1)
  (dato 3)
  (dato verde)
  (dato 2)
  (todos-los-datos)
)

(defrule regla
	?d1 <- (dato ?x&:(numberp ?x))
	?d2 <- (todos-los-datos $?datos)
	(not(exists(dato ?y&:(numberp ?y)&:(< ?y ?x))))

=>
	(retract ?d1 ?d2)
	(assert(todos-los-datos $?datos ?x))
)
-----------------------------------------------------------------
Escribe un programa para ayudar a una persona a decidir qué plantas
podría plantar. La siguiente tabla indica las características de una
serie de plantas (tolerancia al frío, tolerancia a la sombra,
tolerancia al clima seco...). La entrada al programa debe
consistir en un conjunto de hechos
(característica-deseada <característica>) que indiquen
características que se desee que tenga una planta.
El programa debe mostrar por pantalla el nombre de las plantas
que cuenten con las características indicadas, aunque aparte de
esas cuenten con otras características

(deftemplate planta
    (slot nombre)
    (multislot caracteristicas))

(deffacts plantas
	(planta (nombre hortensia) (caracteristicas sombra ciudad maceta cuidado_facil crece_rapido))

   	(caracteristica-deseada sombra)
)

(defrule regla

	(planta (nombre ?x))
	
	(forall (caracteristica-deseada ?y)
		(planta (nombre ?x)(caracteristicas $? ?y $?))
	)

=>

	(printout t "Puedes sembrar " ?x crlf)
)
-----------------------------------------------------------------
Complementa el ejercicio 8 para que también se detecten
los vectores que sí están ordenados. Es decir, sin modificar los
hechos ni crear hechos auxiliares, se debe imprimir un mensaje
por cada vector (vector <nombreVector> <val1> ... <valN>),
indicando si sus elementos están ordenados o no.
Se entenderá que en la base de hechos no habrá dos
hechos vector con mismo nombre de vector.

(deffacts hechos
   (vector v1 1 3 5 )
   (vector v2 1 3 5 2)
   (vector v3 1 3 5 7 2 3 8)
   (vector v4 1 3 3 4 1 5 2)
   (vector v5 1 3 5 9)
   (vector v6 1 3 5 7)
)

(defrule no-ordenado
		(vector ?nombre $?)
		(exists(vector ?nombre $? ?x ?y&:(> ?x ?y) $?))
		

	

=>

	(printout t "El vector " ?nombre " no esta ordenado" crlf)


)



(defrule ordenado
	(vector ?nombre $?)

	(forall (vector ?nombre $? ?x ?y $?)
		(test(< ?x ?y))
	)


=>
	(printout t "El vector " ?nombre " esta ordenado" crlf)


)
-----------------------------------------------------------------
Haz un programa que dado un único hecho vector con un
número indefinido de valores numéricos, imprima el valor que se
sitúa justo en medio, o la media de los dos valores de
en medio.

(deffacts hechos
   (vector v1 1 3 5 )
   (vector v2 1 3 5 2)
   (vector v3 1 3 5 7 2 3 8)
   (vector v4 1 3 3 4 1 5 2)
   (vector v5 1 3 5 9)
   (vector v6 1 3 5 7)
 )


(defrule regla
	
	(vector ?nombre $?antes ?x $?despues)
	(test(= (length $?antes)(length $?despues)))

=>
	(printout t "El valor en medio del vector " ?nombre " es " ?x crlf)

)

(defrule regla-2
	
	(vector ?nombre $?antes ?x ?y $?despues)
	(test(= (length $?antes)(length $?despues)))

=>
	(printout t "La media de los dos numeros centrales del vector " ?nombre " es " (/(+ ?x ?y) 2) crlf)

)
-----------------------------------------------------------------
Haz un programa que dado un único hecho vector, detecte si sus
valores se repiten de forma simétrica. Siempre que la salida sea correcta, puedes modificar el vector o utilizar hechos auxiliares. Lo siguiente es una posible solución entre muchas posibilidades
(deffacts hechos
   (vector v1 1 3 5 )
   (vector v2 1 3 5 2)
   (vector v3 1 3 5 7 2 3 8)
   (vector v4 1 3 3 4 1 5 2)
   (vector v5 1 3 5 9)
   (vector v6 1 3 5 7 5 3 1)
   (vector v7 1 3 5 5 3 1)
   (vector v8 1 3 5 5 4 1)
)



(defrule detectaNoSimetrico
	(vector ?nombre ?x $? ?y&~?x)
	=>
	(printout t "El vector " ?nombre " no es simétrico" crlf))

(defrule continuaSimetrico
	?h<-(vector ?nombre ?x $?medio ?x)
	=>
	(retract ?h)
	(assert (vector ?nombre $?medio)))

(defrule simetricoImpar
	(vector ?nombre ?)
	=>
	(printout t "El vector " ?nombre " es simétrico impar" crlf))

(defrule simetricoPar
	(vector ?nombre)
	=>
	(printout t "El vector " ?nombre " es simétrico par" crlf))


)
-----------------------------------------------------------------








