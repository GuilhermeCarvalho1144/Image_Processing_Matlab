% % FUN플O DO TOOLBOX DE PROCESSAMENTO DIGITAL DE IMAGENS. ESSA FUN플O
% % APLICA UMA EQUALIZA플O O HISTOGRAMA DA IMAGEM DE TAL FORMA QUE TODA A SUA
% % RESOLU플O SEJA APROVEITADA (VALORES ENTRE 0 E 255)...ESSA FUN플O RECEBE
% % COMO PARAMETRO A IMAGEM A SER EQUALIZADA E RETORNA A IMAGEM DEPOIS DE
% % APLICADO O PROCESSO DE EQUALIZA플O, O TAMANHO DA IMAGEM RETORNADA E O
% % MESMO DA IMAGEM ORIGINAL
% % GUILHERME CARVALHO PEREIRA
%% INICIO
function Nimg = myequal(img)        %%CABE�ALHO DA FUN플O
close all;                          %%FECHA TODAS AS JANELAS
clc;                                %%LIMPA O PROMPT DE COMANDO
%% DEFINDO AS DIMENS�ES DA IMAGEM DE SAIDA..S홒 AS MESMAS DA IMAGEM ORIGINAL
[lin , col] = size(img);
sizeImg = lin*col;      %%QUANTIDADE TOTAL DE PIXELS DA IMAGEM
%% APLICANDO A EQUALIZA플O NO HISTOGRAMA
hist = imhist(img) / sizeImg;       %%NORMALIZA O HISTOGRAMA
histAcum = cumsum (hist);
Nimg = histAcum(img+1);
Nimg = uint8(Nimg*255);
end
%% FIM