//
//  SettingsViewController.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit
import SnapKit

class SettingsController: UIViewController {

    private var models = SettingsModel().createModels()

    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsView
    }
    
    //MARK: - Lifecycle -

    override func loadView() {
        super.loadView()
        view = SettingsView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
}

// MARK: - Configurations -

private extension SettingsController {
    func configureView() {
        title = Metrics.navigationBarTitle

        settingsView?.tableView.delegate = self
        settingsView?.tableView.dataSource = self
    }
}

// MARK: - UITableViewDataSource -

extension SettingsController: UITableViewDataSource {

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

extension SettingsController: UITableViewDelegate {

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

