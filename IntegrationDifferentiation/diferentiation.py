# Numerical differentiation is an approximate of the
# definition of derivative, which is a limit of the df/dt as dt goes to 0

# the function you want to differentiate
funcao = lambda x : x**2
h = 1e-4

# f'(x) = [ f(x+h)-f(x) ]/ h   +   o(h)
# f'(x) = [ f(x)-f(x-h) ]/ h
# f'(x) = [ f(x+h)-f(x-h) ]/ h

# f"(x) = [ f(x+h) - 2f(x) + f(x-h) ]/  h**2

def first_derivative(x):
  return (funcao(x+h)-funcao(x))/ h

def second_derivate(x):
  return (funcao(x+h) - 2*funcao(x) + funcao(x-h))/(h**2)

print(second_derivate(2))
