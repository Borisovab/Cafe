//
//  PriceViewController+.swift
//  UISwitch
//
//  Created by Александр Борисов on 21.12.2022.
//

import Foundation
import SnapKit

extension PriceViewController {

    //MARK: - проверка оплаты, если предоплата, то суммы нет и наоборот
    func prepaymentIsOn() {
        let prepayment = Singleton.shared.prepayment
        if prepayment {
            checkAmountLable.text = "check amount: prepayment"
        } else {
            checkAmountLable.text = "check amount: \(Singleton.shared.bill)"
        }
    }

    //MARK: - формирование чека

    func billGeneration() {
        guestNameLable.text = "guest name: \(Singleton.shared.nameGuest ?? "")"
        tableNumberLable.text = "table number: \(Singleton.shared.tableNumber ?? "")"

        prepaymentIsOn()

        //TODO: не понятно, почему не могу так развернуть опционал (optional binding)
        //        if let name == Singleton.shared.nameGuest &&
        //            let number == Singleton.shared.tableNumber {
        //
        //            guestNameLable.text = "guest name: \(name)"
        //            tableNumberLable.text = "table number: \(number)"
        //            checkAmountLable.text = "check amount: \(Singleton.shared.bill)"
        //        }

        /*
         из https://stackoverflow.com/questions/24128860/how-is-optional-binding-used-in-swift
         if let constantName = someOptional &&  constantName2 = someOptional2 {
         statements
         }
         */
    }
}
