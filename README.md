This is a simply bunch of files to ease the build of [Mednafen](https://mednafen.github.io/) on Linux.

---

To be noted that **you probably don't need this**, as a Flatpak exists on [Flathub](https://flathub.org/apps/com.github.AmatCoder.mednaffe), native packages also exists for most distros, and this can also be found as a [Libretro](https://www.libretro.com/) core - but if for some reason you want to produce a build on your own (to include in a project, to tweak or what not), there you have it.

To build, on an __ubuntu:latest__ image with docker, do:
```
git clone https://github.com/eikeno/mednafen-linux-builder.git
cd mednafen-linux-builder
make all
````

At the end of the process, the built package files can be found under __./mednafen-\<VERSION\>/__.

Where __\<VERSION\>__ depends on the current version of Mednafen.

You are encouraged to edit __Makefile__ as you need for example:

- to replace docker invocation by __Podman__ or something else
- to replace __ubuntu:latest__ by whatever you prefer (adjust dependencies installation lines accordingly in that case)
- use another source or method for source code 
- etc.

