swig -python -c++ -I. vecsum_complex.i
g++ -fPIC -c vecsum_complex_wrap.cxx vecsum_complex.cpp -I/usr/include/python3.8 -I/home/edric/.local/lib/python3.8/site-packages/numpy/core/include
# the shared object library must have the same name as the module, preprended with an '_'.
g++ -shared vecsum_complex.o  vecsum_complex_wrap.o  -o _vecsum_complex.so
python3 -c "import _vecsum_complex;import numpy as np;a=np.array([4, 4], dtype = np.complex128);b=np.array([1,1], dtype = np.complex128);c=np.array([2,2], dtype = np.complex128);_vecsum_complex.vecsum_complex(a,b,c);print(c);"
