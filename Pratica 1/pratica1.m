close all;
clear;
load arquivo.mat;


%Energia do Sinal
E = [];
%Resultado do Sinal
res = 0;
%Auxiliares do Sinal
q = 0;
count = 1;
%Tamanho da Janela
janela = 60;

for q=1:length(sinal)-janela
    for k=count:janela
        %Energia de Sinal Periodico
        res = res + power(abs(sinal(k)),2);
        E(q) = res;
    end
    res = 0;
    count = count +1;
    janela = janela + 1;
end
figure(1)
    plot(sinal, 'r'); 
    hold on 
    plot(E, 'b');
    hold off
    
    title('Sinal Coletado Sobreposto com Funcao de Energia');
    legend('Sinal de Audio', 'Energia do Sinal');

figure(2)
    plot(sinal, 'r'); 
    hold on 
    plot(E, 'b');
    hold on
    indices = find(E > 0.005);
    plot(indices,sinal(indices),'m-');
    hold off
    
    title('Localização do Trecho de Interesse do Sinal');
    legend('Sinal de Audio', 'Energia do Sinal', 'Localizacao');



