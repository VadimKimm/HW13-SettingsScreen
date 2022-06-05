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

    func configureCell(cell: UITableViewCell, model: CellType) {
        switch self {
        case .simpleCell(let model):
            let cell = cell as! SimpleTableViewCell
            cell.configure(with: model)
        case .extendedInfoCell(let model):
            let cell = cell as! ExtendedInfoTableViewCell
            cell.configure(with: model)
        case .notificationCell(let model):
            let cell = cell as! NotificationTableViewCell
            cell.configure(with: model)
        }
    }

    func getCellType(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        switch self {
        case .simpleCell:
            return  tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier) as! SimpleTableViewCell
        case .extendedInfoCell:
            return tableView.dequeueReusableCell(withIdentifier: ExtendedInfoTableViewCell.identifier) as! ExtendedInfoTableViewCell
        case .notificationCell:
            return tableView.dequeueReusableCell(withIdentifier: NotificationTableViewCell.identifier) as! NotificationTableViewCell
        }
    }
}
