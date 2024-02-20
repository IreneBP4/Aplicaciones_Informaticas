#1
library(readxl)
datos <- read_excel(spearheads_1_)

#2
names(spearheads_1_)[names(spearheads_1_) == "Mat"] <- "Materiales"
names(spearheads_1_)[names(spearheads_1_) == "Con"] <- "Contexto"
names(spearheads_1_)[names(spearheads_1_) == "Loo"] <- "Loop"
names(spearheads_1_)[names(spearheads_1_) == "Peg"] <- "Remache"
names(spearheads_1_)[names(spearheads_1_) == "Cond"] <- "Conservacion"
names(spearheads_1_)[names(spearheads_1_) == "Date"] <- "Fecha"
names(spearheads_1_)[names(spearheads_1_) == "Maxle"] <- "Longitud_max"
names(spearheads_1_)[names(spearheads_1_) == "Maxwi"] <- "Longitud_encaje"
names(spearheads_1_)[names(spearheads_1_) == "Upsoc"] <- "Ancho_encaje"
names(spearheads_1_)[names(spearheads_1_) == "Maxwit"] <- "Ancho_max_encajes"
names(spearheads_1_)[names(spearheads_1_) == "Weight"] <- "Peso"

#3
spearheads_1_$Contexto_etiquetado <- factor(
  spearheads_1_$Contexto,
  labels = c("S/C", "Habitacional", "Funerario"))
print(spearheads_1_)


spearheads_1_$Conservacion_etiquetada <- factor(
  spearheads_1_$Conservacion,
  labels = c("Excelente", "Bueno", "Regular", "Malo"))
print(spearheads_1_)

spearheads_1_$Remache_etiquetado <- factor(
  spearheads_1_$Remache,
  levels = c(1, 2),
  labels = c("Si", "No"))
print(spearheads_1_)

spearheads_1_$Materiales_etiquetado <- factor(
  spearheads_1_$Materiales,
  levels = c(1, 2),
  labels = c("Bronce", "Hierro"))
print(spearheads_1_)


#4
tabla_materiales <- table(spearheads_1_$Materiales)
View(tabla_materiales)
tabla_contexto <- table(spearheads_1_$Contexto)
View(tabla_contexto)
tabla_conservacion <- table(spearheads_1_$Conservacion)
View(tabla_conservacion)


#5
tabla_contexto <- xtabs(~ Materiales + Contexto, spearheads_1_)
tabla_conservacion <- xtabs(~ Materiales + Conservacion, spearheads_1_)

print("Tabla cruzada de Materiales sumadas sobre Contexto:")
print(tabla_contexto)
View(tabla_contexto)
print("Tabla cruzada de Materiales sumadas sobre Conservación:")
print(tabla_conservacion)
View(tabla_conservacion)

#6
tabla_porcentaje_materiales <- prop.table(table(datos$Materiales)) * 100
tabla_porcentaje_contexto <- prop.table(table(datos$Contexto)) * 100
tabla_porcentaje_conservacion <- prop.table(table(datos$Conservacion)) * 100

print("Tabla de porcentaje de la variable Materiales:")
print(tabla_porcentaje_materiales)
View(tabla_porcentaje_materiales)
print("Tabla de porcentaje de la variable Contexto:")
print(tabla_porcentaje_contexto)
View(tabla_porcentaje_contexto)
print("Tabla de porcentaje de la variable Conservación:")
print(tabla_porcentaje_conservacion)
View(tabla_porcentaje_conservacion)


#7
tabla_cruzada_contexto <- xtabs(~ Materiales + Contexto, spearheads_1_)
tabla_cruzada_conservacion <- xtabs(~ Materiales + Conservacion, spearheads_1_)

porcentaje_contexto <- prop.table(tabla_cruzada_contexto, margin = 2) * 100
porcentaje_conservacion <- prop.table(tabla_cruzada_conservacion, margin = 2) * 100

print("Tabla de porcentaje de Materiales sumadas sobre Contexto:")
print(porcentaje_contexto)
View(porcentaje_contexto)
print("Tabla de porcentaje de Materiales sumadas sobre Conservacion:")
print(porcentaje_conservacion)
View(porcentaje_conservacion)


#8
frecuencia_contexto <- table(spearheads_1_$Contexto)
frecuencia_conservacion <- table(spearheads_1_$Conservacion)

barplot(frecuencia_contexto, main = "Frecuencia de Contexto", xlab = "Contexto", ylab = "Frecuencia")
barplot(frecuencia_conservacion, main = "Frecuencia de Conservación", xlab = "Conservación", ylab = "Frecuencia")


#9
frecuencia_materiales <- table(spearheads_1_$Materiales)
frecuencia_remache <- table(spearheads_1_$Remache)

barplot(frecuencia_materiales, horiz = TRUE, main = "Frecuencia de Materiales", xlab = "Frecuencia", ylab = "Materiales")
barplot(frecuencia_remache, horiz = TRUE, main = "Frecuencia de Remache", xlab = "Frecuencia", ylab = "Remache")


#10
frecuencia <- table(spearheads_1_$Materiales, spearheads_1_$Conservacion)
barplot(frecuencia, beside = TRUE, main = "Frecuencia de Conservación por Material", 
        xlab = "Conservación", ylab = "Frecuencia", 
        legend = rownames(frecuencia), args.legend = list(x = "topright"))

#11
frecuencia <- table(spearheads_1_$Conservacion)
porcentaje <- round(prop.table(frecuencia) * 100, digits = 1)
pie(frecuencia, main = "Gráfico de Sectores para Conservación", labels = paste(names(frecuencia), "\n", porcentaje, "%"), cex = 0.8)

#12
variables_continuas <- sapply(spearheads_1_, is.numeric)
spear_continuas <- spearheads_1_[, variables_continuas]
par(mfrow=c(3,1)) 
for (col in colnames(spear_continuas)) {
  hist(spear_continuas[[col]], main=col, xlab=col, prob=TRUE)
  lines(density(spear_continuas[[col]]), col="blue")}


