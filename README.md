# CRUD de Productos - Práctica CI/CD

Este es un proyecto básico en Python que implementa un CRUD de productos almacenando la información en un archivo JSON (`products.json`). El objetivo principal es demostrar la configuración de un pipeline CI/CD utilizando GitHub Actions.

## ¿Cómo funciona el CRUD?

El proyecto de Python consta de las siguientes funciones principales en `crud.py`:
- `create_product(product)`: Añade un nuevo producto al JSON.
- `read_products()`: Carga y retorna todos los productos leídos del archivo.
- `update_product(product_id, new_data)`: Actualiza los datos de un producto existente.
- `delete_product(product_id)`: Elimina un producto según su identificador.

## Pipeline CI/CD

Se utiliza **GitHub Actions** (`.github/workflows/ci.yml`) para la integración continua. El pipeline está configurado para ejecutarse ante eventos de `push` o `pull_request` en la rama `main` y consta de los siguientes pasos:

1. **Checkout del código**: Obtiene el repositorio.
2. **Configuración de Python**: Instala Python 3.10.
3. **Instalación de dependencias**: Instala `pytest` y `flake8` desde `requirements.txt`.
4. **Linting (flake8)**: Verifica que el código cumpla con los estándares PEP-8.
5. **Pruebas (pytest)**: Ejecuta las pruebas unitarias que se encuentran en el directorio `tests/` para verificar la funcionalidad del CRUD.
6. **(Opcional) Docker Build y Deploy**: Construye la imagen Docker del proyecto y lo despliega dentro de un contenedor simulado en el entorno de GitHub Runners.
