
# conan-darwin-toolchain


Build require to cross build to any darwin platform.


## Setup

This package **REQUIRES** Xcode to be installed.

In the future, it might be added as a build_requirement.

Create a profile for cross building and including this toolchain:

### iOS

**ios_profile**
    
    include(default)
   
    [settings]
    os=iOS
    os.version=9.0
    arch=armv7

    [build_requires]
    darwin-toolchain/1.0.4@theodelrieu/stable
    

Go to your project and cross-build your dependency tree with this toolchain:

    conan install . --profile ios_profile


### Other platforms

This toolchain works with every darwin platform (macOS/iOS/tvOS/watchOS).

You only need to create a slightly different profile:

**watchos_profile**

    include(default)
   
    [settings]
    os=iOS
    os.version=4.0
    arch=armv7

    [build_requires]
    darwin-toolchain/1.0.4@theodelrieu/stable


## Bitcode support

Bitcode is an option available on iOS, it is **required** on tvOS/watchOS.

It is set by default to `True`.

So you can only set it to `False` for iOS. Note that it is not defined for macOS.
