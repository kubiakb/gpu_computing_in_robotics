export CUDA_PATH=/usr/local/cuda
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64


mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make
cd ../

echo ""
echo ""
echo "List of executables:"
ls -1 build/lesson_*
echo ""
echo "To run lesson go to build dir:"
echo "cd build/lesson_0"
echo "./lesson_0"
echo ""
