imatge = imread('Lab2/Lenna.png');
imatge_grayscale = rgb2gray(imatge);
mat2 = uint8(zeros(size(imatge_grayscale)));

mat2(:, 1:end-1) = imatge_grayscale(:, 2: end);
mat3 = imatge_grayscale - mat2;
mat3 = abs(mat3);
mat3(:, end:end) = zeros(size(mat3(:, end:end)));

[maxFila, posF] = max(mat3);
[val, posC] = max(maxFila);
posicioMax = [posF(posC), posC];
imshow(imatge_grayscale);

hold on;
plot(posicioMax(2)+1, posicioMax(1), 'r+', 'MarkerSize', 5, 'LineWidth', 1);
