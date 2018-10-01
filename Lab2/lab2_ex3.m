imatge = imread('Lab2/Lenna.png');
imatge_grayscale = rgb2gray(imatge);

imatge_petita = imresize(imatge_grayscale, 3/7);
imatge_ampliada = imresize(imatge_petita, [220,220]);

diff_nivells = imatge_grayscale() - imatge_ampliada();

desviacio = std2(diff_nivells);
mitjana = mean(imatge_grayscale, 'all');

SNR = 10 * log10(desviacio / mitjana);
