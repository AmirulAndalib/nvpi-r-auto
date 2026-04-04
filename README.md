# NVIDIA Profile Inspector Packages

[![Update Packages](https://github.com/AmirulAndalib/nvpi-r-auto/actions/workflows/update.yml/badge.svg)](https://github.com/AmirulAndalib/nvpi-r-auto/actions/workflows/update.yml)
[![Last Commit](https://img.shields.io/github/last-commit/AmirulAndalib/nvpi-r-auto)](https://github.com/AmirulAndalib/nvpi-r-auto/commits/master)

Unofficial packaging repository for [NVPI Revamped](https://github.com/xHybred/NvidiaProfileInspectorRevamped) and the original [NVIDIA Profile Inspector](https://github.com/Orbmu2k/nvidiaProfileInspector). New releases are picked up automatically every 6 hours and published to WinGet, Chocolatey, and Scoop.

---

## NVPI Revamped

[![GitHub Release](https://img.shields.io/github/v/release/xHybred/NvidiaProfileInspectorRevamped)](https://github.com/xHybred/NvidiaProfileInspectorRevamped/releases/latest)
[![WinGet Version](https://img.shields.io/winget/v/xHybred.NVPIRevamped)](https://github.com/microsoft/winget-pkgs/tree/master/manifests/x/xHybred/NVPIRevamped)
[![Chocolatey Version](https://img.shields.io/chocolatey/v/nvpi-r)](https://community.chocolatey.org/packages/nvpi-r)
[![Chocolatey Downloads](https://img.shields.io/chocolatey/dt/nvpi-r)](https://community.chocolatey.org/packages/nvpi-r)
[![Scoop Version](https://img.shields.io/scoop/v/nvpi-r?bucket=https%3A%2F%2Fgithub.com%2FAmirulAndalib%2Fnvpi-r-auto)](https://github.com/AmirulAndalib/nvpi-r-auto/blob/master/bucket/nvpi-r.json)
[![License](https://img.shields.io/github/license/xHybred/NvidiaProfileInspectorRevamped)](https://github.com/xHybred/NvidiaProfileInspectorRevamped/blob/master/LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/xHybred/NvidiaProfileInspectorRevamped)](https://github.com/xHybred/NvidiaProfileInspectorRevamped)
[![Repology](https://repology.org/badge/vertical-allrepos/nvpi-r.svg)](https://repology.org/project/nvpi-r/versions)

A revamped fork of NVIDIA Profile Inspector by [xHybred](https://github.com/xHybred).

### Install

```sh
# WinGet
winget install xHybred.NVPIRevamped

# Chocolatey
choco install nvpi-r

# Scoop
scoop bucket add nvpi-r https://github.com/AmirulAndalib/nvpi-r-auto
scoop install nvpi-r
```

### Install Location

| Manager | Path |
| --- | --- |
| WinGet | `%LOCALAPPDATA%\Microsoft\WinGet\Packages\xHybred.NVPIRevamped_Microsoft.Winget.Source_8wekyb3d8bbwe` |
| Chocolatey | `%USERPROFILE%\NVPI-R` |
| Scoop | `%USERPROFILE%\scoop\apps\nvpi-r\current` |

### Update

```sh
# WinGet
winget upgrade xHybred.NVPIRevamped

# Chocolatey
choco upgrade nvpi-r

# Scoop
scoop update nvpi-r
```

---

## NVIDIA Profile Inspector (Original)

[![GitHub Release](https://img.shields.io/github/v/release/Orbmu2k/nvidiaProfileInspector?include_prereleases)](https://github.com/Orbmu2k/nvidiaProfileInspector/releases)
[![WinGet Version](https://img.shields.io/winget/v/Orbmu2k.nvidiaProfileInspector)](https://github.com/microsoft/winget-pkgs/tree/master/manifests/o/Orbmu2k/nvidiaProfileInspector)
[![Chocolatey Version](https://img.shields.io/chocolatey/v/nvpi)](https://community.chocolatey.org/packages/nvpi)
[![Chocolatey Downloads](https://img.shields.io/chocolatey/dt/nvpi)](https://community.chocolatey.org/packages/nvpi)
[![Scoop Version](https://img.shields.io/scoop/v/nvpi?bucket=https%3A%2F%2Fgithub.com%2FAmirulAndalib%2Fnvpi-r-auto)](https://github.com/AmirulAndalib/nvpi-r-auto/blob/master/bucket/nvpi.json)
[![License](https://img.shields.io/github/license/Orbmu2k/nvidiaProfileInspector)](https://github.com/Orbmu2k/nvidiaProfileInspector/blob/master/LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/Orbmu2k/nvidiaProfileInspector)](https://github.com/Orbmu2k/nvidiaProfileInspector)
[![Repology](https://repology.org/badge/vertical-allrepos/nvpi.svg)](https://repology.org/project/nvpi/versions)

The original NVIDIA Profile Inspector by [Orbmu2k](https://github.com/Orbmu2k). Pre-releases are tracked as mainstream releases.

### Install

```sh
# WinGet
winget install Orbmu2k.nvidiaProfileInspector

# Chocolatey
choco install nvpi

# Scoop
scoop bucket add nvpi-r https://github.com/AmirulAndalib/nvpi-r-auto
scoop install nvpi
```

### Install Location

| Manager | Path |
| --- | --- |
| WinGet | `%LOCALAPPDATA%\Microsoft\WinGet\Packages\Orbmu2k.nvidiaProfileInspector_Microsoft.Winget.Source_8wekyb3d8bbwe` |
| Chocolatey | `%USERPROFILE%\NVPI` |
| Scoop | `%USERPROFILE%\scoop\apps\nvpi\current` |

### Update

```sh
# WinGet
winget upgrade Orbmu2k.nvidiaProfileInspector

# Chocolatey
choco upgrade nvpi

# Scoop
scoop update nvpi
```

---

## Repository Secrets

To use the workflow in your own fork, add these repository secrets under Settings > Secrets and variables > Actions:

| Secret | Description |
| --- | --- |
| `CHOCO_API_KEY` | Your Chocolatey.org API key |
| `WINGET_TOKEN` | GitHub PAT with `public_repo` scope, used to submit PRs to [microsoft/winget-pkgs](https://github.com/microsoft/winget-pkgs) |

The `GITHUB_TOKEN` provided automatically by GitHub Actions is used to read upstream release data.

---

## First-Time Setup

The workflow handles version updates only. Before it can submit WinGet updates, each package needs to exist in [microsoft/winget-pkgs](https://github.com/microsoft/winget-pkgs). Submit the manifests from `winget/` (for NVPI Revamped) or `winget-nvpi/` (for NVIDIA Profile Inspector) as a PR to that repo to get the package listed initially.

For Chocolatey, the first push goes into a moderation queue and will appear publicly once approved. Subsequent updates are moderated more quickly.

For Scoop, no extra steps are needed. Both manifests live in the `bucket/` folder. Add the bucket with the command above and you are good to go.

---

## Notes

Desktop and Start Menu shortcuts are created automatically by Chocolatey and Scoop for both packages. WinGet does not create shortcuts (platform limitation for portable packages), but adds `nvpi-r` or `nvpi` to your PATH so you can launch either from any terminal. Old Scoop versions are cleaned up automatically on update.

Settings files (`CustomSettingNames.xml`, `Settings.xml`, `Reference.xml`) are persisted across Scoop updates so your configuration survives upgrades. For Chocolatey, the install directories at `%USERPROFILE%\NVPI-R` and `%USERPROFILE%\NVPI` are left intact on upgrade, so your settings are preserved there too. WinGet preserves settings in its packages directory across upgrades.

If the zip structure changes in a future upstream release and the Scoop `bin` path breaks, open an issue and it will be patched promptly.
