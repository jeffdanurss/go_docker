# Etapa 1: Construcción
FROM golang:1.20-alpine AS builder

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo go.mod y go.sum para manejar dependencias (aunque no son estrictamente necesarios en este caso)
COPY go.mod go.sum ./

# Descarga las dependencias (si las hubiera)
RUN go mod tidy

# Copia el código fuente al contenedor
COPY . .

# Compila el proyecto Go y genera el binario "server"
RUN go build -o server .

# Etapa 2: Imagen de ejecución
FROM alpine:latest

# Instala dependencias necesarias para ejecutar el binario
RUN apk --no-cache add ca-certificates

# Copia el binario desde la etapa de construcción
COPY --from=builder /app/server /usr/local/bin/server

# Expone el puerto que usa la aplicación
EXPOSE 8081

# Comando por defecto para ejecutar el servidor al iniciar el contenedor
CMD ["server"]

