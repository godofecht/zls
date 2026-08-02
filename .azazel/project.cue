package build

toolchain: zig: {
    lanes: ["0.14", "0.15", "0.16"]
    preferred: "0.15"
}
