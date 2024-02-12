#1
edades_descubrimientos <-c(1992, 1995, 1999, 2005, 2012)
mean(edades_descubrimientos)

#2
cantidad_artefactos <-c(20, 50, 66, 31, 67)
sum(cantidad_artefactos)

#3
profundidad_hallazgos <-c(13, 5, 7, 8 , 9)
which.max(profundidad_hallazgos)

#4
materiales_encontrados <-c("oseo", "ceramica", "litico")
length(materiales_encontrados)

#5
años_excavaciones <-c(2001, 2003, 2006, 2012)
length(años_excavaciones)

#6
Ejercicio6 <-matrix(c(20, 40, 3, 15),
                    ncol = 5, nrow = 5, byrow = F)
colnames (Ejercicio6) <- c("Tejada la Vieja", "Tejada la Nueva", "Castilleja del Campo", "Linares", "San Juan del Campo")
row.names (Ejercicio6) <- c(2001, 2003, 2007, 2010, 2016)
print(Ejercicio6)
rowSums(Ejercicio6)
which.max(rowSums(Ejercicio6))

#7
Ejercicio7 <-matrix(c(1290, 1300, 1400, 1500),
ncol = 4, nrow = 4, byrow = F)
colnames (Ejercicio7) <-c("Andalucia", "Murcia", "Extremadura", "Galicia")
row.names (Ejercicio7) <-c("Nucleo silex", "Candil", "Marfil", "Ambar")


#8
Ejercicio8 <-matrix(c())

