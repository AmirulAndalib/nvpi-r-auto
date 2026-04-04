# Contributing

Thanks for your interest! This repo is an automated packaging wrapper. Contributions are welcome for:

- Fixing packaging issues (install paths, shortcuts, manifest fields)
- Improving the GitHub Actions workflow
- Adding support for new package managers

## Quick Start

1. Fork the repo and create a branch.
2. Make your changes.
3. Test locally where possible (e.g., `scoop install ./bucket/nvpi-r.json` or `scoop install ./bucket/nvpi.json`).
4. Open a pull request describing what you changed and why.

## Notes

- The workflow auto-updates package versions every 6 hours. Manual version bumps are not needed.
- For issues with the apps themselves, report upstream:
  - NVPI Revamped: [xHybred/NvidiaProfileInspectorRevamped](https://github.com/xHybred/NvidiaProfileInspectorRevamped/issues)
  - NVIDIA Profile Inspector (Original): [Orbmu2k/nvidiaProfileInspector](https://github.com/Orbmu2k/nvidiaProfileInspector/issues)
