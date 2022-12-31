swig -python -c++ -I. sum.i
g++ -fPIC -c sum_wrap.cxx sum.cpp -I/usr/include/python3.8
g++ -shared sum.o  sum_wrap.o  -o _sum.so
python3 -c "import _sum;a=4;b=1;print(_sum.sum(a,b));"
