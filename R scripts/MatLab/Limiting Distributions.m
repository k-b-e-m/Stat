%For limiting Distributions
syms x
syms y
syms z

A = [-1,0.1,0.8;
      0.5,-1,0.2;
      1,1,1]

b= [0;0;1]
pi = [x;y;z]

stationary = solve(A*pi==b,x,y,z)
82/237