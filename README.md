#  Proyecto Integrador de Base de Datos y Calidad de Datos

Este repositorio consolida el trabajo desarrollado en el proyecto de integración de bases de datos, cubriendo el diseño, la implementación, las consultas, y las cruciales pruebas de verificación de **calidad de datos**. El objetivo principal fue unificar todas las actividades del proyecto en una única estructura de repositorio Git, asegurando la trazabilidad y la integridad de la información.

---

##  Objetivo del Proyecto

El proyecto buscó unificar, documentar y validar el ciclo completo de una solución de base de datos, desde el diseño conceptual hasta la aplicación de técnicas de aseguramiento de la calidad de los datos.

---

##  Estructura del Repositorio

El repositorio está organizado en tres carpetas principales para agrupar claramente los entregables por su función dentro del proyecto:

| Carpeta | Contenido Principal |
| :--- | :--- |
| **`01_Documentacion_y_Diseno`** | Documentos de las actividades (Actividad1, Actividad2, etc.), diagramas E-R, informes y cualquier archivo de documentación. |
| **`02_Implementacion_SQL`** | Scripts SQL para la creación de la base de datos, el Data Warehouse (staging y Data Mart) y consultas generales. |
| **`03_Pruebas_Calidad_Datos`** | Scripts SQL específicos para la validación de la calidad de los datos (duplicados, nulos, consistencia, integridad referencial). |

---

##  Detalle de Pruebas de Calidad

La carpeta **`03_Pruebas_Calidad_Datos`** contiene la evidencia del proceso de verificación de la calidad, con scripts enfocados en validar:

* **Integridad Referencial:** (`claves foraneas huerfanas.sql`)
* **Valores Ausentes:** (`valores nulos.sql`)
* **Consistencia de Fechas:** (`correspondencia de fechas.sql`, `fechas fuera de rango.sql`)
* **Precisión y Duplicidad:** (`verificar duplicados.sql`, `ventas cero o negativas.sql`)

---

##  Cómo Empezar

1.  **Clonar el Repositorio:**
    ```bash
    git clone [URL_DEL_REPOSITORIO]
    ```
2.  **Implementar la DB:**
    * Ejecutar los scripts de estructura de la carpeta `02_Implementacion_SQL`.
3.  **Validar los Datos:**
    * Ejecutar los scripts de la carpeta `03_Pruebas_Calidad_Datos` para verificar la calidad de los datos cargados.

---

**Autor:** johan orrego, jorge jaramillo.
**Fecha de Última Actualización:** 04/10/25
