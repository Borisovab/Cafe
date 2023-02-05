//
//  CafeViewController+.swift
//  UISwitch
//
//  Created by Александр Борисов on 21.12.2022.
//

//import Foundation
import SnapKit
import UIKit

extension CafeViewController {

    //MARK: - передача данных в singleton
    func saveData() {
        Singleton.shared.nameGuest = self.nameTextField.text
        Singleton.shared.tableNumber = self.tableNumberTextField.text
        Singleton.shared.tableOrder = self.tableOrderSwitch.isOn
        Singleton.shared.prepayment = self.prepaymentSwitch.isOn
    }

    //MARK: - контроль доступа к полю номер стола. Если он был забронирован, нельзя вносить изменения в поле. Эти данные перейдут в чек. Если поле активно, то в чеке будет указан внесенный номер стола
    func tableOrderIsOn() {
        tableOrderSwitch.addTarget(self, action: #selector(tableFlag), for: .valueChanged)
    }

    @objc func tableFlag() {
        if tableOrderSwitch.isOn {
            tableNumberTextField.isEnabled = false
            tableNumberTextField.text = String(Int.random(in: 1...10))
            Singleton.shared.tableNumber = tableNumberTextField.text
        } else {
            tableNumberTextField.isEnabled = true
        }
    }

    //MARK: - переход на экран счета
    func billButtonAction() {
        billButton.addTarget(self, action: #selector(bill), for: .touchUpInside)
    }

    @objc func bill() {

        let alert = UIAlertController(title: "Continue?", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (_) in
            let thirdController: UIViewController = PriceViewController()
            thirdController.modalPresentationStyle = .fullScreen
            
            self.saveData()

            self.present(thirdController, animated: true)
        }))

        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
