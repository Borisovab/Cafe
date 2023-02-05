//
//  CafeViewController+constraints.swift
//  UISwitch
//
//  Created by Александр Борисов on 21.12.2022.
//

import Foundation
import SnapKit

extension CafeViewController {

    func setupConstraints() {
        
        [nameTextField, prepaymentLable, prepaymentSwitch, tableOrderLable, tableOrderSwitch, tableNumberTextField, billButton].forEach { box in
            view.addSubview(box)
        }

        nameTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-150)
            make.height.equalTo(40)
            make.leading.trailing.equalToSuperview().inset(30)
        }

        prepaymentLable.snp.makeConstraints { make in
            make.top.equalTo(nameTextField.snp.bottom).offset(130)
            make.leading.equalToSuperview().offset(100)
            make.trailing.equalToSuperview().offset(-160)
            make.height.equalTo(40)
        }

        prepaymentSwitch.snp.makeConstraints { make in
            make.leading.equalTo(prepaymentLable.snp.trailing).offset(15)
            make.centerY.equalTo(prepaymentLable.snp.centerY)
        }

        tableOrderLable.snp.makeConstraints { make in
            make.top.equalTo(prepaymentLable.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(100)
            make.trailing.equalToSuperview().offset(-160)
            make.height.equalTo(40)
        }

        tableOrderSwitch.snp.makeConstraints { make in
            make.leading.equalTo(tableOrderLable.snp.trailing).offset(15)
            make.centerY.equalTo(tableOrderLable.snp.centerY)
        }

        tableNumberTextField.snp.makeConstraints { make in
            make.top.equalTo(tableOrderSwitch.snp.bottom).offset(60)
            make.height.equalTo(40)
            make.leading.equalToSuperview().offset(100)
            make.trailing.equalToSuperview().offset(-160)
        }

        billButton.snp.makeConstraints { make in
            make.top.equalTo(tableNumberTextField.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.height.equalTo(60)
            make.width.equalTo(150)
        }
    }
}
