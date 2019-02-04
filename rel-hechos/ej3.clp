Describe la informaci�n representada en la figura, acerca de trayectos a�reos,
mediante un conjunto de hechos no ordenados. Utiliza una �nica plantilla.

(deftemplate aeropuertos
	(slot origen)
	(slot destino)
)

(deffacts hechos
	(aeropuertos (origen lisboa)(destino paris))
	(aeropuertos (origen lisboa)(destino madrid))
	(aeropuertos (origen paris)(destino roma))
	(aeropuertos (origen estocolmo)(destino paris))
	(aeropuertos (origen frankfurt)(destino estocolmo))
	(aeropuertos (origen roma)(destino lisboa))
	(aeropuertos (origen roma)(destino madrid))
)