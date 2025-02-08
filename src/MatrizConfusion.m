function MatrizConfusion()

    % Función que calcula una matriz de confusión
    %
    % MatrizConfusión()

    % Vector con los valores esperados
    vectorObjetivo = ["manzana" "manzana" "manzana" "mandarina" "mandarina" "mandarina" "fresa" "fresa" "fresa" "platano" "platano" "platano" "pera" "pera" "pera"];
    % Vector con las predicciones hechas por el programa
    vectorPredicciones = [reconocimiento_frutas("F04.jpg") reconocimiento_frutas("F05.jpg") reconocimiento_frutas("F06.jpg") reconocimiento_frutas("F10.jpg") reconocimiento_frutas("F11.jpg") reconocimiento_frutas("F12.jpg") reconocimiento_frutas("F13.jpg") reconocimiento_frutas("F14.jpg") reconocimiento_frutas("F15.jpg") reconocimiento_frutas("F22.jpg") reconocimiento_frutas("F23.jpg") reconocimiento_frutas("F24.jpg") reconocimiento_frutas("F28.jpg") reconocimiento_frutas("F29.jpg") reconocimiento_frutas("F30.jpg")];

    % Se calcula y se muestra la matriz de confusión
    confusionchart(vectorObjetivo, vectorPredicciones, "Title", "Matriz de confusión", "XLabel", "Predicción", "YLabel", "Clase de fruta")
