//
//  SettingsView.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 26.06.2022.
//

import UIKit

class SettingsView: UIView {

    private var models = [Sections]()

    // MARK: - Configure view -

    func configure(with models: [Sections]) {
        self.models = models
    }

    // MARK: - View -

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)

        tableView.dataSource = self
        tableView.delegate = self

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

// MARK: - UITableViewDataSource -

extension SettingsView: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.section].items[indexPath.row]

        switch model {
        case .simpleCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier) as? SimpleTableViewCell else { return UITableViewCell() }
            cell.configure(with: model)
            return cell
        case .extendedInfoCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ExtendedInfoTableViewCell.identifier) as? ExtendedInfoTableViewCell else { return UITableViewCell() }
            cell.configure(with: model)
            return cell
        case .notificationCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: NotificationTableViewCell.identifier) as? NotificationTableViewCell else { return UITableViewCell() }
            cell.configure(with: model)
            return cell
        case .switchCell(let model):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.identifier) as? SwitchTableViewCell else { return UITableViewCell() }
            cell.configure(with: model)
            return cell
        }
    }
}

// MARK: - UITableViewDelegate -

extension SettingsView: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 42
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let model = models[indexPath.section].items[indexPath.row]

        switch model {
        case .simpleCell(let model):
            model.cellTapped()
        case .extendedInfoCell(let model):
            model.cellTapped()
        case .notificationCell(let model):
            model.cellTapped()
        case .switchCell(let model):
            model.cellTapped()
        }
    }
}
