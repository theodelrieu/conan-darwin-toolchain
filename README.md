
# conan-darwin-toolchain


Build require to cross build to any darwin platform.


## Setup

Create a profile for cross building and including this toolchain:

**ios_profile**
    
    include(default)
   
    [settings]
    os=iOS
    os.version=9.0
    arch=armv7

    [build_requires]
    darwin-toolchain/1.0@theodelrieu/stable
    

Go to your project and cross-build your dependency tree with this toolchain:

    conan install . --profile ios_profile

