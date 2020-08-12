Installing GEANT4
=================

# Preperation
- Download from `https://geant4.web.cern.ch`
- Ensure cmake is installed. Use the cask version for ccmake.
	- `brew cask install cmake`
- Extract geant4 download
	- `cd ~/Downloads/`
	- `tar -zxvf ~/Downloads/geant4.10.06.p02.tar.gz`


# Installation
- Make build directory at ~/AppData/geant4
	- `cd ~/AppData`
	- `mkdir geant4`
	- `cd ~/AppData/geant4`
	<!-- - `mkdir geant4.10.06.p02-dist` -->
	- `mkdir geant4.10.06.p02-build`
- Extract geant4 build into desired install location.
	- `cd ~/AppData/geant4`
	- `cmake ~/Downloads/geant4.10.06.p02`
- Run ccmake in build folder
	- `cd ../geant4.10.06.p02-build`
	- `ccmake .`
		- CLANG_FORMATTER                  CLANG_FORMATTER-NOTFOUND
		- CMAKE_BUILD_TYPE                 Release
		- CMAKE_EXECUTABLE_FORMAT          MACHO
		- CMAKE_INSTALL_PREFIX             /usr/local
		- CMAKE_OSX_ARCHITECTURES
		- CMAKE_OSX_DEPLOYMENT_TARGET
		- CMAKE_OSX_SYSROOT                /Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk
		- G4FORMAT_LOGDIR                  /Users/***/AppData/geant4/geant4.10.06.p02-build/format
		- GEANT4_BUILD_MULTITHREADED       ON
		- GEANT4_INSTALL_DATA              ON
		- GEANT4_INSTALL_DATADIR           /Users/***/AppData/geant4/geant4.10.06.p02-data
		- GEANT4_USE_G3TOG4                OFF
		- GEANT4_USE_GDML                  OFF
		- GEANT4_USE_INVENTOR              OFF
		- GEANT4_USE_OPENGL_X11            ON
		- GEANT4_USE_PYTHON                ON
			- If generating python bindings, and multithreaded option is on, you will need to set the advanced flag `GEANT4_BUILD_TLS_MODEL = global-dynamic` or the build will fail.
			- If gennerating python bindings, the boost libraries are need. Make sure boost and boost-python3 are installed with brew.
			- Note that all old virtualenvs will not have access to boost-python if you have just installed it. Remake the virtualenvs in this case.
		- GEANT4_USE_QT                    ON
		- GEANT4_USE_RAYTRACER_X11         ON
		- GEANT4_USE_SYSTEM_CLHEP          OFF
		- GEANT4_USE_SYSTEM_EXPAT          ON
		- GEANT4_USE_SYSTEM_ZLIB           OFF
		- GEANT4_USE_XM                    OFF