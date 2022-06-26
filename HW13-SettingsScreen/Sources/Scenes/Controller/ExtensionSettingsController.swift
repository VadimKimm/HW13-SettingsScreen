//
//  ExtensionSettingsViewController.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit

extension SettingsViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return modelsArray.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelsArray[section].items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = modelsArray[indexPath.section].items[indexPath.row]
        let cell = model.getCellType(tableView: tableView, indexPath: indexPath)
        model.configureCell(cell: cell, model: model)
        cell.layoutMargins.left = 55
        return cell
    }
}

extension SettingsViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 42
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let model = modelsArray[indexPath.section].items[indexPath.row]
        let cell = model.getCellType(tableView: tableView, indexPath: indexPath)
        model.didSelectCell(cell: cell)
    }
}