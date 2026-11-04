#Requires -Version 5.1
<#
.SYNOPSIS
    Runs Scoop's checkver against the manifests in ../bucket.
.PARAMETER App
    Manifest name to check (default: all manifests in the bucket).
.PARAMETER Update
    Write any newer version, URL and hash back into the manifest.
.PARAMETER ForceUpdate
    Rewrite the manifest even when the version has not changed.
#>
param(
    [String] $App = '*',
    [Switch] $Update,
    [Switch] $ForceUpdate
)

if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Convert-Path (scoop prefix scoop) }
$checkver = "$env:SCOOP_HOME/bin/checkver.ps1"
$dir = "$PSScriptRoot/../bucket"

& $checkver -App $App -Dir $dir -Update:$Update -ForceUpdate:$ForceUpdate
