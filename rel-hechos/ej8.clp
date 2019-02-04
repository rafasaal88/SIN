Imagina que quieres preparar para almorzar pisto (ingredientes: pimientos
verdes, pimientos rojos, berenjenas, calabacines, cebollas, tomate triturado, sal y
aceite) y una tortilla de patatas (ingredientes: huevos, patatas, cebollas, aceite y
sal). De los ingredientes necesarios tienes sólo algunos en la cocina (pimientos
verdes, pimientos rojos, cebollas, aceite), por lo que tienes que ir a comprar el
resto. Refleja esta situación en la base de hechos indicando los productos con los
que cuentas y los que debes ir a comprar.

Supón ahora que ya has vuelto de la compra, después de comprar todos los
ingredientes que te faltaban. Actualiza la base de hechos de manera que quede
reflejada esta nueva situación.

Por último, considera la situación en la que ya has terminado de preparar el
almuerzo utilizando los productos necesarios, y que como consecuencia de ello,
se te han agotado algunos de dichos productos (cebolla y tomate triturado).
Refleja esta situación en la base de hechos.


(deftemplate alacena
	(multislot disponible)
	(multislot no-disponible)
)

(deffacts antes
	(alacena(disponible "pimientos verdes" "pimiento rojos" "cebollas" "aceite")(no-disponible "berejenas" "calabacines" "cebollas" "tomate triturado" "sal" "aceite"))
)

(retract *)

(deffacts compra
	(alacena(disponible "pimientos verdes" "pimiento rojos" "cebollas" "aceite" "berejenas" "calabacines" "cebollas" "tomate triturado" "sal" "aceite"))
)

(retract *)



(deffacts despues
	(alacena(disponible "pimientos verdes" "pimiento rojos" "cebollas" "aceite" "berejenas" "calabacines" "sal" "aceite")(no-disponible "cebollas" "tomate triturado"))
)