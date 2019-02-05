scribe una plantilla que permita representar informaci�n sobre el juego de los
barquitos, en el que se colocan barcos sobre una cuadr�cula, indicando las
posiciones mediante filas (letras) y columnas (n�meros). Para cada barco hay
que indicar:
� Las casillas que ocupa, que pueden ser como m�ximo 4.
� El tipo de barco, que s�lo puede ser uno de los siguientes: patrullera,
dragaminas, fragata, acorazado, destructor, portaaviones.
� El estado en que se encuentra el barco, que s�lo puede ser uno de los
siguientes: indemne, tocado, hundido.

Adem�s, deben contemplarse las siguientes restricciones:
� El usuario debe dar siempre valor a los atributos correspondientes a
casillas ocupadas y tipo de barco.
� El valor por defecto para el estado del barco es indemne.

(deftemplate barco
	(slot ocupa (type INTEGER)(range 1 4)(default ?NONE))
	(slot tipo (type SYMBOL)(allowed-values patrullera dragaminas fragata acorazado destructor portaviones))
	(slot estado (type SYMBOL)(allowed-values indemne tocado hundido)(default indemne))
)