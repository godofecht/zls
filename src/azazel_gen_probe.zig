//! Azazel gen_imports proof (not part of the fork model): imports the
//! version_data module that Azazel generates by compiling and running zls's
//! own src/tools/config_gen.zig, then references its `builtins` map so the
//! generated file is actually analyzed. If the generated import failed to
//! produce or wire the module, this would not compile.
const std = @import("std");
const version_data = @import("version_data");

pub fn main() void {
    const n = version_data.builtins.keys().len;
    std.mem.doNotOptimizeAway(n);
}
