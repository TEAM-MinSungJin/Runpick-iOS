import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Runpick",
    targets: [
        .target(
            name: "Runpick",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Runpick",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                    "UIApplicationSceneManifest": [
                        "UIApplicationSupportsMultipleScenes": false,
                        "UISceneConfigurations": [
                            "UIWindowSceneSessionRoleApplication": [
                                [
                                    "UISceneConfigurationName": "Default Configuration",
                                    "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate"
                                ],
                            ]
                        ]
                    ],
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .DIContainer.BaseDIContainer
            ]
        ),
        .target(
            name: "RunpickTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.RunpickTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "Runpick")]
        ),
    ]
)
