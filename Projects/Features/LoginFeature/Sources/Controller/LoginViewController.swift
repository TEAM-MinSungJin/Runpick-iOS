//
//  LoginViewController.swift
//  SplashFeature
//
//  Created by 선민재 on 10/28/24.
//  Copyright © 2024 MinSungJin. All rights reserved.
//

import UIKit
import SnapKit
import AuthenticationServices
import RxSwift
import RxCocoa

import DesignSystem

public final class LoginViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "산책, 내가\n원하는 시간에\n함께"
        label.textColor = .white
        label.font = DesignSystemFontFamily.Pretendard.semiBold.font(size: 32)
        label.textAlignment = .left
        label.numberOfLines = 3
        return label
    }()
    
    private let appleSignInButton: ASAuthorizationAppleIDButton = {
        let button = ASAuthorizationAppleIDButton(
            authorizationButtonType: .continue,
            authorizationButtonStyle: .black
        )
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let kakaoSignInButton = OAuthButton(oauthType: .kakao)
    
    private let googleSignInButton = OAuthButton(oauthType: .google)
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(hex: "#121212")
        
        self.addSubViews()
        self.setLayout()
    }
}

extension LoginViewController {
    private func addSubViews() {
        [
            titleLabel,
            appleSignInButton,
            kakaoSignInButton,
            googleSignInButton
        ].forEach {
            self.view.addSubview($0)
        }
    }
    
    private func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(88)
            $0.left.equalToSuperview().offset(20)
        }
        
        appleSignInButton.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-16)
            $0.left.right.equalToSuperview().inset(20)
            $0.height.equalTo(48)
        }
        
        kakaoSignInButton.snp.makeConstraints {
            $0.bottom.equalTo(appleSignInButton.snp.top).offset(-12)
            $0.left.right.equalToSuperview().inset(20)
            $0.height.equalTo(48)
        }
        
        googleSignInButton.snp.makeConstraints {
            $0.bottom.equalTo(kakaoSignInButton.snp.top).offset(-12)
            $0.left.right.equalToSuperview().inset(20)
            $0.height.equalTo(48)
        }
    }
}
