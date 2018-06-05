from conan.packager import ConanMultiPackager


if __name__ == "__main__":
    builder = ConanMultiPackager()
    builder.add(settings={"os": "Macos"})
    builder.add(settings={"os": "iOS", "os.version": "11.0"})
    builder.add(settings={"os": "watchOS", "os.version": "4.0"})
    builder.add(settings={"os": "tvOS", "os.version": "11.0"})
    builder.run()
