Define una plantilla que permita almacenar informaci�n sobre libros, definiendo
las restricciones que consideres adecuadas para los atributos. Inserta una serie de
hechos en base a esta plantilla acerca de algunos de los libros de la bibliograf�a
de la asignatura, como por ejemplo los siguientes:

b.   Editorial
 1998.
c.   


(deftemplate libro
	(slot nombre)
	(slot ano)
	(multislot autores)
	(slot editorial)
)

(deffacts hechos
	(libro(nombre "Aspectos B�sicos de la Inteligencia Artificial")(ano 1995)(autores "Mira, J." "Delgado, A. E." "Boticario, J. G." "D�ez, F. J."))
	(libro(nombre "Problemas Resueltos de Inteligencia Artificial Aplicada: B�squeda y Representaci�n")(ano 1998)( autores "Gal�n, S. F." "Boticario, J. G." "Mira, J.")(editorial "Addison-Wesley Iberoamericana S. A."))
	(libro(nombre "Inteligencia Artificial. 2� edici�n.")(ano 1994)(autores "Rich, E." "Knight, K")(editorial "McGraw-Hill Interamericana."))
)