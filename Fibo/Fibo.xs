#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

int fibo(int n) {
	if(n < 2) {
		return 1;
	} else {
		return (fibo(n-1) + fibo(n-2));
	}
}

MODULE = Fibo		PACKAGE = Fibo		

int
fibo(x)	
	int x
    PROTOTYPE: $