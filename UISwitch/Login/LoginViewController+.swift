//
//  LoginViewController+.swift
//  UISwitch
//
//  Created by Александр Борисов on 20.12.2022.
//

import Foundation
import SnapKit

extension LoginViewController {

    //MARK: - проверка данных и переход на экран кафе
    func enterButtonAction() {
        enterButton.addTarget(self, action: #selector(logIn), for: .touchUpInside)
    }

    @objc func logIn() {
        let login = self.loginTextField.text
        let password = self.passwordTextField.text

        if login == profileLogin && password == profilePassword {
            let secondController: UIViewController = CafeViewController()
            secondController.modalPresentationStyle = .fullScreen
            self.present(secondController, animated: true)
        } else {
            let alert = UIAlertController(title: "Wrong", message: "Incorrect login or password", preferredStyle: .alert)
            let action = UIAlertAction(title: "Try again", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
    }
}
