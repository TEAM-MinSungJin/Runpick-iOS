//
//  Dependency+Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 선민재 on 9/26/24.
//

import ProjectDescription

extension TargetDependency {
    public enum Data {}
    public enum Domain {}
    public enum DIContainer {}
    public enum Feature {}
    public enum ThridPartyLib {}
    public enum Shared {}
}

public extension TargetDependency.Data {
    //MARK: - Data
    static let BaseData = TargetDependency.project(
        target: "BaseData",
        path: .relativeToRoot("Projects/Data/BaseData")
    )
}

public extension TargetDependency.Domain {
    //MARK: - Domain
    static let BaseDomain = TargetDependency.project(
        target: "BaseDomain",
        path: .relativeToRoot("Projects/Domain/BaseDomain")
    )
}

public extension TargetDependency.DIContainer {
    //MARK: - DIContainer
    static let BaseDIContainer = TargetDependency.project(
        target: "BaseDIContainer",
        path: .relativeToRoot("Projects/DIContainer/BaseDIContainer")
    )
}

public extension TargetDependency.Feature {
    //MARK: - Feature
    static let BaseFeature = TargetDependency.project(
        target: "BaseFeature",
        path: .relativeToRoot("Projects/Features/BaseFeature")
    )
    
    static let LoginFeature = TargetDependency.project(
        target: "LoginFeature",
        path: .relativeToRoot("Projects/Features/LoginFeature")
    )
}

public extension TargetDependency.ThridPartyLib {
    //MARK: - ThirdPartyLib
    static let ThridPartyLib = TargetDependency.project(
        target: "ThridPartyLib",
        path: .relativeToRoot("Projects/ThridPartyLib")
    )
}
    

public extension TargetDependency.Shared {
    //MARK: - Util
    static let DesignSystem = TargetDependency.project(
        target: "DesignSystem",
        path: .relativeToRoot("Projects/Shared/DesignSystem")
    )
    
    static let Util = TargetDependency.project(
        target: "Util",
        path: .relativeToRoot("Projects/Shared/Util")
    )
}
