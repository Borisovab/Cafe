//
//  PriceViewController.swift
//  UISwitch
//
//  Created by Александр Борисов on 21.12.2022.
//

import UIKit
import SnapKit

class PriceViewController: UIViewController {

    var guestNameLable: UILabel = {
        let lable = UILabel()
        lable.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 20)
        lable.textAlignment = .left
        lable.alpha = 0.7
        lable.layer.borderWidth = 4
        lable.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.1).cgColor
        return lable
    }()

    var tableNumberLable: UILabel = {
        let lable = UILabel()
        lable.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 20)
        lable.textAlignment = .left
        lable.alpha = 0.7
        lable.layer.borderWidth = 4
        lable.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.1).cgColor
        return lable
    }()

    var checkAmountLable: UILabel = {
        let lable = UILabel()
        lable.backgroundColor = #colorLiteral(red: 0.9537760615, green: 0.9537760615, blue: 0.9537760615, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 20)
        lable.textAlignment = .left
        lable.alpha = 0.7
        lable.layer.borderWidth = 4
        lable.layer.borderColor = UIColor.systemBlue.withAlphaComponent(0.1).cgColor
        return lable
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9205206037, green: 1, blue: 0.9940114617, alpha: 1)
        setupConstraints()
        billGeneration()
    }
}
