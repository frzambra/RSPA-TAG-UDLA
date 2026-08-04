# CLAUDE.md — TAG2027 Relación Suelo Agua Planta

## Identidad del proyecto

Este repositorio contiene los materiales de enseñanza para la asignatura **TAG2027 — Relación Suelo Agua Planta**, impartida en la **Universidad de Las Américas (UDLA)**, Facultad de Medicina Veterinaria y Agronomía, como parte del programa **Técnico de Nivel Superior Agrícola**.

- **Modalidad:** Semipresencial Vespertino
- **Horas totales:** 162 (36 teóricas, 18 ayudantía, 108 trabajo personal)
- **Idioma:** Español (todo el contenido, commits, documentación)
- **Propósito del repo:** Fuente única de verdad para diapositivas, laboratorios, datos y documentación del curso.

---

## Estructura del repositorio

```
RSPA-TAG-UDLA/
├── CLAUDE.md                  # Esta guía — instrucciones para asistentes AI
├── README.md                  # Descripción general del proyecto (para humanos)
├── _quarto.yml                # Configuración compartida de Quarto
├── docs/
│   ├── 202610TAG2027-4.pdf    # Programa oficial UDLA (original)
│   ├── 202610TAG2027-4.md     # Programa oficial UDLA (OCR, con artefactos)
│   └── programa-mejorado.qmd  # Programa mejorado y reestructurado
├── clases/
│   ├── unidad-01/             # El agua en la producción agrícola
│   ├── unidad-02/             # El agua en el suelo
│   ├── unidad-03/             # El agua en la planta
│   ├── unidad-04/             # Requerimiento hídrico de los cultivos
│   ├── unidad-05/             # Programación de riego
│   ├── unidad-06/             # Tecnologías para monitoreo y control
│   └── _extensions/           # Extensiones Quarto compartidas (temas, logos)
├── labs/
│   ├── taller-01/             # U1 (huella hídrica) + inicio U2 (Da, porosidad)
│   ├── taller-02/             # U2 completo (θv, CC, PMP, ADT, AFA)
│   ├── taller-03/             # U3 (potencial hídrico, transpiración, WUE)
│   ├── taller-04/             # U4 (Penman-Monteith, Hargreaves, Kc)
│   ├── taller-05/             # U5 (balance hídrico, frecuencia, calendario)
│   ├── taller-06/             # U6 (plataformas, sensores, telemetría)
│   └── salida-terreno/        # Guía de terreno + plantilla de informe
└── data/
    ├── suelos/                # Perfiles, curvas de retención
    ├── meteorologia/          # Datos climáticos de estaciones chilenas
    ├── cultivos/              # Tablas de Kc por cultivo y etapa fenológica
    └── riego/                 # Datos de sensores, ejemplos de telemetría
```

---

## Stack tecnológico

### Diapositivas de clase
- **Quarto** (`.qmd`) con formato **revealjs** → salida HTML autocontenida
- **R** para cálculos y gráficos (`ggplot2`)
- Ecuaciones en LaTeX (`$$...$$` y `$...$`)
- Tema personalizado en `clases/_extensions/`
- Cada sesión: 25–35 diapositivas para ~1.5h de clase

### Laboratorios
- **Jupyter Notebooks** (`.ipynb`) diseñados para **Google Colab**
- **Python** como lenguaje principal (`numpy`, `pandas`, `matplotlib`, `scipy`)
- Cero instalación para estudiantes — abren el notebook con un link/badge de Colab
- Datos compartidos como `.csv` en `data/`, cargables vía URL raw de GitHub
- Celda 1 de cada notebook: setup Colab (imports, carga de datos)
- Celdas `# TODO` donde estudiantes completan ejercicios
- Celdas de validación para verificar resultados intermedios

### Datos
- Archivos `.csv` pequeños en `data/` (suficientes para cálculos de ejemplo)
- Datos reales cuando sea posible (redmeteo.cl, CNR, FAO)
- Datos simulados representativos cuando no haya acceso a datos reales

---

## Arquitectura del curso

### Unidades y resultados de aprendizaje (RAA)

| Unidad | Tema | RAA |
|--------|------|-----|
| 1 | El agua en la producción agrícola | RAA1 |
| 2 | El agua en el suelo | RAA2, RAA3, RAA4 |
| 3 | El agua en la planta | RAA5 |
| 4 | Requerimiento hídrico de los cultivos | RAA6 |
| 5 | Programación de riego | RAA7 |
| 6 | Tecnologías para monitoreo y control | RAA8, RAA9, RAA10 |

### Estructura de evaluación

