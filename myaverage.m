% % FUN플O DO TOOLBOX DE PROCESSAMENTO DIGITAL DE IMAGENS. ESSA FUN플O
% % CRIA UMA MASCARA MEDIA (USANDO A FUN플O FSPECIAL), O TAMNHO DA MASCARA
% % PODE SER DEFINIDA PELO PRAMETRO K, 1 PARA UMA MASCARA 3x3 E 2 PARA UMA
% % MASCARA %5x5. ESSA FUN플O UTILIZA O IMFILTER PARA APLICAR A MASCARA A
% % IMAGEM UTILIZANDO O PARAMETRO SAME...FUN플O AINDA EM CONTRU플O
% % GUILHERME CARVALHO PEREIRA
%% INICIO
function Nimg = myaverage(img,k)       %%CABE�ALHO DA FUN플O
close all;                              
clc;
%% DEFININDO A MASCARA
if k == 1 
    Mask = fspecial('average');
end
if k == 2
    Mask = fspecial('average' , [5 5] );
end
%% APLICANDO A MASCARA A MATRIZ
Nimg = imfilter (img , Mask , 'same');