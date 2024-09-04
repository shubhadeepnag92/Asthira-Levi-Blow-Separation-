### README for NVT Monte Carlo Simulation Program

---

#### Overview:
This program is a Monte Carlo simulation tool developed in Fortran-95. It is designed to run simulations in the canonical ensemble (NVT - constant number of particles, volume, and temperature) for a wide variety of systems. The tool can handle both equilibrium and non-equilibrium simulations, allowing for the investigation of molecular dynamics in different materials, especially hydrocarbons and zeolites.

---

#### Features:
- **Equilibrium and Non-Equilibrium Simulations:** The program supports both equilibrium and non-equilibrium Monte Carlo simulations, enabling users to study a variety of systems under different physical conditions.
  
- **Supported Systems:**
  1. Single-type hydrocarbon molecules
  2. Mixtures of hydrocarbon molecules
  3. Zeolite materials
  4. Hydrocarbon molecules inside zeolite structures
  5. Mixtures of hydrocarbons in zeolitic materials

---

#### Program Structure:
The program is modular and uses the following key components:
- **Input File:** Contains system specifications such as the type of molecules, number of particles, simulation temperature, and volume.
- **Monte Carlo Moves:** The program performs standard Monte Carlo moves (e.g., particle displacement) and records acceptance or rejection based on the Metropolis criterion.
- **Output Files:** The program generates several output files, including energy profiles, particle configurations, and statistical averages (pressure, density, etc.).

---

#### Usage Instructions:
1. **Compile the Program:** Use a Fortran compiler, such as `gfortran`, to compile the program.
   ```bash
   gfortran -o mc_simulation mc_simulation.f95
   ```

2. **Running the Simulation:** After compiling, execute the program by providing the input file.
   ```bash
   ./mc_simulation input.dat
   ```

3. **Input Parameters:**
   The input file should contain:
   - Number of particles
   - Temperature (in reduced units or real units like Kelvin)
   - Box size (in units consistent with the particle model)
   - Initial configuration of particles (optional, otherwise random initialization)

4. **Output Files:**
   - Tracks the total energy of the system over the Monte Carlo steps.
   - Stores the final particle positions at the end of the simulation.
   - A text file containing a summary of the results, including average energy, pressure, and other thermodynamic properties.

---

#### Example Systems:

- **Single-type Hydrocarbon Simulation:**
   The user can simulate pure hydrocarbon systems, such as methane or ethane, in the canonical ensemble. The input file requires specification of molecular parameters (size, interaction strength, etc.).

- **Mixture of Hydrocarbons in Zeolite:**
   This allows for simulating separation or diffusion phenomena where different hydrocarbon species interact with the zeolite's pore structure. It is suitable for studying adsorption, separation, or reaction dynamics inside porous materials.

---

#### Requirements:
- **Fortran-95 Compiler:** The program is written in Fortran-95, so ensure you have a compatible Fortran compiler (e.g., `gfortran` or `ifort`).
- **Operating System:** The program should run on any Unix-based system or Windows with an appropriate environment (such as Cygwin or WSL).

---

#### Future Enhancements:
- **Parallelization:** Plans to include OpenMP directives for multi-threaded performance on larger systems.
- **Advanced Potentials:** Future versions may include more complex interaction potentials to handle polar and non-polar hydrocarbon molecules more effectively.

---
For any issues, please contact via email: shubhadeepnag92@gmail.com.

