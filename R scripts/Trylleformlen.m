%Trylleformlen

%Initial state
pi = [1,0,0,0]
% Transisition Diagram
P = [0.4,0.3,0.3,0;
     0.5,0,0,0.5;
     0,0,0,1;
     0,0,1,0]

factor = 3;

piFactor = pi*P^factor