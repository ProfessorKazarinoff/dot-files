# setup_win11.md

This markdown file is a description of how I set up a Windows 11 computer from the ground up.

## OS Install

### Create USB launcher

### Install Windows

Use the offline installer and install without an internet connection and without a Microsoft account

## Driver Install

### Chipset Drivers

### Graphics Drivers

## Software Install

Use win11 de-bloat tool from Craft Computing YouTube video. [https://github.com/builtbybel/ThisIsWin11](https://github.com/builtbybel/ThisIsWin11)

### List of Applications

 * OBS
 * VS Code
 * Chrome
 * Firefox
 * VLC Media Player
 * PuTTY and PuTTY Gen
 * FileZilla
 * Windows Terminal (the new one)
 * Zoom
 * ffmpeg

### winget install - applications to install (or can be installed) with winget

Maybe create a batch script here: [https://winstall.app/](https://winstall.app/)

 * VS Code ```winget install --id=Microsoft.VisualStudioCode -e```
 * Chrome
 * Firefox
 * Zoom
 * MikTeX
 * Anaconda3
 * OBS
 * 7-zip 
 * Filezilla ```winget install --id=TimKosse.FileZilla.Client -e```
 * Steam ```winget install --id=Valve.Steam  -e```
 * Nvidia gforce experience
 * Elgato Streamdeck ```winget install --id=Elgato.StreamDeck -e```
 * Balena.Etcher ```winget install --id=Balena.Etcher -e```
 * VLC Media Player ```winget install --id=VideoLAN.VLC -e```
 * Greenshot screen shot utility ```winget install --id=Greenshot.Greenshot -e```
 * Snagit (commercial screen recorder) ```winget install --id=TechSmith.Snagit.2023 -e``` (can also try 2022?)
 * ffmpeg (commandline video utility) ```winget install --id=Gyan.FFmpeg -e```
 * 1password ```winget install --id=AgileBits.1Password -e```
 * GeekBench ```winget install --id=PrimateLabs.Geekbench.6 6.3.0 -e```

### Install applications that can't be installed with winget or the Win11 debloat tool

 * Focusrite Control
 * RodcasterPro App
 * RodeCentral App
 * Insta360 Link Controller [https://www.insta360.com/download/insta360-link](https://www.insta360.com/download/insta360-link)
 * Brother Printer drivers

### Install WSL (Windows subsystem for Linux)

run cmd as administrator

```wsl --install```

### Performance / UI customization

 * Configure Windowns Terminal to use Anaconda
 * Create SSH key and use for git
 * Remove all unwanted programs
 * Remove startup programs 
