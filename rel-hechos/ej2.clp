Representa mediante hechos no ordenados, los datos de varios pacientes de un
médico (nombre, apellidos, dni y seguro médico) y las visitas que éstos realizan
al médico (fecha, síntomas, pruebas y medicación).

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