//
//  Singleton.swift
//  UISwitch
//
//  Created by Александр Борисов on 21.12.2022.
//

import Foundation


class Singleton {
    static let shared = Singleton()
    private init(){}

    var nameGuest: String?
    var tableNumber: String?
    var bill = Int.random(in: 1000...1500)
    var tableOrder = false
    var prepayment = false
}
