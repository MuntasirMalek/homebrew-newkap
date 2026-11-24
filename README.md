# Homebrew Tap for NewKap

Community-driven screen recorder for macOS — a fork of [Kap](https://github.com/wulkano/Kap) focused on reliability and community maintenance.

## Install

```bash
brew tap MuntasirMalek/newkap
brew trust muntasirmalek/newkap
brew install --cask newkap
```

> **Note:** Homebrew 6.0+ requires trusting third-party taps before installing casks. The `brew trust` step above grants trust for this tap.

## Update

```bash
brew upgrade --cask newkap
```

## Uninstall

```bash
brew uninstall --cask newkap
```

To also remove NewKap preferences, caches, and logs:

```bash
brew uninstall --zap --cask newkap
```

## More Info

- [NewKap Repository](https://github.com/MuntasirMalek/NewKap)
- [Releases](https://github.com/MuntasirMalek/NewKap/releases)
