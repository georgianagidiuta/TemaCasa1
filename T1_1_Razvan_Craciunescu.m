T = 20;
T0 = 2;
F0 = 1 / T0;

%rezolutiile temporale
t1 = 0:0.002:20;
t2 = 0:0.02:20;
t3 = 0:0.2:20;

% generarea semnalelor
y1 = 0.75 * square(2 * pi * F0 * t1,25) - 0.25;
y2 = 0.75 * square(2 * pi * F0 * t2,25) - 0.25;
y3 = 0.75 * square(2 * pi * F0 * t3,25) - 0.25;

% afisarea semnalelor
figure(1);
    subplot(3,1,1);
        plot(t1,y1),ylabel('A'), xlabel('t');
    subplot(3,1,2);
        plot(t2,y2),ylabel('A'), xlabel('t');
    subplot(3,1,3);
        plot(t3,y3),ylabel('A'), xlabel('t');