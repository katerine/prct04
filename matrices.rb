#!/usr/bin/ruby
a = [[1,3,2],[1,0,0],[1,2,2]]		#matriz a
b = [[0,0,5],[7,5,0],[2,1,1]]		#matriz b
c = Array.new				#matriz donde guardaremos a+b
d = Array.new				#matriz donde guardaremos a*b
ma, na = a.size, a[1].size		#m: filas, n: columnas para matriz c
mb, nb = b.size, b[1].size
#procedemos a crear la matriz c rellenandola con ceros
for i in 0...ma do 			#iterador sobre filas 
   c[i] = Array.new			#la 2da dimension (columnas) de c
   for j in 0...na do			#iterador sobre columnas
      c[i][j] = 0			#las iniciamos en 0
   end
end
#procedemos a sumar las matrices
for i in 0...ma do			#volvemos a iterar sobre las filas
   for j in 0...na do			#por cada fila, iteramos columnas
      c[i][j] = a[i][j] + b[i][j]	#y calculamos la suma
   end
end
#procedemos a crear la matriz d rellenandola con ceros
for i in 0...ma do 			#iterador sobre filas 
   d[i] = Array.new			#la 2da dimension (columnas) de d
   for j in 0...nb do			#iterador sobre columnas
      d[i][j] = 0			#las iniciamos en 0
   end
end
#procedemos a multiplicar las matrices
for i in 0...ma do			#volvemos a iterar sobre las filas
   for j in 0...nb do			#por cada fila, iteramos columnas
      for k in 0...mb do		#por cada elemento de la columna iteramos la fila de la otra matriz
        d[i][j] += a[i][k] * b[k][j]	#y calculamos la multiplicacion
      end
   end
end
#procedemos a mostrar la matriz resultado de a+b
puts "\nmatriz resultado suma"
puts "\n"
c.each do |fila|			#por cada fila
   puts fila.join(" ")			#imprime el resultado
end
#procedemos a mostrar la matriz resultado de a*b
puts "\nmatriz resultado multiplicacion"
puts "\n"
d.each do |fila|			#por cada fila
   puts fila.join(" ")			#imprime el resultado
end
