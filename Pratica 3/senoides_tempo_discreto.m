clear;
close all;
executa_parte = 3;
t = 0:1/10000:10;
if executa_parte == 1    
    n = 0:10000;
    for k = 0:5:500
        w0 = k*2*pi/500;
        if k <= 250
            fprintf('%s %d %s %f %s %f \n','k: ',k,' |  Frequência W0:',w0,' |   N = 2*pi/W0: ',2*pi/w0);
        elseif k > 250
            fprintf('%s %d %s %f \n','k: ',k,' |  Frequência W0:',w0);
        end;
        figure(1)
        plot(cos(w0*n(1:200)));
        pause;
    end;    
elseif executa_parte == 2  
    for k = 1:length(t)
        w0 = k*2*pi/3;
        fprintf('%s %d %s %f %s %f \n','k: ',k,' |  Frequência W0:',w0,' |   T = 2*pi/W0: ',2*pi/w0);
        figure(2)
        plot(cos(w0*t));
        pause;
    end;
elseif executa_parte == 3
    w0 = 2*pi/2;
    x0 = cos(w0*t);
    w1 = 4*pi/2;
    x1 = cos(w1*t);
    w2 = 8*pi/2;
    x2 = cos(w2*t);
    y = x0 + x1 + x2;
    figure(3);
    plot(y)
    hold on;

    w0 = 2*pi/2;
    x0 = cos(w0*t + pi/3);
    w1 = 4*pi/2;
    x1 = cos(w1*t + pi/3);
    w2 = 8*pi/2;
    x2 = cos(w2*t + pi/3);
    z = x0 + x1 + x2;
    figure(3)
    plot(z,'k.');
end;



