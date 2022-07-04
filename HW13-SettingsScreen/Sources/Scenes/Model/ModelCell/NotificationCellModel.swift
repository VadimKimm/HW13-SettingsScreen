//
//  NotificationCellModel.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit

protocol NotificationImage {
    var notificationsIndicator: UIImage? { get }
}

class NotificationCellModel: SimpleCellModel, NotificationImage {
    let notificationsIndicator: UIImage?

    init(icon: UIImage?, backgroundColor: UIColor, labelText: String, notificationsIndicator: UIImage?) {
        self.notificationsIndicator = notificationsIndicator
        super.init(icon: icon, backgroundColor: backgroundColor, labelText: labelText)
    }
}


