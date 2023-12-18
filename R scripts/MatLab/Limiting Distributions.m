%For limiting Distributions
syms x
syms y
syms z
syms t

A = [0.4-1,0.5,0,0;
      0.3,0-1,0,0;
      0.3,0,-1,1
      1,1,1,1]

b= [0;0;0;1]
pi = [x;y;z;t]

stationary = solve(A*pi==b,x,y,z,t)
