//
//  ExtendedInfoCellModel.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit

protocol ExtendedInfo {
    var sideLabelText: String { get }
}

class ExtendedInfoCellModel: SimpleCellModel, ExtendedInfo {
    let sideLabelText: String

    init(icon: UIImage?, backgroundColor: UIColor, labelText: String, sideLabelText: String) {
        self.sideLabelText = sideLabelText
        super.init(icon: icon, backgroundColor: backgroundColor, labelText: labelText)
    }
}

