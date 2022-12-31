#include <complex>
void vecsum_complex(std::complex<double>* a, int na, std::complex<double>* b, int nb, std::complex<double>* c, int nc){

	for (int i = 0; i < nc; i++){
		c[i] = a[i] + b[i];
	}
}
