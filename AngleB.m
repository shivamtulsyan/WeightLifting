function [ b ] = AngleB( X, Z, x, z )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
b = 2*pi - 2*atan((30*x - 30*X + X^2*(-(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2)/(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2 - 900))^(1/2) + x^2*(-(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2)/(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2 - 900))^(1/2) + Z^2*(-(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2)/(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2 - 900))^(1/2) + z^2*(-(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2)/(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2 - 900))^(1/2) - 900*(-(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2)/(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2 - 900))^(1/2) - 2*X*x*(-(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2)/(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2 - 900))^(1/2) - 2*Z*z*(-(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2)/(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + z^2 - 900))^(1/2))/(X^2 - 2*X*x + x^2 + Z^2 - 2*Z*z + 30*Z + z^2 - 30*z));
end

