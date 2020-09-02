cloc:
	cloc .

gource:
	gource . --key -s 1.5 -a 0.1

init:
	git submodule update --init --recursive

setup-linux:
	cd godot-cpp && scons -j$(shell nproc) platform=linux target=release generate_bindings=yes && cd ..

build-linux:
	scons -j$(shell nproc) platform=linux target=release

clean:
	scons platform=linux target=release -c
