#!/bin/bash

echo "Iniciando el frontend de manera independiente..."

# Cambiar al directorio del frontend
cd frontend

# Instalar dependencias
echo "Instalando dependencias..."
npm install

# Iniciar el servidor de desarrollo
echo "Iniciando el servidor de desarrollo..."
npm start

# En caso de error
echo "Si el servidor falló al iniciar, prueba ejecutar manualmente:"
echo "cd frontend"
echo "npm install"
echo "npm start" 