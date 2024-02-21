#1
num_registros <- 200
yacimiento <- sample(1:10, num_registros, replace = TRUE)
tipo_artefacto <- sample(c('Pottery', 'Tools', 'Jewelry'), num_registros, replace = TRUE)
numero_artefactos <- sample(1:1000, num_registros, replace = TRUE)
contexto <- sample(c('Habitacional', 'Funerario', 'Otros'), num_registros, replace = TRUE)
latitud <- runif(num_registros, min = 0, max = 90)
longitud <- runif(num_registros, min = -180, max = 180)
df <- data.frame(Yacimiento = yacimiento,
                 `Tipo de artefacto` = tipo_artefacto,
                 `Número de artefactos` = numero_artefactos,
                 Contexto = contexto,
                 Latitud = latitud,
                 Longitud = longitud)

head(df)
View(df)

#2
media <- mean(df$Número.de.artefactos)
cuartiles <- quantile(df$Número.de.artefactos)
print(paste("Media:", media))
print("Cuartiles:")
print(cuartiles)

#3
hist(df$Número.de.artefactos, 
     main = "Histograma del número de artefactos",
     xlab = "Número de artefactos",
     ylab = "Frecuencia",
     col = "skyblue",
     border = "black")

#4 
boxplot(df$Número.de.artefactos,
        main = "Gráfico de caja y bigotes del número de artefactos",
        ylab = "Número de artefactos",
        col = "skyblue",
        border = "black")

#5
media_artefactos_por_yacimiento <- aggregate(df$Número.de.artefactos, 
                                             by = list(Yacimiento = df$Yacimiento), 
                                             FUN = mean)
colnames(media_artefactos_por_yacimiento) <- c("Yacimiento", "Número medio de artefactos")
barplot(media_artefactos_por_yacimiento$`Número medio de artefactos`,
        names.arg = media_artefactos_por_yacimiento$Yacimiento,
        main = "Número medio de artefactos por yacimiento",
        xlab = "Yacimiento",
        ylab = "Número medio de artefactos",
        col = "skyblue",
        border = "black",
        ylim = c(0, max(media_artefactos_por_yacimiento$`Número medio de artefactos`)*1.2))

#6
ggplot(df, aes(x = longitud, y = latitud)) +
  geom_density_2d_filled() +
  labs(title = 'Artifact Density Heatmap', 
       x = x,
       y = y)
         

#7
total_artefactos_por_yacimiento <- aggregate(Número.de.artefactos~ Yacimiento, data = df, FUN = sum)
colnames(total_artefactos_por_yacimiento) <- c("Yacimiento", "Número total de artefactos")
print(total_artefactos_por_yacimiento)
View(total_artefactos_por_yacimiento)

#8
mediana_artefactos_por_yacimiento <- aggregate(Número.de.artefactos ~ Yacimiento, data = df, FUN = median)
colnames(mediana_artefactos_por_yacimiento) <- c("Yacimiento", "Mediana de artefactos")
print(mediana_artefactos_por_yacimiento)

#9
desviacion_estandar_artefactos_por_yacimiento <- aggregate(Número.de.artefactos ~ Yacimiento, data = df, FUN = sd)
colnames(desviacion_estandar_artefactos_por_yacimiento) <- c("Yacimiento", "Desviación estándar de artefactos")
print(desviacion_estandar_artefactos_por_yacimiento)

#10
suma_artefactos_por_yacimiento <- aggregate(Número.de.artefactos ~ Yacimiento, data = df, FUN = sum)
yacimiento_max_artefactos <- suma_artefactos_por_yacimiento[which.max(suma_artefactos_por_yacimiento$Número.de.artefactos), ]
print(yacimiento_max_artefactos)

#11
resumen_artefactos_por_yacimiento <- aggregate(Número.de.artefactos ~ Yacimiento, data = df, FUN = function(x) c(media = mean(x), mediana = median(x), desviacion_estandar = sd(x)))
print(resumen_artefactos_por_yacimiento)
View(resumen_artefactos_por_yacimiento)

#12
boxplot(Número.de.artefactos ~ Yacimiento, data = df,
        main = "Distribución de artefactos en los yacimientos",
        xlab = "Yacimiento",
        ylab = "Número de artefactos",
        col = "skyblue",
        border = "black")
par(las = 2)








