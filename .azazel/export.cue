package build

_modules: {
	"snippets": snippets
	"uri": uri
}

_toolchain: toolchain
_packages: packages
_options: options

build: modules: {
	for k, v in _modules {
		(k): {
			kind:     v.kind
			artifact_name: (v & {artifact_name: *k | string}).artifact_name
			root:     v.root
			deps:     v.deps
			link:     v.link
			pre:      v.pre
			post:     v.post
			install_dirs: v.install_dirs
			pkg_library_paths: v.pkg_library_paths
			pkg_imports: v.pkg_imports
			pkg_artifacts: v.pkg_artifacts
			build_options: v.build_options
			build_options_import: v.build_options_import
			native: v.native
			optimize: profiles[v.profile].optimize
		}
	}
}

build: toolchain: _toolchain
build: packages: _packages
build: options: _options
