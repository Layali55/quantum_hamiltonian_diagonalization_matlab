clear; clc; close all;

% Always save outputs relative to this script location
thisFile = mfilename('fullpath');
thisDir  = fileparts(thisFile);
figDir   = fullfile(thisDir, 'figures');
if ~exist(figDir, 'dir'); mkdir(figDir); end

N = 200;
L = 1.0;

[H, x, ~] = build_hamiltonian(N, L);

[V, D] = eig(H);
E = diag(D);
[E, idx] = sort(E);
V = V(:, idx);

k = 4;
E = E(1:k);
psi = V(:, 1:k);

for i = 1:k
    psi(:, i) = psi(:, i) / max(abs(psi(:, i)));
end

figure;
plot(x, psi(:,1), x, psi(:,2), x, psi(:,3), 'LineWidth', 1.2);
title('First Three Eigenfunctions (Normalized)');
xlabel('x'); ylabel('\psi(x)');
legend('\psi_1','\psi_2','\psi_3','Location','best');
grid on;
exportgraphics(gcf, fullfile(figDir,'wavefunctions.png'));

figure;
stem(1:k, E, 'filled');
title('Lowest Energy Levels');
xlabel('Level n'); ylabel('Energy');
grid on;
exportgraphics(gcf, fullfile(figDir,'energy_levels.png'));

E_analytical = ((1:k)'.*pi/L).^2;

disp('Numerical vs analytical energy levels:');
disp(table((1:k)', E, E_analytical, abs(E - E_analytical), ...
    'VariableNames', {'n','E_numeric','E_analytical','AbsError'}));

disp("Saved figures to: " + figDir);