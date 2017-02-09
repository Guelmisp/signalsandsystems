clear all;

load sinal_periodo_105;

%Intervalo de Repeticao
n = [-52:52];

% Periodo da Funcao Ys
N = 105;

ind = 1;
w0 = 2*pi / N;

for k = -52:52
    ak(ind) = (1 / N)*sum(ys(n + 211).*exp(-j*k*w0*n));
    ind = ind + 1;
end;

ind = 1;

for k = -52:52
    fourieSeries(ind) = sum(ak(ind)*exp(j*k*w0*n));
    ind = ind + 1;
end;


figure (1)
    %Plot discrete Signal
    stem(ys(159:263))
    hold on
    %Plot Fourier Series
    stem(fourieSeries)


