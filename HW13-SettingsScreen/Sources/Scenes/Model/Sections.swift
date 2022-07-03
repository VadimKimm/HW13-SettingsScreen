//
//  Sections.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit

struct Sections {
    let items: [CellType]
}

enum CellType {
    case simpleCell(SimpleCellModel)
    case extendedInfoCell(ExtendedInfoCellModel)
    case notificationCell(NotificationCellModel)
    case switchCell(SwitchCellModel)
}
