# scoop-nanyx

A [Scoop](https://scoop.sh) bucket for the [Nanyx](https://github.com/Richiban/nanyx) programming language.

## Install

```powershell
scoop bucket add nanyx https://github.com/Richiban/scoop-nanyx
scoop install nanyx
```

Then check it works:

```powershell
nanyx --help
```

## Update

```powershell
scoop update nanyx
```

## How the bucket stays current

The compiler is released from the `Richiban/nanyx` repository on tags of the form `compiler/<version>`, with a self-contained `nanyx-<version>-win-x64.zip` attached to each release.

A scheduled GitHub Actions workflow ([excavator.yml](.github/workflows/excavator.yml)) runs Scoop's `checkver` every day. When it finds a newer `compiler/<version>` release it bumps `version`, `url` and `hash` in [bucket/nanyx.json](bucket/nanyx.json) and commits the change, so nothing needs editing by hand.

To run the same check locally from a Scoop-enabled shell:

```powershell
.\bin\checkver.ps1 -Update
```
