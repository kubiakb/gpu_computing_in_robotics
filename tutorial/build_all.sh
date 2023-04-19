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
