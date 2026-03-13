function [H, x, dx] = build_hamiltonian(N, L)
% Builds a 1D finite-difference Hamiltonian for an infinite square well
% using dimensionless units where (hbar^2/2m)=1.

x = linspace(0, L, N)';
dx = x(2) - x(1);

e = ones(N,1);
T = (-2*diag(e) + diag(e(1:end-1),1) + diag(e(1:end-1),-1)) / dx^2;

V = zeros(N,1);
H = -T + diag(V);

% Impose "infinite" walls by pinning boundary nodes
big = 1e10;
H(1,:) = 0; H(:,1) = 0; H(1,1) = big;
H(end,:) = 0; H(:,end) = 0; H(end,end) = big;
end