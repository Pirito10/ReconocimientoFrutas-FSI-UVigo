function clase = reconocimiento_frutas(nombre_imagen)

    % Función que reconoce el tipo de fruta en una imagen
    %
    % clase = reconocimiento_frutas(nombre_imagen)
    %
    % - Parámetros de entrada:
    %   nombre_imagen: nombre del archivo (imagen) a analizar

    im = imread(nombre_imagen); % Se lee la imagen
    im = im2double(im); % Se pasa la imagen a formato double

    im = MejorarColor(im); % Se le aplica una mejora de color (maximizado de contraste)

    mascara = CalcularMascara(im); % Se obtiene una máscara binaria de la imagen

    vectorCaracteristicas = CalcularCaracteristicas(im, mascara); % Se calcula el vector de características (valor medio de cada componente RGB) de la imagen

    manzanaPromedio = CrearPrototipo('F01.jpg', 'F02.jpg', 'F03.jpg'); % Se calcula el vector de características de una manzana promedio, a partir de otras imágenes de manzanas
    mandarinaPromedio = CrearPrototipo('F07.jpg', 'F08.jpg', 'F09.jpg'); % Se calcula el vector de características de una mandarina promedio, a partir de otras imágenes de mandarinas
    fresaPromedio = CrearPrototipo('F16.jpg', 'F17.jpg', 'F18.jpg'); % Se calcula el vector de características de una fresa promedio, a partir de otras imágenes de fresas
    platanoPromedio = CrearPrototipo('F19.jpg', 'F20.jpg', 'F21.jpg'); % Se calcula el vector de características de un plátano promedio, a partir de otras imágenes de platanos
    peraPromedio = CrearPrototipo('F25.jpg', 'F26.jpg', 'F27.jpg'); % Se calcula el vector de características de una pera promedio, a partir de otras imágenes de peras

    clase = ReconocerClase(vectorCaracteristicas, manzanaPromedio, mandarinaPromedio, fresaPromedio, platanoPromedio, peraPromedio); % Se intenta deducir qué tipo de fruta es la de la imagen

    fprintf("\nTipo de fruta: " + clase + "\n\n");
