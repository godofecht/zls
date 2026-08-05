// Azazel parity model for zls. Beyond the snippets slice: uri, a self-
// contained URI parse/encode/path module (src/Uri.zig) that imports only std
// and belongs on lane 0.17 (zls's real pin, 0.17.0-dev). snippets is kept on
// its API-agnostic static data.
package build

toolchain: zig: {
	lanes: ["0.16", "0.17"]
	preferred: "0.17"
}

snippets: #Module & {
	kind: "static"
	root: "src/snippets.zig"
}

uri: #Module & {
	kind: "static"
	root: "src/Uri.zig"
}
