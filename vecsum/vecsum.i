%module vecsum
%{
#define SWIG_FILE_WITH_INIT
#include "vecsum.h"
%}
%include "numpy.i"
%init %{
import_array();
%}
%apply (int* IN_ARRAY1, int DIM1) {(int * a, int na),(int * b, int nb)}
%apply (int* INPLACE_ARRAY1, int DIM1) {(int * c, int nc)}
%include "vecsum.h"
