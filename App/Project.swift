import ProjectDescription
import ProjectDescriptionHelpers

let infop: InfoPlist = .extendingDefault(with: [
    "UILaunchStoryboardName": "LaunchScreen",
    "UISupportedInterfaceOrientations": ["UIInterfaceOrientationPortrait"],
    "UIApplicationSceneManifest": [
        "UIApplicationSupportsMultipleScenes": false,
        "UISceneConfigurations": [
            "UIWindowSceneSessionRoleApplication": [
                ["UISceneConfigurationName": "Default Configuration",
                 "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate"],
            ],
        ],
    ],
])

let project = Project(
    name: "Webster",
    settings: Settings(base: settings),
    targets: [
        Target(
            name: "Webster",
            platform: .iOS,
            product: .app,
            bundleId: "co.nickp.webster",
            deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
            infoPlist: infop
        ),
    ]
)
