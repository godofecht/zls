// Azazel parity model for zls. First target slice: snippets, a self-contained
// pure-Zig module. src/snippets.zig imports only std and is static completion
// data (no package deps, no generated version_data, no build_options), so Azazel
// builds it directly as a static library. It uses only 0.16-available APIs even
// though zls's overall minimum_zig_version is 0.17-dev. Verified: the source
// compiles as a static lib on 0.16.0.
package build

toolchain: zig: {
	lanes: ["0.16"]
	preferred: "0.16"
}

snippets: #Module & {
	kind: "static"
	root: "src/snippets.zig"
}
