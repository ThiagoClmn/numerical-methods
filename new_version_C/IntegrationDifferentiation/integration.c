#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// function to integrate

// trapezoidal int. method
// simpson int. method

float myfunction(float x){
	return x*x;
}

float trapeze(float func, int a, int b, int n){
	float h = (b-a)/n;
	float result = (func(a) + func(b))/2;
	for (int i=1 ; i < n+1 ; i++){
		result += func(a + h*i);
	}
	
	result *= h;
	return result;
}


int main(){
	// initial and final values
	int a,b,n;

	printf("Initial value: ");
	scanf("%d",&a);
	printf("\nFinal value: ");
	scanf("%d",&b);
	
	// n --> amount of trapezes to fill the integral
	printf("\nParameter n: ");
	scanf("%d",&b);

	float integral = trapeze(myfunction,a,b,n); 
	
	printf("Integral = %g", integral);

	return 0;
}

