# Scony's GDNative Utilities
Bunch of useful GDNative Nodes and Scripts

## Building & Installation

1. Clone or download this repository to your project's `res://addons/sconys-godot-native-utilities` directory.
2. Build library:
    1. `make init`
    2. `make setup-linux`
    3. `make build-linux`
    4. `make setup-windows` (make sure you have MinGW cross-toolchain available e.g. `mingw-w64-toolchain` on Arch)
    5. `make build-windows`
2. Enable plugin in `Project Settings/Plugins`.

## Contents

- `GeometryNG`
    - `triangulate_delaunay_2d` - alternative (correct & 11.5x faster than `Geometry.triangulate_delaunay_2d`) implementation of Delaunay triangulation. Takes `PoolVector2Array` in and spits `PoolVector2Array` out.
