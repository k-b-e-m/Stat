%Trylleformlen

%Initial state
pi = [0,0,1]
% Transisition Diagram
P = [0,0.5,0.5;0.1,0,0.9;0.8,0.2,0]

factor = 2;

piFactor = pi*P^factor

result = ((1/3)/0.243)*0.4