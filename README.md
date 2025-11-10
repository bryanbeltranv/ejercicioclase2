# Hola Mundo - Docker Flask Applications

Este proyecto es una aplicación simple de Flask dockerizada que demuestra el uso de GitHub Actions para automatizar el proceso de construcción de imágenes Docker.

## Descripción

Aplicación web básica desarrollada con Flask que muestra "Hola Mundo" cuando se accede a la raíz. El proyecto incluye un pipeline de CI/CD implementado con GitHub Actions que construye automáticamente la imagen Docker cuando se hacen push a la rama main.

## Estructura del Proyecto

```
.
├── .github/
│   └── workflows/
│       └── main.yml          # Workflow de GitHub Actions
├── app.py                     # Aplicación Flask
├── Dockerfile                 # Configuración de Docker
├── requirements.txt           # Dependencias de Python
└── README.md                  # Este archivo
```

## Características

- **Aplicación Flask**: Servidor web simple que responde en el puerto 5000
- **Dockerizado**: Imagen Docker basada en Python 3.9 slim
- **CI/CD**: Pipeline automatizado con GitHub Actions
- **Workflow Reutilizable**: Utiliza un workflow reutilizable de `apbusinessit/devops-pipelines`

## Endpoints

- `GET /` - Retorna "Hola Mundo"
- `GET /health` - Endpoint de health check que retorna el estado de la aplicación

## Ejecución Local

### Con Docker

```bash
# Construir la imagen
docker build -t hola-mundo-clase567 .

# Ejecutar el contenedor
docker run -p 5000:5000 hola-mundo-clase567
```

### Sin Docker

```bash
# Instalar dependencias
pip install -r requirements.txt

# Ejecutar la aplicación
python app.py
```

Accede a la aplicación en: http://localhost:5000

## GitHub Actions Workflow

El workflow CI-DockerBuild se ejecuta automáticamente cuando se hace push a la rama `main`. Utiliza un workflow reutilizable que:

1. Construye la imagen Docker
2. La etiqueta con el nombre `hola-mundo-clase567`
3. Realiza el deploy según la configuración del workflow reutilizable

## Requisitos

- Python 3.9+
- Docker (para ejecución en contenedor)
- Flask 3.0.0

## Autor

Proyecto de demostración para GitHub Actions con Docker
