#!/bin/bash

echo "Verificando archivos clave..."

# Verificar frontend
if [ -f "frontend/public/index.html" ]; then
  echo "✅ frontend/public/index.html existe"
else
  echo "❌ frontend/public/index.html no existe"
  exit 1
fi

if [ -f "frontend/src/index.js" ]; then
  echo "✅ frontend/src/index.js existe"
else
  echo "❌ frontend/src/index.js no existe"
  exit 1
fi

if [ -f "frontend/src/App.js" ]; then
  echo "✅ frontend/src/App.js existe"
else
  echo "❌ frontend/src/App.js no existe"
  exit 1
fi

if [ -f "frontend/src/index.css" ]; then
  echo "✅ frontend/src/index.css existe"
else
  echo "❌ frontend/src/index.css no existe"
  exit 1
fi

# Verificar backend
if [ -f "backend/src/index.js" ]; then
  echo "✅ backend/src/index.js existe"
else
  echo "❌ backend/src/index.js no existe"
  exit 1
fi

echo "Todos los archivos clave existen."
echo "El proyecto está listo para construir y ejecutar con docker compose up."
echo "NOTA: Esto no garantiza que no haya otros errores en tiempo de ejecución." 