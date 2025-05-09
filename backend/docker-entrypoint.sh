#!/bin/sh
set -e

# Procesar las variables de entorno que contienen comandos $(cat...)
if [ -n "$MONGODB_URI" ]; then
  # Reemplazar referencias a secretos con su contenido real
  if echo "$MONGODB_URI" | grep -q "cat /run/secrets"; then
    USERNAME=$(cat /run/secrets/mongodb_username)
    PASSWORD=$(cat /run/secrets/mongodb_password)
    MONGODB_URI=$(echo $MONGODB_URI | sed "s|\$(cat /run/secrets/mongodb_username)|$USERNAME|g" | sed "s|\$(cat /run/secrets/mongodb_password)|$PASSWORD|g")
    export MONGODB_URI
  fi
fi

# Ejecutar el comando original
exec "$@" 