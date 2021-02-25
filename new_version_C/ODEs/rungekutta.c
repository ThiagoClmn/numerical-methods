#include <stdio.h>

float dydt(float t, float y){
    // the derivative
    return t*y;
}

int main() {

    // INITIAL CONDITIONS
    float yo = 1.0, to = 0.0;
    float h = 1e-2; // step

    // STOP CONDITIONS
    float t = 5,  y = yo;

    // FORMULA
    /* The RK4 method requires the 4 variables below
     * (f is the derivative function)
     * k1 = f(t,y)
     * k2 = f(t + h / 2 , y + (k1 * h)/2)
     * k3 = f(t + h / 2 , y + (k2 * h)/2)
     * k4 = f(t + h , y + k3 * h)
     *
     * y += (k1 + 2*k2 + 2*k3 + k4)*h/6  <----- The formula */    

    FILE *rk4results;
    rk4results = fopen("rk4.csv","w"); // a CSV file with all x and y values
    fprintf(rk4results,"time (s),speed (m per s)\n");

    float k1, k2, k3, k4;

    // METHOD'S ALGORITHM
    while (to <= t){
        k1 = dydt(t,y);
        k2 = dydt(t + h / 2 , y + (k1 * h)/2);
        k3 = dydt(t + h / 2 , y + (k2 * h)/2);
        k4 = dydt(t + h , y + k3 * h);
        y += (k1 + 2*k2 + 2*k3 + k4)*h/6;
        to += h;
        fprintf(rk4results,"%g,%g\n", to,y);
    }

    fclose(rk4results);

    return 0;
}

