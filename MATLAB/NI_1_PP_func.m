function f = NI_1_PP_func(t, Y, m, g, k, L0, muk,r0,thetadot0)

%  Assign familiar variable names to the state variables:

x3 = Y(1);
x3dot = Y(2);

x3ddot = -g - (k/m)*(x3-L0) - muk*r0*(thetadot0^2)*sign(x3dot);

%  Construct the right-hand side-vector f(t,Y) = dY/dt:

f = [x3dot; x3ddot];

end