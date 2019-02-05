Un profesor hace 2 exámenes durante el curso a sus alumnos. Además, los
alumnos deben formar grupos para elaborar un trabajo que deberán exponer
durante el curso, trabajo que será evaluado también mediante una nota. Define
las plantillas necesarias para representar información sobre:
• Apellidos del alumno.
• Nombre del alumno.
• Cuáles son los miembros de cada grupo.
• Nota de cada uno de los exámenes, nota media de ambos y nota del
trabajo. Además, deben contemplarse las siguientes restricciones:
• El usuario debe dar siempre valor a los atributos correspondientes a
apellidos y nombre.
• Las notas deben tomar valores entre 0 y 10.
• Un grupo puede estar formado por un máximo de 4 personas.

(deftemplate ficha
	(slot nombre(type STRING)(default ?NONE))
	(multislot apellido(type STRING)(default ?NONE))
	(slot nota-examen1 (range 1 10))
	(slot nota-examen2 (range 1 10))
	(slot nota-media)
	(slot nota-trabajo)
)