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
colMeans(Ejercicio7)
which.min(colMeans(Ejercicio7))
print(Ejercicio7)

#8
Ejercicio8 <-matrix(c(120, 140, 160, 180, 200)
nrow = 3, ncol = 3, 
byrow = F)
rownames(Ejercicio8) <-c("Paleolítico", "Neolítico", "Calcolítico")
colnames(Ejercicio8) <-c("Cerámica", "Lítico", "Cobre")
rowSums(Ejercicio8)
which.max(rowSums(Ejercicio8))
print(Ejercicio8)

#9
Ejercicio9 <- matrix(c(10, 15, 20, 25, 30, 35)
                     nrow = 3, ncol = 3,
                     byrow = F)
rownames(Ejercicio9) <- c("Cerro Macareno", "Setefilla", "San Isidoro del Campo")
colnames(Ejercicio9) <- c("Excavación 2016", "Excavación 2020", "Excavación 2023")
min(Ejercicio9)
print(Ejercicio9)

#10
Ejercicio10 <-matrix(c(10, 15, 20, 25)
nrow = 3, ncol = 3, 
byrow = F)
rownames(Ejercicio10)<- c("Paleolítico", "Neolítico", "Calcolítico")
colnames(Ejercicio10)<- c("lítico", "cobre", "oseo")
colSums(Ejercicio10)
print(Ejercicio10)

#11
registro_artefactos <- data.frame(
  sitio_arqueologico = c("setefilla","italica","carmona"),
  tipo_artefactos = c("vidrio","ceramica","adorno"),
  fecha_descubrimiento = c(2015,2020,2023),
  descripcion = c("unguentario","anfora","pendientes"))
print(registro_artefactos)
  
#12
excavaciones_equipo <-data.frame(
  equipo_arqueologico = c("tecnico","tecnico auxiliar","tecnico laboratorio"),
  sitio_arqueologico = c("Setefilla","Italica","Carmona"),
  fecha_inicio = c(2010,2012,2015),
  fecha_fin = c(2020,2021,2023))
print(excavaciones_equipo)
  
#13
datos_esqueletos <-data.frame(
  sitio_arqueológico = c("Setefilla", "Carmona", "Italica")
  edad_estimada = c(15, 25, 50)
  sexo = c("Mujer", "Hombre", "Indeterminado")
  caracteristica_especial = c("patologías", "signos de estres", "malformaciones"))
print(datos_esqueletos)

#14
ubicaciones_geograficas <-data.frame(
  sitio_arqueologico = c("Setefilla","Italica","Carmona"),
  latitud = c(20, 25, 30),
  longitud = c(60, 65, 70),
  altitud = c(150, 160, 170))
print(ubicaciones_geograficas)


