# Auto compile all shaders in Resources/Shaders directory to SPIRV with .spv extension
echo ""
echo ""
echo "Compiling Shaders..."
for file in ../Resources/Shaders/*.vert; do
    glslc $file -o $file.spv

done

for file in ../Resources/Shaders/*.frag; do
    glslc $file -o $file.spv
done

echo "Shaders Compiled!"
echo ""
echo ""