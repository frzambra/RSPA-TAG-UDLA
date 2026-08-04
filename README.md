# TAG2027 — Relación Suelo Agua Planta

Materiales de enseñanza para la asignatura **TAG2027**, parte del programa **Técnico de Nivel Superior Agrícola** de la **Universidad de Las Américas (UDLA)**.

## Descripción del curso

El curso aborda las relaciones suelo-agua-planta-atmósfera y la gestión del riego agrícola. Se estructura en **6 unidades** que cubren desde las propiedades del agua y el suelo hasta las tecnologías de monitoreo y telecontrol de riego.

| Unidad | Tema |
|--------|------|
| 1 | El agua en la producción agrícola |
| 2 | El agua en el suelo |
| 3 | El agua en la planta |
| 4 | Requerimiento hídrico de los cultivos |
| 5 | Programación de riego |
| 6 | Tecnologías para el monitoreo y control de riego |

- **Modalidad:** Semipresencial vespertino
- **Horas:** 36 teóricas + 18 ayudantía + 108 trabajo personal
- **Laboratorios:** 6 talleres computacionales (Google Colab)

## Estructura del repositorio

```
├── clases/          # Diapositivas (Quarto revealjs) — 6 unidades, ~16 sesiones
├── labs/            # Laboratorios (Jupyter Notebooks para Google Colab) — 6 talleres
├── data/            # Datos compartidos (.csv) para ejercicios
├── docs/            # Programa oficial y programa mejorado
├── _quarto.yml      # Configuración Quarto
├── CLAUDE.md        # Guía para asistentes AI
└── README.md        # Este archivo
```

## Cómo usar este material

### Diapositivas de clase

Cada sesión es un archivo `.qmd` (Quarto) que genera diapositivas HTML con `revealjs`. Para renderizar:

```bash
quarto render clases/unidad-02/unidad-02_sesion-01.qmd
```

### Laboratorios en Google Colab

Cada taller es un Jupyter Notebook (`.ipynb`) listo para Google Colab:

1. Navega a la carpeta `labs/taller-XX/`
2. Abre el archivo `.ipynb` en GitHub
3. Haz clic en el badge "Open in Colab" (o reemplaza `github.com` por `colab.research.google.com/github` en la URL)
4. Ejecuta las celdas en orden — no necesitas instalar nada

Los datos se cargan automáticamente desde la carpeta `data/` vía URL raw de GitHub.

## Requisitos

### Para docentes (renderizar diapositivas)
- [Quarto](https://quarto.org/) ≥ 1.4
- R ≥ 4.0 con `ggplot2`, `dplyr`, `tidyr`

### Para estudiantes (laboratorios)
- Una cuenta de Google (para Google Colab)
- Navegador web — nada más

## Recursos externos utilizados

- [redmeteo.cl](https://redmeteo.cl/) — Datos meteorológicos en tiempo real
- [CNR](https://www.cnr.gob.cl/) — Comisión Nacional de Riego
- [FAO-56](https://www.fao.org/3/x0490s/x0490s00.htm) — Evapotranspiración del cultivo
