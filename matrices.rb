#!/usr/bin/ruby
a = [[1,3,2],[1,0,0],[1,2,2]]		#matriz a
b = [[0,0,5],[7,5,0],[2,1,1]]		#matriz b
c = Array.new				#matriz de filas c
m, n = a.size, a[1].size		#m: filas, n: columnas
for i in 0...m do 			#iterador sobre filas 
   c[i] = Array.new			#la 2da dimension (columnas) de c
   for j in 0...n do			#iterador sobre columnas
      c[i][j] = 0			#las iniciamos en 0
   end
end
for i in 0...m do			#volvemos a iterar sobre las filas
   for j in 0...n do			#por cada fila, iteramos columnas
      c[i][j] = a[i][j] + b[i][j]	#y calculamos la suma
   end
end
puts "\nmatriz resultado"
puts "\n"
c.each do |fila|			#por cada fila
   puts fila.join(" ")			#imprime el resultado
end

//