| Componente | Peso | Subcomponentes |
|------------|------|----------------|
| Examen | 35% | Examen final (100%) |
| Cátedra | 45% | Cátedra 1 (U1-U2), Cátedra 2 (U3-U4), Cátedra 3 (U5-U6) |
| Ejercicios | 20% | Ejercicio 1 (U1-U2), Ejercicio 2 (U3), Ejercicio 3 (U4), Ejercicio 4 (U5) |

### Laboratorios (6 sesiones × 3h = 18h)

| Lab | Unidad | Contenido principal | Ejercicio vinculado |
|-----|--------|---------------------|---------------------|
| 1 | U1 + inicio U2 | Huella hídrica, Da, porosidad, θg | Ejercicio 1 |
| 2 | U2 completo | θv, CC, PMP, ADT, AFA, curva retención | Ejercicio 1 |
| 3 | U3 | Potencial hídrico, transpiración, WUE | Ejercicio 2 |
| 4 | U4 | Penman-Monteith, Hargreaves, Kc | Ejercicio 3 |
| 5 | U5 | Balance hídrico, frecuencia, calendario | Ejercicio 4 |
| 6 | U6 | Plataformas digitales, sensores, telemetría | Portafolio |

### Sesiones de clase (teoría)

| Unidad | Sesiones | Temas |
|--------|----------|-------|
| U1 | 2 | Propiedades del agua, ciclo hidrológico, continuo SPA, contexto Chile |
| U2 | 4 | Propiedades físicas, relaciones masa-volumen, θg y θv, CC/PMP/ADT/AFA |
| U3 | 3 | Sistema radical, xilema, potencial hídrico, transpiración, fotosíntesis |
| U4 | 3 | ET, ETo (Penman-Monteith, Hargreaves), ETc, Kc, plataformas |
| U5 | 2 | Frecuencia, tiempo, balance hídrico, calendario de riego |
| U6 | 2 | Telemetría, sensores, interpretación de gráficos, plataformas digitales |

---

## Convenciones de nombres

- **Diapositivas:** `clases/unidad-XX/unidad-XX_sesion-YY.qmd`
  - Ejemplo: `clases/unidad-02/unidad-02_sesion-03.qmd`
- **Laboratorios:** `labs/taller-XX/taller-XX.ipynb`
  - Ejemplo: `labs/taller-03/taller-03.ipynb`
- **Datos:** `data/<categoria>/<descripcion>.csv`
  - Ejemplo: `data/suelos/curva-retencion-franco.csv`
- **Programa:** `docs/programa-mejorado.qmd`

---

## Comandos de build

```bash
# Renderizar una clase específica
quarto render clases/unidad-02/unidad-02_sesion-01.qmd

# Renderizar todas las clases de una unidad
quarto render clases/unidad-02/

# Renderizar el programa mejorado
quarto render docs/programa-mejorado.qmd

# Los labs no necesitan render — son .ipynb que se abren directamente en Colab
```

---

## Flujo de trabajo para agregar contenido

1. **Identificar** la unidad y los RAA correspondientes
2. **Crear/editar** el archivo Quarto de diapositivas en `clases/unidad-XX/`
3. **Si hay ejercicios asociados**, crear/editar el notebook en `labs/taller-XX/`
4. **Si se necesitan datos nuevos**, agregarlos como `.csv` en `data/`
5. **Renderizar** con `quarto render` para verificar la salida
6. **Commit** con mensaje descriptivo en español:
   - `feat(clases): agregar sesión 3 de unidad 2 — constantes hídricas`
   - `feat(labs): crear taller 4 — cálculo de Penman-Monteith`
   - `fix(datos): corregir valores de Kc para vid`

---

## Recursos externos

- **redmeteo.cl** — Red Meteorológica Abierta en Tiempo Real (datos de estaciones chilenas)
- **cnr.gob.cl** — Comisión Nacional de Riego (estadísticas, visor de cultivos)
- **FAO-56** — Estándar para cálculo de evapotranspiración y coeficientes de cultivo
- **Water Footprint Network** — Datos de huella hídrica por cultivo y país

---

## Notas para asistentes AI

- Todo el contenido académico debe estar en **español** (incluyendo títulos, etiquetas, notas de orador)
- Las ecuaciones usan notación **LaTeX** estándar
- Los notebooks de Colab deben ser **autocontenidos**: un estudiante que abre el link debe poder ejecutar todo sin configuración adicional
- Las figuras en diapositivas Quarto se generan con `ggplot2`; en labs Colab con `matplotlib`/`seaborn`
- Mantener consistencia terminológica con el programa oficial UDLA (CC, PMP, ADT, AFA, ETo, ETc, Kc)
- Los RAAs deben referenciarse explícitamente en cada sesión y laboratorio
- Las celdas `# TODO` en los notebooks indican ejercicios que el estudiante debe completar
