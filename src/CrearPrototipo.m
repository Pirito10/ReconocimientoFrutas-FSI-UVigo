function prototipo = CrearPrototipo(nombre_im1, nombre_im2, nombre_im3)

    % Función que calcula un vector de características prototipo a partir de tres imágenes de referencia
    %
    % prototipo = CrearPrototipo(nombre_im1, nombre_im2, nombre_im3)
    %
    % - Parámetros de entrada:
    %   im1, im2, im3: imágenes a partir de las que calcular el prototipo
    % - Parámetros de salida:
    %   prototipo: vector de características promediado a partir de tres imágenes

    im1 = imread(nombre_im1); % Se lee la primera imagen
    im2 = imread(nombre_im2); % Se lee la segunda imagen
    im3 = imread(nombre_im3); % Se lee la tercera imagen

    im1 = im2double(im1); % Se pasa la imagen a formato double
    im1 = MejorarColor(im1); % Se le aplica una mejora de color
    mascara1 = CalcularMascara(im1); % Se obtiene una máscara de la imagen

    im2 = im2double(im2); % Se pasa la imagen a formato double
    im2 = MejorarColor(im2); % Se le aplica una mejora de color
    mascara2 = CalcularMascara(im2); % Se obtiene una máscara de la imagen

    im3 = im2double(im3); % Se pasa la imagen a formato double
    im3 = MejorarColor(im3); % Se le aplica una mejora de color
    mascara3 = CalcularMascara(im3); % Se obtiene una máscara de la imagen

    vector1 = CalcularCaracteristicas(im1, mascara1); % Se obtiene el vector de caracterísiticas de la primera imagen
    vector2 = CalcularCaracteristicas(im2, mascara2); % Se obtiene el vector de caracterísiticas de la segunda imagen
    vector3 = CalcularCaracteristicas(im3, mascara3); % Se obtiene el vector de caracterísiticas de la tercera imagen

    prototipo = (vector1 + vector2 + vector3) / 3; % Se calcula el prototipo, promediando los vectores de las tres imágenes
