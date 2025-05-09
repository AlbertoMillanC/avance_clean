#!/bin/bash

echo "Iniciando el backend de manera independiente..."

# Cambiar al directorio del backend
cd backend

# Instalar dependencias
echo "Instalando dependencias..."
pnpm install

# Iniciar el servidor
echo "Iniciando el servidor..."
pnpm start

# En caso de error
echo "Si el servidor falló al iniciar, prueba ejecutar 'pnpm install' y luego 'pnpm start' directamente en la carpeta 'backend'"

node --version 