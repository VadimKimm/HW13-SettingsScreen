//
//  SwitchCellModel.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit

protocol Switch {
    var _switch: Bool { get }
}

class SwitchCellModel: TemplateCellModel, Switch {
    let _switch: Bool

    init(icon: UIImage?, backgroundColor: UIColor, labelText: String, _switch: Bool) {
        self._switch = _switch
        super.init(icon: icon, backgroundColor: backgroundColor, labelText: labelText)
    }
}

