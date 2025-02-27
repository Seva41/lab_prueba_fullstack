# Lab Prueba Fullstack - Pokémon TCG API y Frontend

Este proyecto es una prueba técnica fullstack para Microsystem que integra una API REST, un frontend moderno y una base de datos PostgreSQL, orquestados en conjunto mediante Docker Compose. Se implementa un backend en Flask para servir datos de sets y cartas del juego de cartas Pokémon TCG, y un frontend en Next.js que permite visualizar los sets, listar sus cartas y ver el detalle individual de cada carta, incluyendo vistas de mercado para cada una.

## Contenido
 - Características
 - Tecnologías Utilizadas
 - Estructura del Proyecto
 - Configuración y Uso
 - Despliegue con Docker
 - Notas Adicionales

## Características
 - API REST en Flask: Proporciona endpoints para listar sets, cartas por set y detalle individual de una carta (incluyendo información de mercado).
 - Frontend en Next.js: Interfaz moderna que permite:
 - Visualizar la lista de sets.
 - Ver cartas de cada set.
 - Visualizar el detalle de cada carta con vista individual y navegación entre cartas.
 - Base de Datos PostgreSQL: Se restaura mediante un backup (database_backup.sql).
 - Orquestación con Docker Compose: Todos los componentes (base de datos, backend y frontend) se despliegan utilizando Docker.

## Tecnologías Utilizadas
 - Backend: Python, Flask, Flask-CORS, SQLAlchemy.
 - Frontend: Next.js, React.
 - Base de Datos: PostgreSQL.
 - Contenedores: Docker y Docker Compose.
 - API REST: Endpoints para sets, cartas y detalle de cartas.
 - Docker para crear entornos aislados.

## Estructura del Proyecto
```
lab_prueba_fullstack/
├── backend/
│   ├── app.py             # Aplicación Flask con los endpoints REST
│   ├── models.py          # Modelos SQLAlchemy (Set, Card, Image, Market)
│   ├── config.py          # Configuración de conexión a PostgreSQL
│   ├── requirements.txt   # Dependencias de Python
│   └── Dockerfile         # Dockerfile para construir el backend
│
├── frontend/
│   ├── pages/
│   │   ├── _app.js        # Componente raíz de Next.js (importa globals.css, footer y header)
│   │   ├── index.js       # Vista principal (listado de sets)
│   │   ├── sets/
│   │   │   └── [id].js    # Vista de cartas de un set
│   │   └── cards/
│   │       └── [id].js    # Vista de detalle de una carta (navegación entre cartas)
│   ├── components/
│   │   ├── Header.js      # Encabezado con título
│   │   └── Footer.js      # Footer con créditos y enlace a repositorio
│   ├── styles/
│   │   └── globals.css    # Estilos globales para toda la aplicación
│   ├── package.json       # Dependencias y scripts del frontend
│   └── Dockerfile         # Dockerfile para construir el frontend
│
├── database_backup.sql    # Backup de la base de datos PostgreSQL
└── docker-compose.yml     # Orquestación de contenedores (db, backend, frontend)
```

## Configuración y Uso

### Desarrollo Local
	1.	Clona el repositorio:
```bash
git clone https://github.com/Seva41/lab_prueba_fullstack.git
cd lab_prueba_fullstack
```

	2.	Configura las variables de entorno (si es necesario):
Crea un archivo .env.local en la carpeta frontend/ con:
```bash
NEXT_PUBLIC_API_URL=http://localhost:5001
```

	3.	Levanta el stack de Docker:
```bash
docker-compose up --build
```

	4.	Accede a la aplicación:
 - Frontend: http://localhost:3000
 - Backend: http://localhost:5001

### Pruebas y Uso
 - *Endpoints de API REST (Backend):*
 - GET /sets: Lista todos los sets.
 - GET /sets/:id/cards: Lista las cartas de un set.
 - GET /cards/:id: Devuelve la información detallada de una carta (incluye imágenes y datos de mercado).
 - *Frontend:*
 - Visualización de sets y cartas.
 - Vista individual de carta con navegación entre cartas.

### Despliegue con Docker

El proyecto se despliega mediante Docker Compose, que incluye tres servicios:
 - db: Usa la imagen oficial de PostgreSQL. Se restaura la base de datos a partir del archivo database_backup.sql (esto ocurre solo en el primer arranque, cuando el volumen está vacío).
 - backend: Construido a partir de backend/Dockerfile, ejecuta la API REST en Flask.
 - frontend: Construido a partir de frontend/Dockerfile, ejecuta la aplicación Next.js.

El archivo docker-compose.yml define la red y los volúmenes para que los contenedores se comuniquen entre sí.

Ejemplo de docker-compose.yml:
```yml
version: '3.8'
services:
  db:
    image: postgres:14
    container_name: pokemon_db
    environment:
      - POSTGRES_DB=pokemon_tcg
      - POSTGRES_USER=postgres
      - POSTGRES_PASSWORD=postgres
    volumes:
      - ./database_backup.sql:/docker-entrypoint-initdb.d/database_backup.sql
      - postgres_data:/var/lib/postgresql/data
    ports:
      - "5432:5432"

  backend:
    build: ./backend
    container_name: pokemon_backend
    depends_on:
      - db
    environment:
      - DB_HOST=db
      - DB_PORT=5432
      - DB_NAME=pokemon_tcg
      - DB_USER=postgres
      - DB_PASS=postgres
    ports:
      - "5001:5001"

  frontend:
    build: ./frontend
    container_name: pokemon_frontend
    depends_on:
      - backend
    ports:
      - "3000:3000"

volumes:
  postgres_data:
```

## Notas Adicionales
 - Persistencia de Datos:
El volumen postgres_data asegura que los datos de la base de datos persistan entre reinicios. Si se necesita volver a ejecutar el backup, elimina este volumen.
 - Despliegue en la Nube:
Si se decide desplegar en un servicio gratuito (como AWS, Oracle Cloud, etc.), se debe recordar configurar los grupos de seguridad o firewall para exponer los puertos necesarios (por ejemplo, 3000, 5001 y 5432, según corresponda).
 - API REST y Rutas:
La API REST en Flask sigue convenciones estándar, lo que facilita la integración con el frontend. Además, se ha implementado una vista individual de carta y navegación entre cartas.