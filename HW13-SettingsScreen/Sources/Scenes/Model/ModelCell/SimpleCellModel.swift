//
//  SimpleCellModel.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit

protocol ArrowImage {
    var arrowImage: UIImage? { get }
}

class SimpleCellModel: TemplateCellModel, ArrowImage {
    let arrowImage: UIImage?

    override init(icon: UIImage?, backgroundColor: UIColor, labelText: String) {
        self.arrowImage = UIImage(systemName: "chevron.right")
        super.init(icon: icon, backgroundColor: backgroundColor, labelText: labelText)
    }
}
