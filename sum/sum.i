%module sum
%{
#include "sum.h"
%}
%include "typemaps.i"
void sum(int a, int b, int *OUTPUT);
