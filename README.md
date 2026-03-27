# Beam Solid Angle Calculator

This MATLAB script (`Screenshot_27-3-2026_145444_matlab.mathworks.com.m`) calculates the beam solid area of an antenna in steradians based on its radiation pattern.

## How to Use

1. Open `Screenshot_27-3-2026_145444_matlab.mathworks.com.m` in MATLAB.
2. Click **Run** in the editor tab.
3. The command window will ask you for several inputs. Type your value for each and press Enter.

## Example Test

To verify the code works and get the target Beam Area of **2.10 Sr**, enter these exact values when prompted:

* **The lower bound of theta in degree=** 0
* **The upper bound of theta in degree=** 90
* **The lower bound of phi in degree=** 0
* **The upper bound of phi in degree=** 360
* **The field pattern : E(THETA,PHI)=** cos(THETA)
* **The power pattern: P(THETA,PHI)=** cos(THETA).^2

## Expected Output

After entering the values above, MATLAB will print:

 Input Parameters: 
-------------------- 
 Theta = 0 :  1 : 90
 Phi = 0 :  1 : 360
 POWER PATTERN : cos(THETA).^2
 
 Output Parameters: 
-------------------- 
BEAM AREA (steradians) = 2.10
