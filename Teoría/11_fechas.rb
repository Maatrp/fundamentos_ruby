# DATE para trabajar con fechas sin horas
require 'date' # Imprescindible

date1 = Date.new(2024, 11, 8)
puts date1.year  # => 2024
puts date1.month # => 11
puts date1.day   # => 8

# Obtener la fecha actual
today = Date.today 
puts "today: #{today}"

# Calcular el tiempo entre dos fechas
date2 = Date.new(2024, 12, 8)
difference_date = date2 - date1
puts "diferencia en dias: #{difference_date}"

# Sumar o restar días
new_date = date1 + 10  # Suma 10 días
puts "Nueva fecha: #{new_date}"


# TIME fechas: año, mes, día, hora, minuto, segundo
actual_date = Time.now
puts "Fecha y hora actual: #{actual_date}"

# Convertir Time a Date
time_date = actual_date.to_date

# Crear un objeto Time con un año, mes, día, hora, minuto y segundo específicos
time1 = Time.new(2024, 11, 8, 12, 30, 0)
puts "Creación de fecha y hora actual: #{time1}"
puts time1.year   # => 2024
puts time1.month  # => 11
puts time1.day    # => 8
puts time1.hour   # => 12
puts time1.min    # => 30
puts time1.sec    # => 0

# Calcular la diferencia entre dos fechas en segundos
time2 = Time.new(2024, 11, 8, 14, 30, 0)
difference_time = time2 - time1
puts "diferencia en segundos: #{difference_time}"

# Sumar o restar tiempo
new_time = time1 + 800  # Suma 800 segundos
puts "Nueva fecha: #{new_time}"


=begin
  Convertir Date y Time a String
  %Y: Año con 4 dígitos (2024).
  %m: Mes con 2 dígitos (11).
  %d: Día del mes con 2 dígitos (08).
  %B: Nombre completo del mes (November).
  %H: Hora en formato 24 horas (12).
  %M: Minutos (30).
  %S: Segundos (00).
  %I: Hora en formato de 12 horas (12).
  %p: AM o PM.
=end
# Date a String
puts "Formato fecha: #{date1.strftime("%Y-%m-%d")}"  # Salida: "2024-11-08"
puts "Formato fecha: #{date1.strftime("%B %d, %Y")}"  # Salida: "November 08, 2024"

# Time a String
puts "Formato tiempo: #{time1.strftime("%Y-%m-%d %H:%M:%S")}"  # Salida: "2024-11-08 12:30:00"
puts "Formato tiempo: #{time1.strftime("%H:%M:%S")}"  # Salida: "12:30:00"
puts "Formato tiempo: #{time1.strftime("%I:%M:%S %p")}"  # Salida: "12:30:00 PM"