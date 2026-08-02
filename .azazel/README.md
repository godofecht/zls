# Azazel/Zaza Integration

This branch is the integration landing zone for `zigtools/zls`.

The first pass keeps upstream source untouched and records the build graph
features Azazel and Zaza need to model before attempting a full replacement.

Current focus:

- Zig toolchain lane detection
- package dependency diagnostics
- module-only targets
- generated-source steps
- native link metadata
- corpus parity reporting
- build-proof reporting
- actionable build diagnostics
