# Algorithm that solves 1st order ODEs using Runge-Kutta 4th order method

# Consider dydt = f(t,y)
# Initial value: y = y0 for t = t0


# Our derivative and initial value conditions

dydt = lambda t,y : (-t*y)/(pow(4-y,2))
yo = 1 
to = 0.0
h = 0.01 # Variable h stands for the space between y-values

# The RK4 method requires the 4 k variables below:

# k1 = f(t,y)
# k2 = f(t + h / 2 , y + (k1 * h)/2)
# k3 = f(t + h / 2 , y + (k2 * h)/2)
# k4 = f(t + h , y + k3 * h)

# The method's formula is:
# y += (k1 + 2*k2 + 2*k3 + k4)*h/6

# The stop condition
t = 5
y = yo

# The method's algorithm
# Bonus: It also creates a simple text file with all the values in x and y you'll need
file = open('report.txt','w')
file.write("Reporting the derivative's values\n\n")
while to <= t:
    k1 = dydt(t,y)
    k2 = dydt(t + h / 2 , y + (k1 * h)/2)
    k3 = dydt(t + h / 2 , y + (k2 * h)/2)
    k4 = dydt(t + h , y + k3 * h)
    y += (k1 + 2*k2 + 2*k3 + k4)*h/6
    to += h
    file.write(f"{to:.5f}  /  {y:.5f}\n")
file.close()
