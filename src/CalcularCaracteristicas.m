function vectorCaracteristicas = CalcularCaracteristicas(im, mascara)

    % Función que calcula el valor medio de cada componente RGB de una imagen sobre una máscara
    %
    % vectorCaracteristicas = CalcularCaracteristicas(im, mascara)
    %
    % - Parámetros de entrada:
    %   im: imagen de la que calcular los valores
    %   mascara: máscara que se aplicará a la imagen
    % - Parámetros de salida:
    %   vectorCaracteristicas: vector con el valor medio de cada componente RGB

    R = im(:, :, 1); % Componente roja
    G = im(:, :, 2); % Componente verde
    B = im(:, :, 3); % Componente azul

    R = mean(R(mascara == 1)); % Se calcula el valor medio de la componente roja sobre la máscara
    G = mean(G(mascara == 1)); % Se calcula el valor medio de la componente verde sobre la máscara
    B = mean(B(mascara == 1)); % Se calcula el valor medio de la componente azul sobre la máscara

    vectorCaracteristicas = [R G B]; % Se compone un vector con todos los valores
