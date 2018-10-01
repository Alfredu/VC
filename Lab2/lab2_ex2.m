imatge = imread('Lab2/Lenna.png');
imatge_grayscale = rgb2gray(imatge);

hist = histoN(256, imatge_grayscale);
figure();
bar(hist);

function h = histoN(n,imatge_gray)
    nBins = 256/n;
    h = zeros(1, n);
    sizeM = size(imatge_gray);
    sizeF = sizeM(1);
    sizeC = sizeM(2);
    for i=  1: sizeF
        for j = 1: sizeC
            posVin = idivide(imatge_gray(i,j),nBins, 'fix')+1;
            h(posVin) = h(posVin)+1;
        end
    end
end
