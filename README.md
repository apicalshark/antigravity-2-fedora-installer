# Antigravity 2.0 Fedora RPM Builder

This repository provides RPM spec files and a build script to package **Antigravity 2.0 Agent** and **Antigravity 2.0 IDE** as coexisting packages (`antigravity2` and `antigravity2-ide`) alongside version 1.0 for native Wayland execution on Fedora Workstation.

Yes, I made this in old antigravity lol. 

## Features

* **📦 Coexistence with v1.0:** Renamed package and binary names (`antigravity2` / `antigravity2-ide`) to allow running alongside 1.0 packages without path or process name conflicts.
* **📦 Clean RPM Packaging:** Installs neatly to `/opt/antigravity2-Linux` and `/opt/antigravity2-ide-Linux` and manages dependencies automatically via Fedora's package manager.
* **⚙️ Native Wayland & GPU Optimization:** Automatically configures desktop launchers to use native Wayland ozone parameters (`--ozone-platform-hint=wayland` and `--enable-features=WaylandWindowDecorations,CanvasOopRasterization`) to bypass XWayland.
* **🛡️ Sandboxing Support:** Allows proper integration of Chromium's sandbox with standard security permissions.

## Installation

### 1. Install Build Dependencies
To build the RPM packages, you need the RPM development toolchain:

```bash
sudo dnf -y groupinstall 'RPM Development Tools'
sudo dnf builddep -y antigravity2.spec antigravity2-ide.spec
```

### 2. Build the Packages
Execute the build script to fetch the upstream source tarballs and build the RPM packages locally:

```bash
./build.sh
```

The generated RPM files will be stored in `~/rpkg/`.

### 3. Install the Packages
Once the build completes successfully, install the packages using `dnf`:

```bash
# Install the Antigravity Agent v2.0
sudo dnf install ~/rpkg/$(uname -m)/antigravity2-2.0.6-*.rpm

# Install the Antigravity IDE v2.0 (x86_64 only)
sudo dnf install ~/rpkg/x86_64/antigravity2-ide-2.0.3-*.rpm
```

## Usage

You can launch either package using your desktop environment launcher or via the command line:

* **Antigravity Agent v2.0:** `antigravity2`
* **Antigravity IDE v2.0:** `antigravity2-ide`

## Uninstallation

To remove the packages:

```bash
sudo dnf remove antigravity2 antigravity2-ide
```

## License

This project is open-source and available under the [MIT License](LICENSE).
