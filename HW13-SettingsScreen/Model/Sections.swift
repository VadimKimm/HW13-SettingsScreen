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

    func configureCell(cell: UITableViewCell, model: CellType) {
        switch self {
        case .simpleCell(let model):
            let cell = cell as! SimpleTableViewCell
            cell.configure(with: model)
        }
    }
}
