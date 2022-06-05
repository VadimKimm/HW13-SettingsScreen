//
//  TemplateCellModel.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit

protocol TemplateCell {
    var icon: UIImage? { get }
    var backgroundColor: UIColor { get }
    var labelText: String { get }

    func cellTapped()
}

class TemplateCellModel: TemplateCell {
    var icon: UIImage?
    let backgroundColor: UIColor
    let labelText: String

    func cellTapped() {
        print("Нажата ячейка '\(labelText)'")
    }

    init(icon: UIImage?, backgroundColor: UIColor, labelText: String) {
        self.icon = icon
        self.backgroundColor = backgroundColor
        self.labelText = labelText
    }
}

