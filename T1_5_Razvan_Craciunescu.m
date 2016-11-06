T = 20;
T0 = 4;
F0 = 1 / T0;

%rezolutiile temporale
t1 = 0:0.002:T;
t2 = 0:0.02:T;
t3 = 0:0.2:T;

% generare semnale
y1 = 1.5 * sin(2 * pi * F0 * t1);
y2 = 1.5 * sin(2 * pi * F0 * t2);
y3 = 1.5 * sin(2 * pi * F0 * t3);

% redresare semnale
y1 = abs(y1);
y2 = abs(y2);
y3 = abs(y3);

% afisare
figure(1);
    subplot(3,1,1);
        plot(t1,y1),ylabel('A'),xlabel('t');
    subplot(3,1,2);
        plot(t2,y2),ylabel('A'),xlabel('t');
    subplot(3,1,3);
        plot(t3,y3),ylabel('A'),xlabel('t');
