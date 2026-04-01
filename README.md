# NVPI Revamped Packages

Unofficial packaging repository for [NVPI Revamped](https://github.com/xHybred/NvidiaProfileInspectorRevamped), a revamped fork of Nvidia Profile Inspector.

[![Repology](https://repology.org/badge/vertical-allrepos/nvpi-r.svg)](https://repology.org/project/nvpi-r/versions)

New releases are picked up automatically every 6 hours and published to WinGet, Chocolatey, and Scoop.

---

## Install

**WinGet**

```
winget install xHybred.NVPIRevamped
```

**Chocolatey**

```
choco install nvpi-r
```

**Scoop**

```
scoop bucket add nvpi-r https://github.com/AmirulAndalib/nvpi-r-auto
scoop install nvpi-r
```

---

## Install Location

| Manager    | Path                                        |
| ---------- | ------------------------------------------- |
| WinGet     | `%USERPROFILE%\NVPI-R`                    |
| Chocolatey | `%USERPROFILE%\NVPI-R`                    |
| Scoop      | `%USERPROFILE%\scoop\apps\nvpi-r\current` |

---

## Updating

**WinGet**

```
winget upgrade xHybred.NVPIRevamped
```

**Chocolatey**

```
choco upgrade nvpi-r
```

**Scoop**

```
scoop update nvpi-r
```

---

## Repository Secrets

To use the workflow in your own fork, add these repository secrets under Settings > Secrets and variables > Actions:

| Secret            | Description                                                                                                                 |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------- |
| `CHOCO_API_KEY` | Your Chocolatey.org API key                                                                                                 |
| `WINGET_TOKEN`  | GitHub PAT with `public_repo` scope, used to submit PRs to [microsoft/winget-pkgs](https://github.com/microsoft/winget-pkgs) |

The `GITHUB_TOKEN` provided automatically by GitHub Actions is used to read upstream release data.

---

## First-Time Setup

The workflow handles version updates only. Before it can submit WinGet updates, the package needs to exist in [microsoft/winget-pkgs](https://github.com/microsoft/winget-pkgs). Submit the manifests from the `winget/` folder as a PR to that repo to get the package listed initially.

For Chocolatey, the first push goes into a moderation queue and will appear publicly once approved. Subsequent updates are moderated more quickly.

For Scoop, no extra steps are needed. Add the bucket with the command above and you are good to go.

---

## Notes

Settings files (`CustomSettingNames.xml`, `Settings.xml`) are persisted across Scoop updates so your configuration survives upgrades. For WinGet and Chocolatey, the install directory at `%USERPROFILE%\NVPI-R` is left intact on upgrade, so your settings are preserved there too.

If the zip structure changes in a future upstream release and the Scoop `bin` path breaks, open an issue and it will be patched promptly.
