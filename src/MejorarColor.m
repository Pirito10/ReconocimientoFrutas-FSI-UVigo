function imout = MejorarColor(im)

    % Función que mejora el color de una imagen RGB, maximizando el contraste
    %
    % imout = MejorarColor(im)
    %
    % - Parámetros de entrada:
    %   im: imagen a mejorar
    % - Parámetros de salida:
    %   imout: imagen mejorada

    imgray = rgb2gray(im); % Se pasa la imagen de RGB a escala de grises

    maximo = max(max(imgray)); % Se obtiene la luminancia máxima de la imagen
    minimo = min(min(imgray)); % Se obtiene la luminancia mínima de la imagen

    imout = (im - minimo) / (maximo - minimo); % Se maximiza el contraste
