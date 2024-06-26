# Prediction of cognitive impairment in elderly patients with COPD using an improved machine learning and visualization syste

The supporting code, raw data, and software system of the article "Prediction of cognitive impairment in elderly patients with COPD using an improved machine learning and visualization system".

## Description

This project contains all materials related to our recent research publication, including raw data, SAFWRE model code, and a companion software system. These resources are designed to help users understand and reproduce our research findings.

### File Structure

- **raw data.xlsx** - All the raw data used in the paper.
- **SAFWRE/** - Contains the MATLAB code for the SAFWRE model. Run the `main.m` file to execute the model.
- **app1/** - The software system accompanying the paper.
  - **for-redistribution/** - Software installation files for users without MATLAB Runtime installed.
  - **for_redistribution_files_only/** - Software execution files, requiring MATLAB Runtime 24.1.

## Installation and Execution

### Running the SAFWRE Model

1. Ensure MATLAB 2024a is installed on your computer.
2. Clone the repository or download the project files.
3. Navigate to the `SAFWRE/` directory.
4. Open MATLAB and run the `main.m` file.

### Installing and Running the Software System

#### Without MATLAB Runtime

1. Navigate to the `app1/for-redistribution/` folder.
2. Run the installer to install both the software and MATLAB Runtime.

#### With MATLAB Runtime

1. Ensure MATLAB Runtime 24.1 is installed on your computer. If not, download it from [MATLAB Runtime](https://ww2.mathworks.cn/products/compiler/matlab-runtime.html).
2. Navigate to the `app1/for_redistribution_files_only/` folder.
3. Run the software directly.

## Requirements

- MATLAB 2024a for running the SAFWRE model.
- MATLAB Runtime 24.1 for running the software system.




