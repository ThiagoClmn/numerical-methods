def newtonraphson(der,func,xo,iterations):
    for n in range(iterations):
        x1 = xo - func(xo)/func(xo)
        xo = x1
        x2 = x1
    return x2


    