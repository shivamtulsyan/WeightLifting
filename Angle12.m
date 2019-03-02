function [ P, Q ] = Angle12( X, Z, k )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
syms p q
answer = solve(30*cos(pi/10)-k+1+20*cos(q)-10*cos(q-p)==Z,20*sin(q)+10*sin(q-p)==X,p,q);
P=answer.p;
Q=answer.q;
end

