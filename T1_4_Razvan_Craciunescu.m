T = 20;
T0 = 3;
F0 = 1 / T0;

%rezolutiile temporale
t1 = 0:0.002:T;
t2 = 0:0.02:T;
t3 = 0:0.2:T;

% generarea semnalelor
y1 = 0.8 * sin(2 * pi * F0 * t1);
y2 = 0.8 * sin(2 * pi * F0 * t2);
y3 = 0.8 * sin(2 * pi * F0 * t3);

% redresare semnale
for i = 1:1:length(y1)
    if y1(i) < 0
    y1(i) = 0;     
    end
end  
for i = 1:1:length(y2)
    if y2(i) < 0   
    y2(i) = 0;       
    end
end  
for i = 1:1:length(y3)
    if y3(i) < 0   
    y3(i) = 0;    
    end
end  

% afisarea semnalelor
figure(1);
    subplot(3,1,1);
        plot(t1,y1),ylabel('A'),xlabel('t');
    subplot(3,1,2);
        plot(t2,y2),ylabel('A'),xlabel('t');
    subplot(3,1,3);
        plot(t3,y3),ylabel('A'),xlabel('t');
