#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float secant_alg(double function, double x0, double x1, int iterations){
	for (int i = 0 ; i < iterations ; i++){
		int x2;
		x2 = x1 - function(x1)*(x1-x0)/(function(x1) - function(x0));
		x0 = x1;
		x1 = x2;
	}
	
	return x2;
}

float newtonraph_alg(float deriv, float function, float xo, int iterations){
	float x1,x2;

	for (int i=0 ; i<iterations ; i++){
		x1 = xo - function(xo)/deriv(xo);
		xo = x1;
		x2 = x1;
	}

	return x2;
}

float func(float x){
	return 3*x - 4;
}

int main(){
	// secant method
	return 0;
}


