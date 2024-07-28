# Shape Simulator

## Overview
`My_Shapes.pl` is a MATLAB script designed to demonstrate the basics of object-oriented programming and graphics in MATLAB. It allows users to select a geometric shape, specify attributes like size and color, and then calculates the area and displays the shape.

## Features
  - **Shape Selection**: Users can select from four different shapes: Circle, Rectangle, Triangle, and Equilateral Triangle.
  - **Customization**: Each shape can be customized with specific dimensions and colors.
  - **Area Calculation**: The script calculates the area of the selected shape.
  - **Graphical Display**: Draws the specified shape with the provided attributes on the screen.

## Usage
Run the script in your MATLAB environment. The script will prompt you to choose a shape and then request the necessary dimensions and color for that shape. After receiving the inputs, it will display the shape along with its area.

## Prerequisites
  - MATLAB (preferably R2019b or later) with the following toolboxes:
    - Image Processing Toolbox
    - MATLAB Graphics and Data Visualization
Ensure these toolboxes are installed and configured before running the script.

## Input
  - **Shape Selection**: Input a number corresponding to the desired shape.
  - **Dimensions**: Depending on the selected shape, input the required dimensions such as radius, length, width, base, height, or side length.
  - **Color**: Enter a color for the shape (as a string).

## Output
  - **Graphical Display**: A graphical representation of the chosen shape in the specified color.
  - **Text Output**: The area of the shape is calculated and displayed in the MATLAB command window.

## Notes
  - The script uses a simple CLI for interaction. Ensure that inputs are entered correctly as per the prompts to avoid errors.
  - This script serves as a basic demonstration and does not handle all edge cases or errors extensively.
  - The graphical output depends on the current settings of your MATLAB graphics environment.
