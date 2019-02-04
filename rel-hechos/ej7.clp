(deftemplate animal
	(slot reino(type SYMBOL)(allowed-values mamifero reptiles aves))
	(slot familia)
	(slot nombre)
	(slot tipo )
)

(deffacts animales
	(animal(reino mamifero)(familia roedores)(nombre rata))
	(animal(reino mamifero)(familia roedores)(nombre ardilla))
	(animal(reino mamifero)(familia felinos)(nombre tigre))
	(animal(reino mamifero)(familia felinos)(nombre lince))
	(animal(reino mamifero)(familia felinos)(nombre jaguar))
	(animal(reino reptiles)(familia serpientes)(nombre boa))
	(animal(reino reptiles)(familia serpientes)(nombre cobra))
	(animal(reino aves)(familia rapaces)(nombre halcon)(tipo diurno))
	(animal(reino aves)(familia rapaces)(nombre gavilan)(tipo diurno))
	(animal(reino aves)(familia rapaces)(nombre buho)(tipo nocturno))
	(animal(reino aves)(familia rapaces)(nombre lechuzo)(tipo nocturno))
)