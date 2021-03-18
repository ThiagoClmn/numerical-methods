import math
from numpy import exp,linspace
from matplotlib import pyplot as plt

# The function you'll be integrating
erf = lambda x: x**2

def trapezoidal(function, a, b, n):
    h = float(b-a)/n
    result = 0.5*function(a) + 0.5*function(b)
    for i in range(1, n):
        result += function(a + i*h)
    result *= h
    return result


# Input required data for the calculation
print("Integral calculator")
initial = eval(input("Initial value: "))
final = eval(input("Final value: "))

print("\nParameter 'n' is important for the calculation")
print("The bigger the 'n', the more precise the area gets")
n = int(input("Number n: "))

print("Loading...\n")

# Shows the value
print(f"Integral from {initial} to {final} = {trapezoidal(erf,initial,final,n)}")



# Plotting
ans = str(input('Would you like to have a graph of the function [Y/n]? ')).strip().upper()
if ans == 'Y':
    xvals = linspace(-10,10)
    yvals = erf(xvals)
    plt.plot(xvals,yvals)
    plt.xlabel("X-axis")
    plt.ylabel("Y-axis")
    plt.grid()
    plt.show()

elif ans == 'N':
    print("All right, have a nice one!")
else:
    print("Not an avaible option...")