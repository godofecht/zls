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

// Proof of gen_imports: build zls's config_gen host tool, run it to emit
// version_data.zig, and import that as a module in a probe exe.
gen_probe: #Module & {
	kind: "exe"
	root: "src/azazel_gen_probe.zig"
	gen_imports: [{
		alias: "version_data"
		tool_root: "src/tools/config_gen.zig"
		tool_name: "zls_gen"
		output: "version_data.zig"
		args: [
			{kind: "literal", value: "--langref-version"},
			{kind: "literal", value: "master"},
			{kind: "literal", value: "--langref-path"},
			{kind: "input_file", value: "src/tools/langref.html.in"},
			{kind: "literal", value: "--generate-version-data"},
			{kind: "output_file", value: "version_data.zig"},
		]
	}]
}
