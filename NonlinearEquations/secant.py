import math

# Solving Nonlinear equations 

# Secant method is an approximation for the Newton-Raphson method
# In Newton's method you must know the derivative of the function you're analyzing

def secant_method(f, x0, x1, iterations):
    for i in range(iterations):
        x2 = x1 - f(x1) * (x1 - x0) / float(f(x1) - f(x0))
        x0 = x1
        x1 = x2
    return x2

def colebrooke():
  r = 0
  Re = 10**5
  f = 1
  g = 1 / math.sqrt(f) + 2*math.log10(r/3.7 + 2.51/(Re*math.sqrt(f)))
  return g

tol = pow(10,-6)
eps = 1
x = 0.01
xold= 0.9 * pow(10,-2)

"""
  
  # Método da Secante
    
    col(r,Re,x,g)
    col(r,Re,xold,gold)
    while(eps.gt.tol):
      xnew = x - g*(x-xold)/(g-gold)
      col(r,Re,xnew,gnew)
      eps = math.fabs( xnew - x )
      xold = x
      gold = g
      x = xnew
      g = gnew
      print(xnew,gnew,eps)
"""

root = secant_method(expression, -10, 20, 50)

print("Root: {}".format(root))  # Root: 24.738633748750722
