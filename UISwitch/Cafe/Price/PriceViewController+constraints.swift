//
//  PriceViewController+constraints.swift
//  UISwitch
//
//  Created by Александр Борисов on 21.12.2022.
//

import Foundation
import SnapKit


extension PriceViewController {

    func setupConstraints() {

        [guestNameLable, tableNumberLable, checkAmountLable].forEach { box in
            view.addSubview(box)
        }

        guestNameLable.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(40)
        }

        tableNumberLable.snp.makeConstraints { make in
            make.top.equalTo(guestNameLable.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(40)
        }

        checkAmountLable.snp.makeConstraints { make in
            make.top.equalTo(tableNumberLable.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(40)
        }
    }
}
