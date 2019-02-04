Define las plantillas necesarias para almacenar la información relativa a los
coches disponibles en un concesionario de coches y a las ventas que hace cada
vendedor. El concesionario (de la casa Renault) dispone de los siguientes coches
y ha realizado dos ventas:
• 1 Clio 1.600 gasolina 3 puertas color azul.
• 1 Clio diesel 1.800 5 puertas color blanco.
• 1 Megane diesel 1.800 5 puertas color dorado.
• 2 Megane gasolina 1.600 5 puertas color gris.
• 1 Laguna gasolina 2.000 5 puertas color negro.
• Juan Pérez vendió un Megane el 10/10/2003 al cliente Esteban Losada.
• Ana Ballester vendió un Laguna el 13/10/2003 al cliente Juan Cano.

(deftemplate coche
	(slot cantidad)
	(slot modelo)
	(slot combustible)
	(slot cilindrada)
	(slot puertas)
	(slot color)
)

(deftemplate venta
	(slot vendedor)
	(slot modelo)
	(slot fecha)
	(slot cliente)
)

(deffacts flota
	(coche (cantidad 1)(modelo clio)(combustible gasolina)(cilindrada 1600)(puertas 3)(color azul))
	(coche (cantidad 1)(modelo clio)(combustible diesel)(cilindrada 1800)(puertas 5)(color blanco))
	(coche (cantidad 1)(modelo megane)(combustible diesel)(cilindrada 1800)(puertas 5)(color dorado))
	(coche (cantidad 2)(modelo megane)(combustible gasolina)(cilindrada 1600)(puertas 5)(color gris)) 
	(coche (cantidad 1)(modelo laguna)(combustible gasolina)(cilindrada 2000)(puertas 5)(color negro))
)

(deffacts ventas
	(venta(vendedor "Juan Perez")(modelo megane)(fecha 10/10/2003)(cliente "Estaban Losada"))
	(venta(vendedor "Ana Ballester")(modelo Laguna)(fecha 13/10/2003)(cliente "Juan Cano"))
)