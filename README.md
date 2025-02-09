# Reconocimiento de Frutas
*Reconocimiento de Frutas* is an **Image Analysis Tool** developed as part of the course "[Fundamentos de Sonido e Imagen](https://secretaria.uvigo.gal/docnet-nuevo/guia_docent/?centre=305&ensenyament=V05G301V01&assignatura=V05G301V01209&any_academic=2021_22)" in the Telecommunications Engineering Degree at the Universidad de Vigo (2021 - 2022).

## About The Project
This project implements a MATLAB-based system for fruit recognition in images by analyzing them, extracting its features, and classifying them into a category.

The project features:
- Automatic fruit recognition from images.
- Color enhancement to improve contrast and visibility.
- Binary mask generation to isolate the fruit from the background.
- Feature extraction using RGB color component analysis.
- Classification system based on procumputed prototypes.
- Confussion matrix evaluation for performance assessment.

## How To Run
### Requirements
Make sure you have [MATLAB](https://www.mathworks.com/products/matlab.html) installed on your system.

### Usage
1. Open MATLAB.
2. Navigate to the project's directory.
3. Run the following function:
```matlab
reconocimiento_frutas(<file>);
```
| Option | Description | Example |
|--------|-------------|---------|
| `file` | File to analyze | `F10.jpg` |

#### Example
```matlab
reconocimiento_frutas(images/F10.jpg);
```

## About The Code
Refer to [`Especificaciones.pdf`](docs/Memoria.pdf) and [`Memoria.pdf`](docs/Memoria.pdf) for an in-depth explanation of the project, how to run it, how the system and algorithm works, results and performace, and more.
