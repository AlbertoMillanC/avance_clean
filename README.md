# Proyecto de Gestión de Obras

Este es un proyecto para gestión de obras que incluye un backend en Node.js y un frontend en React.

## Arquitectura del Proyecto

Fecha: 2024-05-29
Elaborado por: Alberto Millan

El proyecto sigue una **Arquitectura Hexagonal** (también conocida como Arquitectura de Puertos y Adaptadores), que se caracteriza por:

### Estructura Principal
- **Dominio**: Contiene la lógica de negocio central (hexágono interno)
- **Backend**: Actúa como adaptador primario (puerto de entrada)
- **Infraestructura**: Contiene adaptadores secundarios (puertos de salida)

### Características de la Arquitectura
- Separación clara de responsabilidades
- Aislamiento del dominio de la infraestructura
- Adaptadores separados para entrada y salida
- Lógica de negocio centralizada

### Componentes Principales
- `dominio/`: Lógica de negocio central y modelos de dominio
- `backend/`: API y servicios de aplicación
- `frontend/`: Interfaz de usuario en React
- `infrastructure/`: Configuración de servicios externos y adaptadores
- `scripts/`: Automatización y despliegue
- `templates/`: Plantillas base
- `docs/`: Documentación del proyecto

## Opciones para ejecutar el proyecto

### Opción 1: Usar Docker Compose (recomendado si tienes Docker)

Si tienes Docker y Docker Compose instalados, puedes ejecutar la aplicación completa con:

```bash
docker compose up
```

Esto iniciará tres servicios:
- MongoDB en el puerto 27017
- Backend en el puerto 3000
- Frontend en el puerto 80

### Opción 2: Ejecutar cada componente por separado

Si prefieres ejecutar cada parte independientemente:

#### Backend

```bash
cd backend
pnpm install
pnpm start
```

El backend se ejecutará en http://localhost:3000

#### Frontend

```bash
cd frontend
pnpm install
pnpm start
```

El frontend se ejecutará en http://localhost:3000 (o en otro puerto si 3000 está ocupado).

### Opción 3: Usar scripts auxiliares

Se incluyen scripts para facilitar la ejecución:

```bash
# Para iniciar el backend
bash scripts/start-backend.sh

# Para iniciar el frontend
bash scripts/start-frontend.sh
```

## Verificación de archivos

Para verificar que todos los archivos necesarios existen antes de ejecutar:

```bash
bash scripts/verify.sh
```

## Nota importante

El sistema requiere Node.js y npm instalados para las opciones 2 y 3. Para la opción 1, solo necesitas Docker y Docker Compose.
# avance_clean
