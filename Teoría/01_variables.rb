#Variables y tipos básico 
name = “Marta” 	# String  (“Para interpolación de datos #{name}” ‘No interpolación’) 
age = 31 		# Integer 
height = 1.62 		# Float  
is_worker = true 	# Boolean (booleano)

# Con .to_ podemos convertir un tipo a otro tipo. Ej: age.to_f 	

#Variables locales, globales y constantes
Local: name 
Global: $rol 
Instance: @name 
Class: @@is_worker 
Constants and Class Names: ID (Constantes en mayúsculas; nombres de clases snake case) 