//
//  CafeViewController.swift
//  UISwitch
//
//  Created by Александр Борисов on 20.12.2022.
//

import UIKit
import SnapKit

class CafeViewController: UIViewController {

    var nameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        textField.placeholder = " restaurant visitor's name: "
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 25)
        textField.alpha = 0.7
        textField.layer.borderWidth = 4
        textField.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor
        return textField
    }()

    var prepaymentLable: UILabel = {
        let lable = UILabel()
        lable.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        lable.text = "Prepayment"
        lable.font = UIFont.systemFont(ofSize: 20)
        lable.textAlignment = .center
        lable.alpha = 0.7
        lable.layer.borderWidth = 4
        lable.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor
        return lable
    }()

    var prepaymentSwitch: UISwitch = {
        let prepayment = UISwitch()
        prepayment.onTintColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        return prepayment
    }()

    var tableOrderLable: UILabel = {
        let lable = UILabel()
        lable.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        lable.text = "Booked a table"
        lable.font = UIFont.systemFont(ofSize: 20)
        lable.textAlignment = .center
        lable.alpha = 0.7
        lable.layer.borderWidth = 4
        lable.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor
        return lable
    }()

    var tableOrderSwitch: UISwitch = {
        let tableOrder = UISwitch()
        tableOrder.onTintColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        return tableOrder
    }()

    var tableNumberTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        textField.placeholder = " table number: "
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.textAlignment = .center
        textField.alpha = 0.7
        textField.layer.borderWidth = 4
        textField.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.3).cgColor
        return textField
    }()

    var billButton: UIButton = {
        let button = UIButton()
        button.setTitle("BILL", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        button.layer.cornerRadius = 9

        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9205206037, green: 1, blue: 0.9940114617, alpha: 1)
        setupConstraints()
        billButtonAction()
        tableOrderIsOn()
    }
}
