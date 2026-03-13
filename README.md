Quantum Hamiltonian Diagonalization (MATLAB)
============================================

Overview
--------
A MATLAB project that constructs and diagonalizes a discretized 1D quantum Hamiltonian (infinite square well). The project computes energy levels and wavefunctions using eigendecomposition and validates numerical results against analytical values with a simple convergence study.

Goal
----
- Build a finite-difference Hamiltonian matrix for a 1D infinite square well.
- Compute eigenvalues and eigenvectors numerically (energy levels and wavefunctions).
- Validate numerical energy levels against the analytical solution.
- Check convergence by increasing the grid size.

Methods
-------
- Discretize the 1D domain using finite differences.
- Construct the Hamiltonian matrix and impose boundary conditions for an infinite well.
- Use eigendecomposition to compute eigenvalues/eigenvectors.
- Compare numerical results with analytical energy levels.
- Perform a simple convergence check by increasing grid size N.

Tools
-----
- MATLAB (MATLAB Online)

Project Structure
-----------------
- src/ contains the MATLAB scripts:
  - build_hamiltonian.m
  - run_demo.m
  - validate_convergence.m
- figures/ contains generated outputs

How to Run (MATLAB Online)
--------------------------
1) Open the project folder in MATLAB Online.
2) Run the scripts:
- run_demo
- validate_convergence

Outputs
-------
Figures:
- figures/wavefunctions.png
- figures/energy_levels.png
- figures/convergence.png

Validation
----------
- Analytical comparison: energy levels are compared to the infinite square well solution.
- Convergence: the ground-state energy error decreases as grid size N increases.

Notes
-----
This project uses dimensionless units (scaled such that (ħ^2 / 2m) = 1) to focus on the numerical method and validation workflow.