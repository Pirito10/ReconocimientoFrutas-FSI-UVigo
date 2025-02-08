function clase = ReconocerClase(vectorCaracteristicas, manzanaPromedio, mandarinaPromedio, fresaPromedio, platanoPromedio, peraPromedio)

    % Función que calcula la distancia entre un vector de caracterísiticas y
    % los vectores promedio, y decide de qué clase se trata el vector dado
    %
    % clase = ReconocerClase(vectorCaracteristicas, manzanaPromedio, mandarinaPromedio, fresaPromedio, platanoPromedio, peraPromedio)
    %
    % - Parámetros de entrada:
    %   vectorCaracteristicas: vector de características del que decidir de qué clase se trata
    %   manzanaPromedio: vector de características de la manzana promedio
    %   mandarinaPromedio: vector de características de la mandarina promedio
    %   fresaPromedio: vector de características de la fresa promedio
    %   platanoPromedio: vector de características del plátano promedio
    %   peraPromedio: vector de características de la pera promedio
    % - Parámetros de salida:
    %   clase: tipo de fruta que se ha reconocido

    distanciaManzanas = norm(vectorCaracteristicas - manzanaPromedio); % Se calcula la distancia (norma) entre el vector dado y la manzana promedio
    distanciaMandarinas = norm(vectorCaracteristicas - mandarinaPromedio); % Se calcula la distancia (norma) entre el vector dado y la mandarina promedio
    distanciaFresas = norm(vectorCaracteristicas - fresaPromedio); % Se calcula la distancia (norma) entre el vector dado y la fresa promedio
    distanciaPlatanos = norm(vectorCaracteristicas - platanoPromedio); % Se calcula la distancia (norma) entre el vector dado y el plátano promedio
    distanciaPeras = norm(vectorCaracteristicas - peraPromedio); % Se calcula la distancia (norma) entre el vector dado y el plátano promedio

    if ((distanciaManzanas > distanciaMandarinas) && (distanciaFresas > distanciaMandarinas) && (distanciaPlatanos > distanciaMandarinas) && (distanciaPeras > distanciaMandarinas)) % Si la distancia a la mandarina promedio es inferior a todas las demás, se considera que la imagen era una mandarina
        clase = "mandarina";
    elseif ((distanciaManzanas > distanciaFresas) && (distanciaMandarinas > distanciaFresas) && (distanciaPlatanos > distanciaFresas) && (distanciaPeras > distanciaFresas)) % Si la distancia a la fresa promedio es inferior a todas las demás, se considera que la imagen era una fresa
        clase = "fresa";
    elseif ((distanciaManzanas > distanciaPlatanos) && (distanciaMandarinas > distanciaPlatanos) && (distanciaFresas > distanciaPlatanos) && (distanciaPeras > distanciaPlatanos)) % Si la distancia al plátano promedio es inferior a todas las demás, se considera que la imagen era un plátano
        clase = "platano";
    elseif ((distanciaManzanas > distanciaPeras) && (distanciaMandarinas > distanciaPeras) && (distanciaFresas > distanciaPeras) && (distanciaPlatanos > distanciaPeras)) % Si la distancia a la pera promedio es inferior a todas las demás, se considera que la imagen era una pera
        clase = "pera";
    else
        clase = "manzana"; % En otro caso, se considera que la imagen era una manzana
    end
