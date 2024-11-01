//
//  OAuthButton.swift
//  LoginFeature
//
//  Created by 선민재 on 10/29/24.
//  Copyright © 2024 MinSungJin. All rights reserved.
//

import UIKit
import SnapKit

import DesignSystem

final class OAuthButton: UIButton {
    struct ButtonStyle {
        let title: String
        let symbolImage: UIImage
        let titleColor: UIColor
        let backgroundColor: UIColor
    }
    
    enum OAuthType: String {
        case kakao
        case google
        
        var buttonStyle: ButtonStyle {
            switch self {
            case .kakao:
                return ButtonStyle(
                    title: "카카오로 시작하기",
                    symbolImage: DesignSystemAsset.kakaoSymbol.image,
                    titleColor: .black.withAlphaComponent(0.85),
                    backgroundColor: UIColor(hex: "FEE500") ?? .yellow
                )
            case .google:
                return ButtonStyle(
                    title: "구글로 시작하기",
                    symbolImage: DesignSystemAsset.googleSymbol.image,
                    titleColor: UIColor(hex: "#121212") ?? .black,
                    backgroundColor: .white
                )
            }
        }
    }
    private let oauthTitleLabel: UILabel = {
        let label = UILabel()
        label.font = DesignSystemFontFamily.Pretendard.semiBold.font(size: 16)
        return label
    }()
    
    private let oauthImageView = UIImageView()
    
    init(oauthType: OAuthType) {
        super.init(frame: .zero)
        self.layer.cornerRadius = 10
        
        self.setView(oauthType)
        self.addSubViews()
        self.setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension OAuthButton {
    
    private func setView(_ oauthType: OAuthType) {
        self.oauthTitleLabel.text = oauthType.buttonStyle.title
        self.oauthTitleLabel.tintColor = oauthType.buttonStyle.titleColor
        self.oauthImageView.image = oauthType.buttonStyle.symbolImage
        self.backgroundColor = oauthType.buttonStyle.backgroundColor
    }
    
    private func addSubViews() {
        [
            oauthTitleLabel,
            oauthImageView
        ].forEach {
            self.addSubview($0)
        }
    }
    
    private func setLayout() {
        oauthTitleLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        
        oauthImageView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.left.equalToSuperview().offset(16)
            $0.width.height.equalTo(24)
        }
    }
}
