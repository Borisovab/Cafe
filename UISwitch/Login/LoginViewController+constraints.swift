//
//  LoginViewController+constrains.swift
//  UISwitch
//
//  Created by Александр Борисов on 20.12.2022.
//

import Foundation
import SnapKit

extension LoginViewController {

    func setupConstraints() {

        [loginTextField, passwordTextField, enterButton].forEach { box in
            view.addSubview(box)
        }

        loginTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-20)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(40)
        }

        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTextField.snp.bottom).offset(25)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(40)
        }

        enterButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(150)
            make.centerX.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(60)
        }

    }
}
