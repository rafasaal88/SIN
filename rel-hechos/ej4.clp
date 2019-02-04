Representa mediante un conjunto de hechos no ordenados los datos de los
miembros de una familia y sus relaciones familiares.

(deftemplate persona
	(slot nombre)
	(multislot apellidos)
	(slot edad)
	(slot dni)
)

(deftemplate relacion
	(slot dni1)
	(slot dni2)
	(multislot tipo)
)

(deffacts familia
	(persona (nombre pepito)(apellidos el de los palotes)(edad 39)(dni 457457457))
	(persona (nombre manolo)(apellidos el del bombo)(edad 18)(dni 458458458))
)

(deffacts relaciones
	(relacion(dni1 457457457)(dni2 458458458)(tipo es el padre de))
	(relacion(dni1 458458458)(dni2 457457457)(tipo es el hijo de))
) 