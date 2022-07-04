//
//  SettingsView.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 26.06.2022.
//

import UIKit

class SettingsView: UIView {

    // MARK: - View -

    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)

        tableView.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
        tableView.register(ExtendedInfoTableViewCell.self, forCellReuseIdentifier: ExtendedInfoTableViewCell.identifier)
        tableView.register(NotificationTableViewCell.self, forCellReuseIdentifier: NotificationTableViewCell.identifier)
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.identifier)

        return tableView
    }()

    // MARK: - Initial -

    init() {
        super.init(frame: .zero)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Settings -

    private func setupHierarchy() {
        addSubview(tableView)
    }

    private func setupLayout() {
        tableView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
