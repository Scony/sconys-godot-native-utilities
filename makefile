cloc:
	cloc .

gource:
	gource . --key -s 1.5 -a 0.1

init:
	git submodule update --init --recursive

setup-linux:
	cd godot-cpp && scons -j$(shell nproc) platform=linux target=release generate_bindings=yes && cd ..

setup-windows:
	cd godot-cpp && scons  -j$(shell nproc) platform=windows target=release generate_bindings=yes && cd ..

build-linux:
	scons -j$(shell nproc) platform=linux target=release

build-windows:
	scons -j$(shell nproc) platform=windows target=release
	mv bin/win64/libsgnu.so bin/win64/libsgnu.dll

clean:
	scons platform=linux target=release -c
	scons platform=windows target=release -c
