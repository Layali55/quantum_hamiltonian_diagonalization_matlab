clear; clc; close all;

% Always save outputs relative to this script location
thisFile = mfilename('fullpath');
thisDir  = fileparts(thisFile);
figDir   = fullfile(thisDir, 'figures');
if ~exist(figDir, 'dir'); mkdir(figDir); end

L = 1.0;
N_values = [50, 100, 200, 400];
E1_num = zeros(size(N_values));

for i = 1:length(N_values)
    N = N_values(i);
    [H, ~, ~] = build_hamiltonian(N, L);
    E = eig(H);
    E = sort(E);
    E1_num(i) = E(1);
end

E1_exact = (pi/L)^2;
err = abs(E1_num - E1_exact);

figure;
plot(N_values, err, '-o', 'LineWidth', 1.2);
title('Convergence of Ground-State Energy');
xlabel('Grid Size N'); ylabel('|E_1 - E_{1,exact}|');
grid on;
exportgraphics(gcf, fullfile(figDir,'convergence.png'));

disp('Convergence table:');
disp(table(N_values', E1_num', err', ...
    'VariableNames', {'N','E1_numeric','AbsError'}));

disp("Saved figure to: " + figDir);