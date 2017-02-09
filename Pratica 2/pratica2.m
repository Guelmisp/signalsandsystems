clear all;

load melodia2.mat

%sound(sinal,8000);
%plot(sinal);

N = 1900;
Gfb = 0.5;
Gff = 0.9;

for n=1:20000
    if n==1
        h(n) = impulso(n-1);
    end
    if (((n-N) < 0) && (n ~= 1) )
        h(n) = 0;
    end
    if (n-N) == 0
        h(n) = Gfb*h(1) + (Gff - Gfb)*impulso(n-N);
    end
    if (n-N) > 0
        h(n) = Gfb*h(n-N);
    end
end


figure (1)
    subplot(2,1,1)
    plot(sinal);
    title('Audio Original');
    legend('Audio Original');
    
    subplot(2,1,2)
    y = conv(sinal,h);
    plot(y);
    title('Respota ao Impulso');
    legend('Audio Delay');

% Tocar resultado do Impulso aplicado    
sound(y,8000);
 
