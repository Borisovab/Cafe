//
//  ViewController.swift
//  UISwitch
//
//  Created by Александр Борисов on 20.12.2022.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {

    //MARK: - логин и пароль
    let profileLogin = "aaa"
    let profilePassword = "aaa"

    var loginTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        textField.placeholder = "  login: "
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 9
        textField.alpha = 0.7
        textField.layer.borderWidth = 4
        textField.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor
        return textField
    }()

    var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        textField.placeholder = "  password: "
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 9
        textField.alpha = 0.7
        textField.layer.borderWidth = 4
        textField.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor
        return textField
    }()

    var enterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Enter", for: .normal)

        //TODO: не работает смена тайтла! =(
//        button.configurationUpdateHandler = { button in
//            switch button.state {
//            case .highlighted:
//                button.configuration?.title = "Welcome"
//            default:
//                button.configuration?.title = "Enter"
//            }
//        }


        button.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        button.layer.cornerRadius = 12
        button.layer.borderWidth = 4
        button.layer.borderColor = UIColor.init(red: 0.5, green: 0.9, blue: 1, alpha: 0.5).withAlphaComponent(0.6).cgColor
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9205206037, green: 1, blue: 0.9940114617, alpha: 1)
        setupConstraints()
        enterButtonAction()
    }
}

