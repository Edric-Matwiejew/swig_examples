swig -python -c++ -I. vecsum.i
g++ -fPIC -c vecsum_wrap.cxx vecsum.cpp -I/usr/include/python3.8 -I/home/edric/.local/lib/python3.8/site-packages/numpy/core/include
g++ -shared vecsum.o  vecsum_wrap.o  -o _vecsum.so
python3 -c "import _vecsum;import numpy as np;a=np.array([4, 4], dtype = np.int32);b=np.array([1,1], dtype = np.int32);c=np.array([2,2], dtype = np.int32);_vecsum.vecsum(a,b,c);print(c);"
