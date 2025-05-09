# Seguridad del Proyecto Obras

## Manejo de Credenciales

Este proyecto utiliza Docker secrets para almacenar y gestionar credenciales sensibles, como las contraseñas de base de datos.

### Configuración de Secretos

Los secretos están almacenados en el directorio `secrets/` que está excluido del repositorio Git mediante `.gitignore`. Para configurar el proyecto, debes crear este directorio y los archivos de secretos necesarios:

```bash
mkdir -p secrets
```

#### Archivos de Secretos Requeridos

- `secrets/mongodb_username.txt`: Contiene el nombre de usuario para MongoDB
- `secrets/mongodb_password.txt`: Contiene la contraseña para MongoDB

### Cuando se Despliega en un Nuevo Entorno

Cuando se despliega el proyecto en un nuevo entorno, es necesario:

1. Crear el directorio `secrets/`
2. Crear los archivos de secretos mencionados anteriormente con las credenciales adecuadas
3. Ejecutar `docker compose up`

### Consideraciones de Seguridad

- No incluir nunca los archivos de secretos en el repositorio Git
- En entornos de producción, considerar el uso de servicios de gestión de secretos como Docker Swarm Secrets, Kubernetes Secrets o HashiCorp Vault
- Rotar las credenciales periódicamente
- Limitar el acceso a los archivos de secretos solo a usuarios autorizados

## Recomendaciones Adicionales

Para mejorar aún más la seguridad del proyecto:

1. Implementar HTTPS para todas las comunicaciones
2. Configurar firewalls para limitar el acceso a los puertos expuestos
3. Mantener todas las dependencias y imágenes base actualizadas
4. Ejecutar análisis de seguridad periódicos 