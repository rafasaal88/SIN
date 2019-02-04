Representa mediante hechos no ordenados, los datos de varios pacientes de un
m�dico (nombre, apellidos, dni y seguro m�dico) y las visitas que �stos realizan
al m�dico (fecha, s�ntomas, pruebas y medicaci�n).

(deftemplate paciente
	(slot nombre)
	(multislot apellidos)
	(slot dni)
	(slot seguro_medico)
)

(deftemplate visita
	(slot fecha)
	(multislot sintomas)
	(multislot pruebas)
	(multislot medicacion)
	(slot dni)
)

(deffacts hechos
	(paciente(nombre pepito)(apellidos de los palotes)(dni 457457457)(seguro_medico si))
	(paciente(nombre manolito)(apellidos el del bombo)(dni 458458458)(seguro_medico ni))
	(visita(fecha 25/02/19)(sintomas fiebre alta)(pruebas temperatura y radiografia)(medicacion paracetamol)(dni 457457457))
)