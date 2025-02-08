function mascara = CalcularMascara(im)

    % Función que obtiene una máscara binaria de una imagen
    %
    % mascara = CalcularMascara(im)
    %
    % - Parámetros de entrada:
    %   im: imagen de la que calcular la máscara
    % - Parámetros de salida:
    %   mascara: máscara resultante

    im = rgb2hsv(im); % Se pasa la imagen del sistema RGB al HSV (Hue, Saturation, Value)

    T = graythresh(im); % Se calcula el umbral que permitirá diferenciar qué parte de la imagen es fruta y cuál no

    mascara = imbinarize(im(:, :, 2), T); % Se aplica el umbral T sobre la componente S (saturación) de la imagen

    mascara = imfill(mascara, 'holes'); % Se rellenan los posibles espacios que hayan quedado eliminados debido a una alta luminancia
