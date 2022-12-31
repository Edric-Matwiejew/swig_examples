%module vecsum_complex
%{
#define SWIG_FILE_WITH_INIT
#include "vecsum_complex.h"
%}
%include "numpy.i"
%init %{
import_array();
%}
%apply (std::complex<double>* IN_ARRAY1, int DIM1) {(std::complex<double>* a, int na),(std::complex<double>* b, int nb)}
%apply (std::complex<double>* INPLACE_ARRAY1, int DIM1) {(std::complex<double>* c, int nc)}
%include "vecsum_complex.h"
