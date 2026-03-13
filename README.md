Quantum Hamiltonian Diagonalization (MATLAB)

============================================



Overview

--------

A MATLAB project that constructs and diagonalizes a discretized 1D quantum Hamiltonian (infinite square well). The project computes energy levels and wavefunctions using eigendecomposition and validates numerical results against analytical values with a simple convergence study.



Goal

----

\- Build a finite-difference Hamiltonian matrix for a 1D infinite square well.

\- Compute eigenvalues and eigenvectors numerically (energy levels and wavefunctions).

\- Validate numerical energy levels against the analytical solution.

\- Check convergence by increasing the grid size.



Methods

-------

\- Discretize the 1D domain using finite differences.

\- Construct the Hamiltonian matrix and impose boundary conditions for an infinite well.

\- Use eigendecomposition to compute eigenvalues/eigenvectors.

\- Compare the ground-state energy with the analytical result and evaluate error vs grid size.



Tools

-----

\- MATLAB (MATLAB Online)



Project Structure

-----------------

\- src/build\_hamiltonian.m builds the Hamiltonian matrix.

\- src/run\_demo.m computes energy levels and wavefunctions and saves figures.

\- src/validate\_convergence.m performs a convergence study (error vs grid size).

\- figures/ stores output plots.



How to Run (MATLAB Online)

--------------------------

1\) Open the project folder in MATLAB Online.

2\) Run:

\- run\_demo

\- validate\_convergence



Outputs

-------

\- figures/wavefunctions.png

\- figures/energy\_levels.png

\- figures/convergence.png



Validation

----------

\- Numerical energy levels are compared with analytical values for the 1D infinite square well.

\- Convergence is demonstrated by decreasing |E1 - E1\_exact| as grid size N increases.



Notes

-----

The model uses dimensionless units (scaled such that (ħ^2 / 2m) = 1) to focus on the numerical method and validation workflow.

