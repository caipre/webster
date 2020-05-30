import ProjectDescription

public let base = SettingsDictionary()
    .automaticCodeSigning(devTeam: "B9YNE9L52C")
    .swiftVersion("5.2")
    .swiftCompilationMode(.wholemodule)

public let settings = Settings(
    base: base,
    debug: Configuration(xcconfig: .relativeToRoot("xcconfigs/base.xcconfig")),
    release: Configuration(xcconfig: .relativeToRoot("xcconfigs/base.xcconfig"))
)
